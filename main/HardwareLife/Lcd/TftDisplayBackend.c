#include <time.h>
#include <errno.h>
#include <sys/fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "esp_system.h"
#include "driver/gpio.h"
#include "esp_system.h"
#include "esp_heap_caps.h"
#include "tftspi.h"
#include "tft.h"
#include "spiffs_vfs.h"
//#include "../../../components/tft/tftspi.h"
//#include "../../../components/tft/tft.h"
//#include "../../../components/spiffs/spiffs_vfs.h"
//#include "../../../components/spidriver/spi_master_lobo.h"
#include "driver/uart.h"
#include "Defines_Lcd.h"

// No own font file yet _-_ static const char *file_fonts[3] = {"/spiffs/fonts/DotMatrix_M.fon", "/spiffs/fonts/Ubuntu.fon", "/spiffs/fonts/Grotesk24x48.fon"};
extern spi_lobo_device_handle_t disp_spi;

void TftDisplayBackend(void) {
    
    esp_err_t ret;

    max_rdclock = 8000000;
    // ===================================================

    // ====================================================================
    // === Pins MUST be initialized before SPI interface initialization ===
    // ====================================================================
    TFT_PinsInit();

    spi_lobo_device_handle_t spi;

    spi_lobo_bus_config_t buscfg = {
       
	.miso_io_num = SPI_DISPLAY_MISO, // set SPI MISO pin
	.mosi_io_num = SPI_DISPLAY_MOSI, // set SPI MOSI pin
	.sclk_io_num = SPI_DISPLAY_SCLK, // set SPI CLK pin
	.quadwp_io_num = -1,
	.quadhd_io_num = -1,
	.max_transfer_sz = 6 * 1024
    };
    spi_lobo_device_interface_config_t devcfg = {
	.clock_speed_hz = 8000000, // Initial clock out at 8 MHz
	.mode = 0, // SPI mode 0
	.spics_io_num = -1, // we will use external CS pin
	.spics_ext_io_num = SPI_DISPLAY_CS, // external CS pin
	.flags = LB_SPI_DEVICE_HALFDUPLEX // ALWAYS SET  to HALF DUPLEX MODE!! for display spi
    };
    vTaskDelay(500 / portTICK_RATE_MS);

    ret = spi_lobo_bus_add_device(SPI_BUS, &buscfg, &devcfg, &spi);

    disp_spi = spi;

    // ==== Test select/deselect ====
    ret = spi_lobo_device_select(spi, 1);

    ret = spi_lobo_device_deselect(spi);

    TFT_display_init();


    max_rdclock = find_rd_speed();


    // ==== Set SPI clock used for display operations ====
    spi_lobo_set_speed(spi, DEFAULT_SPI_CLOCK);


    vfs_spiffs_register();

//    TFT_setFont(DEJAVU24_FONT, NULL);
    TFT_setRotation(1);
    TFT_invertDisplay(false); //true);
    
     
}
