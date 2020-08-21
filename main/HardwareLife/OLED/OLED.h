#include "driver/gpio.h"
#include "driver/spi_master.h"
#include "sdkconfig.h"
#include "../../../components/u8g2/csrc/u8g2.h"
//#include <u8x8.h>

#ifndef OLED_H
#define OLED_H

#define U8G2_ESP32_HAL_UNDEFINED (-1)
using namespace std;

typedef struct {
    gpio_num_t clk;
    gpio_num_t mosi;
    gpio_num_t sda; // data for I²C
    gpio_num_t scl; // clock for I²C
    gpio_num_t cs;
    gpio_num_t reset;
    gpio_num_t dc;
} u8g2_esp32_hal_t;


static const char *TAG = "u8g2_";

static spi_device_handle_t handle_spi; // SPI handle.
static u8g2_esp32_hal_t u8g2_esp32_hal; // HAL state data.

class OLED {
public:
    OLED();
    OLED(const OLED& orig);
    virtual ~OLED();

    void print(const char* toprint, int x, int y, bool clear, bool show);
    void clear();

    void drawMpuCube(float roll, float pitch, float yaw);
  void printMpu();

private:
    const char *tag = "8g2_hal";
    u8g2_t u8g2; // a structure which will contain all the data for one display
    int center, bottom;
    char lineChar[16];
//U8G2_SH1107_64X128_1_4W_HW_SPI *u8g2;
    void u8g2_esp32_hal_init(u8g2_esp32_hal_t u8g2_esp32_hal_param);
};


extern "C" {
    uint8_t u8g2_esp32_spi_byte_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
    uint8_t u8g2_esp32_gpio_and_delay_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
}

#endif /* OLED_H */