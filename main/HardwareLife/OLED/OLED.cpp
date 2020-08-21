/* Create: 4. Februar 2020
 * File:   OLED.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "OLED.h"

#include <stdio.h>
#include <string.h>

#include "sdkconfig.h"
#include "esp_log.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

OLED::OLED() {
    u8g2_esp32_hal_t u8g2_esp32_hal;
    u8g2_esp32_hal.clk = (gpio_num_t) 18;
    u8g2_esp32_hal.mosi = (gpio_num_t) 23;
    u8g2_esp32_hal.cs = (gpio_num_t) 14;
    u8g2_esp32_hal.dc = (gpio_num_t) 27;
    u8g2_esp32_hal.reset = (gpio_num_t) 33;
    u8g2_esp32_hal_init(u8g2_esp32_hal);

    u8g2_Setup_sh1107_64x128_f(
	    &u8g2,
	    U8G2_R1,
	    u8g2_esp32_spi_byte_cb,
	    u8g2_esp32_gpio_and_delay_cb); // init u8g2 structure

    u8g2_InitDisplay(&u8g2); // send init sequence to the display, display is in sleep mode after this,

    u8g2_SetPowerSave(&u8g2, 0); // wake up display

    u8g2_ClearBuffer(&u8g2);
    u8g2_DrawBox(&u8g2, 10, 20, 20, 30);
}

OLED::~OLED() {
    u8g2_ClearBuffer(&u8g2);
    u8g2_SetPowerSave(&u8g2, 1);
    delete &u8g2;
}

void OLED::print(const char* toprint, int x, int y, bool clear, bool show) {
    if (clear)
	u8g2_ClearBuffer(&u8g2);
        u8g2_SetPowerSave(&u8g2, 0); // wake up display
    u8g2_SetFont(&u8g2, u8g2_font_luBS24_te); //u8g2_font_ncenB14_tr);
    u8g2_DrawStr(&u8g2, x, y, toprint);
    if (show) u8g2_SendBuffer(&u8g2);
}

void OLED::clear() {
	u8g2_ClearBuffer(&u8g2);
         u8g2_SetPowerSave(&u8g2, 1);
}

#undef ESP_ERROR_CHECK
#define ESP_ERROR_CHECK(x)   do { esp_err_t rc = (x); if (rc != ESP_OK) { ESP_LOGE("err", "esp_err_t = %d", rc); assert(0 && #x);} } while(0);

/*
 * Initialze the ESP32 HAL.
 */
void OLED::u8g2_esp32_hal_init(u8g2_esp32_hal_t u8g2_esp32_hal_param) {

    u8g2_esp32_hal = u8g2_esp32_hal_param;
} // u8g2_esp32_hal_init

/*
 * HAL callback function as prescribed by the U8G2 library.  This callback is invoked
 * to handle SPI communications.
 */
