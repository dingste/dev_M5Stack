/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   DefinesHardwareAbstractionLayer.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 24. Mai 2019, 15:35
 */

#ifndef DEFINESHARDWAREABSTRACTIONLAYER_H
#define DEFINESHARDWAREABSTRACTIONLAYER_H

#include "../../../components/tft/tftspi.h"
#include "../../../components/spidriver/spi_master_lobo.h"

#define I2C_KEYPAD_SDA 21
#define I2C_KEYPAD_SCL 22
#define SPI_DISPLAY_MISO 19  // SPI MISO
#define SPI_DISPLAY_MOSI 23  // SPI MOSI
#define SPI_DISPLAY_SCLK  18//18 // SPI CLOCK pin
#define SPI_DISPLAY_CS   14 // Display CS pin
#define SPI_DISPLAY_DC   27//4 // Display command/data pin


#define TFT_RST  33  // Reset pin (could connect to Arduino RESET pin)
#define TFT_BL   32  // LED back-light



#define DISP_TYPE_ILI9341	0
#define DEFAULT_DISP_TYPE   DISP_TYPE_ILI9341
#define DEFAULT_TFT_DISPLAY_WIDTH   320
#define DEFAULT_TFT_DISPLAY_HEIGHT  240
#define DISP_COLOR_BITS_24          0x66
#define DEFAULT_GAMMA_CURVE         0
#define DEFAULT_SPI_CLOCK           26000000
#define TFT_INVERT_ROTATION         0
#define TFT_INVERT_ROTATION1        0
#define TFT_INVERT_ROTATION2        1   // Adapte M5Stack TFT
#define TFT_RGB_BGR                 0x08


#define USE_TOUCH TOUCH_TYPE_NONE

#define SPI_READ_FREQUENCY  5000000
#define SPI_DISPLAY_RST  3 // GPIO used for RESET control
#define PIN_NUM_BCKL  32     // GPIO used for backlight control


#define DEG_TO_RAD 0.01745329252
#define RAD_TO_DEG 57.295779513
#define deg_to_rad 0.01745329252 + 3.14159265359
#define swapC(a, b) { int16_t t = a; a = b; b = t; }
#define constrain(amt,low,high) ((amt)<(low)?(low):((amt)>(high)?(high):(amt)))
#if !defined(max)
#define max(A,B) ( (A) > (B) ? (A):(B))
#endif
#if !defined(min)
#define min(A,B) ( (A) < (B) ? (A):(B))
#endif

#define DEFAULT_FONT 0
#define DEJAVU18_FONT 1
#define DEJAVU24_FONT 2
#define UBUNTU16_FONT 3
#define COMIC24_FONT 4
#define MINYA24_FONT 5
#define TOONEY32_FONT 6
#define SMALL_FONT  7
#define DEF_SMALL_FONT 8
#define FONT_7SEG  9
#define USER_FONT  10  // font will be read from file
#define SPI_BUS TFT_HSPI_HOST


#define PORTRAIT 0
#define LANDSCAPE 1
#define PORTRAIT_FLIP 2
#define LANDSCAPE_FLIP 3



// ==== Display commands constants ====
#define TFT_INVOFF     0x20
#define TFT_INVONN     0x21
#define TFT_DISPOFF    0x28
#define TFT_DISPON     0x29
#define TFT_MADCTL    0x36
#define TFT_PTLAR     0x30
#define TFT_ENTRYM     0xB7

#define TFT_CMD_NOP   0x00
#define TFT_CMD_SWRESET  0x01
#define TFT_CMD_RDDID  0x04
#define TFT_CMD_RDDST  0x09

#define TFT_CMD_SLPIN  0x10
#define TFT_CMD_SLPOUT  0x11
#define TFT_CMD_PTLON  0x12
#define TFT_CMD_NORON  0x13

#define TFT_CMD_RDMODE  0x0A
#define TFT_CMD_RDMADCTL 0x0B
#define TFT_CMD_RDPIXFMT 0x0C
#define TFT_CMD_RDIMGFMT 0x0D
#define TFT_CMD_RDSELFDIAG  0x0F

#define TFT_CMD_GAMMASET 0x26

#define TFT_CMD_FRMCTR1  0xB1
#define TFT_CMD_FRMCTR2  0xB2
#define TFT_CMD_FRMCTR3  0xB3
#define TFT_CMD_INVCTR  0xB4
#define TFT_CMD_DFUNCTR  0xB6

#define TFT_CMD_PWCTR1  0xC0
#define TFT_CMD_PWCTR2  0xC1
#define TFT_CMD_PWCTR3  0xC2
#define TFT_CMD_PWCTR4  0xC3
#define TFT_CMD_PWCTR5  0xC4
#define TFT_CMD_VMCTR1  0xC5
#define TFT_CMD_VMCTR2  0xC7

#define TFT_CMD_RDID1  0xDA
#define TFT_CMD_RDID2  0xDB
#define TFT_CMD_RDID3  0xDC
#define TFT_CMD_RDID4  0xDD

#define TFT_CMD_GMCTRP1  0xE0
#define TFT_CMD_GMCTRN1  0xE1

#define TFT_CMD_POWERA  0xCB
#define TFT_CMD_POWERB  0xCF
#define TFT_CMD_POWER_SEQ 0xED
#define TFT_CMD_DTCA  0xE8
#define TFT_CMD_DTCB  0xEA
#define TFT_CMD_PRC   0xF7
#define TFT_CMD_3GAMMA_EN 0xF2

#define ST_CMD_VCOMS       0xBB
#define ST_CMD_FRCTRL2      0xC6
#define ST_CMD_PWCTR1  0xD0


#define MADCTL_MY  0x80
#define MADCTL_MX  0x40
#define MADCTL_MV  0x20
#define MADCTL_ML  0x10
#define MADCTL_MH  0x04

#define TFT_CASET  0x2A
#define TFT_PASET  0x2B
#define TFT_RAMWR  0x2C
#define TFT_RAMRD  0x2E
#define TFT_CMD_PIXFMT 0x3A

#define TFT_CMD_DELAY 0x80




#endif /* DEFINESHARDWAREABSTRACTIONLAYER_H */