uint8_t u8g2_esp32_spi_byte_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr) {
    ESP_LOGD(TAG, "spi_byte_cb: Received a msg: %d, arg_int: %d, arg_ptr: %p", msg, arg_int, arg_ptr);
    switch (msg) {
	case U8X8_MSG_BYTE_SET_DC:
	    if (u8g2_esp32_hal.dc != U8G2_ESP32_HAL_UNDEFINED) {
		gpio_set_level(u8g2_esp32_hal.dc, arg_int);
	    }
	    break;

	case U8X8_MSG_BYTE_INIT:
	{
	    if (u8g2_esp32_hal.clk == U8G2_ESP32_HAL_UNDEFINED ||
		    u8g2_esp32_hal.mosi == U8G2_ESP32_HAL_UNDEFINED ||
		    u8g2_esp32_hal.cs == U8G2_ESP32_HAL_UNDEFINED) {
		break;
	    }

	    spi_bus_config_t bus_config;
	    memset(&bus_config, 0, sizeof (spi_bus_config_t));
	    bus_config.sclk_io_num = u8g2_esp32_hal.clk; // CLK
	    bus_config.mosi_io_num = u8g2_esp32_hal.mosi; // MOSI
	    bus_config.miso_io_num = -1; // MISO
	    bus_config.quadwp_io_num = -1; // Not used
	    bus_config.quadhd_io_num = -1; // Not used
	    //ESP_LOGI(TAG, "... Initializing bus.");
	    ESP_ERROR_CHECK(spi_bus_initialize(HSPI_HOST, &bus_config, 1));

	    spi_device_interface_config_t dev_config;
	    dev_config.address_bits = 0;
	    dev_config.command_bits = 0;
	    dev_config.dummy_bits = 0;
	    dev_config.mode = 0;
	    dev_config.duty_cycle_pos = 0;
	    dev_config.cs_ena_posttrans = 0;
	    dev_config.cs_ena_pretrans = 0;
	    dev_config.clock_speed_hz = 20000;//10000;
	    dev_config.spics_io_num = u8g2_esp32_hal.cs;
	    dev_config.flags = 0;
	    dev_config.queue_size = 200;
	    dev_config.pre_cb = NULL;
	    dev_config.post_cb = NULL;
	    //ESP_LOGI(TAG, "... Adding device bus.");
	    ESP_ERROR_CHECK(spi_bus_add_device(HSPI_HOST, &dev_config, &handle_spi));

	    break;
	}

	case U8X8_MSG_BYTE_SEND:
	{
	    spi_transaction_t trans_desc;
	    trans_desc.addr = 0;
	    trans_desc.cmd = 0;
	    trans_desc.flags = 0;
	    trans_desc.length = 8 * arg_int; // Number of bits NOT number of bytes.
	    trans_desc.rxlength = 0;
	    trans_desc.tx_buffer = arg_ptr;
	    trans_desc.rx_buffer = NULL;

	    //ESP_LOGI(TAG, "... Transmitting %d bytes.", arg_int);
	    ESP_ERROR_CHECK(spi_device_transmit(handle_spi, &trans_desc));

	    break;
	}
    }
    return 0;
} // u8g2_esp32_spi_byte_cb

/*
 * HAL callback function as prescribed by the U8G2 library.  This callback is invoked
 * to handle callbacks for GPIO and delay functions.
 */
uint8_t u8g2_esp32_gpio_and_delay_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr) {
    ESP_LOGD(TAG, "gpio_and_delay_cb: Received a msg: %d, arg_int: %d, arg_ptr: %p", msg, arg_int, arg_ptr);

    switch (msg) {
	    // Initialize the GPIO and DELAY HAL functions.  If the pins for DC and RESET have been
	    // specified then we define those pins as GPIO outputs.
	case U8X8_MSG_GPIO_AND_DELAY_INIT:
	{
	    uint64_t bitmask = 0;
	    if (u8g2_esp32_hal.dc != U8G2_ESP32_HAL_UNDEFINED) {
		bitmask = bitmask | (1ull << u8g2_esp32_hal.dc);
	    }
	    if (u8g2_esp32_hal.reset != U8G2_ESP32_HAL_UNDEFINED) {
		bitmask = bitmask | (1ull << u8g2_esp32_hal.reset);
	    }
	    if (u8g2_esp32_hal.cs != U8G2_ESP32_HAL_UNDEFINED) {
		bitmask = bitmask | (1ull << u8g2_esp32_hal.cs);
	    }

	    if (bitmask == 0) {
		break;
	    }
	    gpio_config_t gpioConfig;
	    gpioConfig.pin_bit_mask = bitmask;
	    gpioConfig.mode = GPIO_MODE_OUTPUT;
	    gpioConfig.pull_up_en = GPIO_PULLUP_DISABLE;
	    gpioConfig.pull_down_en = GPIO_PULLDOWN_ENABLE;
	    gpioConfig.intr_type = GPIO_INTR_DISABLE;
	    gpio_config(&gpioConfig);
	    break;
	}

	    // Set the GPIO reset pin to the value passed in through arg_int.
	case U8X8_MSG_GPIO_RESET:
	    if (u8g2_esp32_hal.reset != U8G2_ESP32_HAL_UNDEFINED) {
		gpio_set_level(u8g2_esp32_hal.reset, arg_int);
	    }
	    break;
	    // Set the GPIO client select pin to the value passed in through arg_int.
	case U8X8_MSG_GPIO_CS:
	    if (u8g2_esp32_hal.cs != U8G2_ESP32_HAL_UNDEFINED) {
		gpio_set_level(u8g2_esp32_hal.cs, arg_int);
	    }
	    break;
	    // Set the Software I²C pin to the value passed in through arg_int.
	case U8X8_MSG_GPIO_I2C_CLOCK:
	    if (u8g2_esp32_hal.scl != U8G2_ESP32_HAL_UNDEFINED) {
		gpio_set_level(u8g2_esp32_hal.scl, arg_int);
		//				printf("%c",(arg_int==1?'C':'c'));
	    }
	    break;
	    // Set the Software I²C pin to the value passed in through arg_int.
	case U8X8_MSG_GPIO_I2C_DATA:
	    if (u8g2_esp32_hal.sda != U8G2_ESP32_HAL_UNDEFINED) {
		gpio_set_level(u8g2_esp32_hal.sda, arg_int);
		//				printf("%c",(arg_int==1?'D':'d'));
	    }
	    break;

	    // Delay for the number of milliseconds passed in through arg_int.
	case U8X8_MSG_DELAY_MILLI:
	    vTaskDelay(arg_int / portTICK_PERIOD_MS);
	    break;
    }
    return 0;
} // u8g2_esp32_gpio_and_delay_cb

void OLED::drawMpuCube(float roll, float pitch, float yaw) {
 /* long posMappedPitch = map(pitch, 0, 90, 0, 32);
  long absMappedPitch = map(abs(pitch), 0, 90, 0, 32);
  long posMappedRoll = map(roll, 0, 180, 0, 28);
  long absMappedRoll = map(abs(roll), 0, 180, 0, 28);
  u8g2->drawLine(70, 32, 128, 32);
  u8g2->drawLine(95, 64, 95, 0);
  if (pitch >= 0 ) {
    if (roll >= 0) {
      u8g2->drawBox(95, 32 - absMappedPitch, 1 + absMappedRoll, 1 + absMappedPitch);
    } else {
      u8g2->drawBox(95 - absMappedRoll, 32 - absMappedPitch, 1 + absMappedRoll, 1 + absMappedPitch);
    }
  } else {
    if (roll >= 0) {
      u8g2->drawBox(95, 32, 1 + absMappedRoll, 1 + absMappedPitch);
    } else {
      u8g2->drawBox(95 - absMappedRoll, 32, 1 + absMappedRoll, 1 + absMappedPitch);
    }
  }*/
}


void OLED::printMpu() {
/*  ui.printHello("MPU DEMO");
  do {

    float * ahrs;
    ahrs = ui.getAHRS();
    float roll = ahrs[1];
    float yaw = ahrs[2];
    float pitch = ahrs[0];

    Serial.print("roll  (x-forward (north)) : ");
    Serial.println(roll);
    Serial.print("pitch (y-right (east))    : ");
    Serial.println(pitch);
    Serial.print("yaw   (z-down (down))     : ");
    Serial.println(yaw);

    u8g2->setFont(u8g2_font_ncenB14_tr);
    u8g2->firstPage();
    do {
      u8g2->setCursor(0, 20);
      u8g2->print(roll);
      u8g2->setCursor(0, 40);
      u8g2->print(pitch);
      u8g2->setCursor(0, 60);
      u8g2->print(yaw);
      drawMpuCube(roll, pitch, yaw);
    } while ( u8g2->nextPage() );
  } while (ui.readButton() != SHORT_CLICK);
  ui.clearScreen();*/
}
