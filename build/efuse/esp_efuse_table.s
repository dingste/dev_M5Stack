	.file	"esp_efuse_table.c"
	.text
.Ltext0:
	.global	ESP_EFUSE_SECURE_VERSION
	.section	.data.ESP_EFUSE_SECURE_VERSION,"aw"
	.align	4
	.type	ESP_EFUSE_SECURE_VERSION, @object
	.size	ESP_EFUSE_SECURE_VERSION, 8
ESP_EFUSE_SECURE_VERSION:
	.word	SECURE_VERSION
	.word	0
	.global	ESP_EFUSE_ADC2_TP_HIGH
	.section	.data.ESP_EFUSE_ADC2_TP_HIGH,"aw"
	.align	4
	.type	ESP_EFUSE_ADC2_TP_HIGH, @object
	.size	ESP_EFUSE_ADC2_TP_HIGH, 8
ESP_EFUSE_ADC2_TP_HIGH:
	.word	ADC2_TP_HIGH
	.word	0
	.global	ESP_EFUSE_ADC1_TP_HIGH
	.section	.data.ESP_EFUSE_ADC1_TP_HIGH,"aw"
	.align	4
	.type	ESP_EFUSE_ADC1_TP_HIGH, @object
	.size	ESP_EFUSE_ADC1_TP_HIGH, 8
ESP_EFUSE_ADC1_TP_HIGH:
	.word	ADC1_TP_HIGH
	.word	0
	.global	ESP_EFUSE_ADC2_TP_LOW
	.section	.data.ESP_EFUSE_ADC2_TP_LOW,"aw"
	.align	4
	.type	ESP_EFUSE_ADC2_TP_LOW, @object
	.size	ESP_EFUSE_ADC2_TP_LOW, 8
ESP_EFUSE_ADC2_TP_LOW:
	.word	ADC2_TP_LOW
	.word	0
	.global	ESP_EFUSE_ADC1_TP_LOW
	.section	.data.ESP_EFUSE_ADC1_TP_LOW,"aw"
	.align	4
	.type	ESP_EFUSE_ADC1_TP_LOW, @object
	.size	ESP_EFUSE_ADC1_TP_LOW, 8
ESP_EFUSE_ADC1_TP_LOW:
	.word	ADC1_TP_LOW
	.word	0
	.global	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF
	.section	.data.ESP_EFUSE_ADC_VREF_AND_SDIO_DREF,"aw"
	.align	4
	.type	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF, @object
	.size	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF, 8
ESP_EFUSE_ADC_VREF_AND_SDIO_DREF:
	.word	ADC_VREF_AND_SDIO_DREF
	.word	0
	.global	ESP_EFUSE_SDIO_FORCE
	.section	.data.ESP_EFUSE_SDIO_FORCE,"aw"
	.align	4
	.type	ESP_EFUSE_SDIO_FORCE, @object
	.size	ESP_EFUSE_SDIO_FORCE, 8
ESP_EFUSE_SDIO_FORCE:
	.word	SDIO_FORCE
	.word	0
	.global	ESP_EFUSE_SDIO_TIEH
	.section	.data.ESP_EFUSE_SDIO_TIEH,"aw"
	.align	4
	.type	ESP_EFUSE_SDIO_TIEH, @object
	.size	ESP_EFUSE_SDIO_TIEH, 8
ESP_EFUSE_SDIO_TIEH:
	.word	SDIO_TIEH
	.word	0
	.global	ESP_EFUSE_XPD_SDIO_REG
	.section	.data.ESP_EFUSE_XPD_SDIO_REG,"aw"
	.align	4
	.type	ESP_EFUSE_XPD_SDIO_REG, @object
	.size	ESP_EFUSE_XPD_SDIO_REG, 8
ESP_EFUSE_XPD_SDIO_REG:
	.word	XPD_SDIO_REG
	.word	0
	.global	ESP_EFUSE_CHIP_VER_REV2
	.section	.data.ESP_EFUSE_CHIP_VER_REV2,"aw"
	.align	4
	.type	ESP_EFUSE_CHIP_VER_REV2, @object
	.size	ESP_EFUSE_CHIP_VER_REV2, 8
ESP_EFUSE_CHIP_VER_REV2:
	.word	CHIP_VER_REV2
	.word	0
	.global	ESP_EFUSE_CHIP_VER_REV1
	.section	.data.ESP_EFUSE_CHIP_VER_REV1,"aw"
	.align	4
	.type	ESP_EFUSE_CHIP_VER_REV1, @object
	.size	ESP_EFUSE_CHIP_VER_REV1, 8
ESP_EFUSE_CHIP_VER_REV1:
	.word	CHIP_VER_REV1
	.word	0
	.global	ESP_EFUSE_CHIP_CPU_FREQ_RATED
	.section	.data.ESP_EFUSE_CHIP_CPU_FREQ_RATED,"aw"
	.align	4
	.type	ESP_EFUSE_CHIP_CPU_FREQ_RATED, @object
	.size	ESP_EFUSE_CHIP_CPU_FREQ_RATED, 8
ESP_EFUSE_CHIP_CPU_FREQ_RATED:
	.word	CHIP_CPU_FREQ_RATED
	.word	0
	.global	ESP_EFUSE_CHIP_CPU_FREQ_LOW
	.section	.data.ESP_EFUSE_CHIP_CPU_FREQ_LOW,"aw"
	.align	4
	.type	ESP_EFUSE_CHIP_CPU_FREQ_LOW, @object
	.size	ESP_EFUSE_CHIP_CPU_FREQ_LOW, 8
ESP_EFUSE_CHIP_CPU_FREQ_LOW:
	.word	CHIP_CPU_FREQ_LOW
	.word	0
	.global	ESP_EFUSE_CHIP_VER_PKG
	.section	.data.ESP_EFUSE_CHIP_VER_PKG,"aw"
	.align	4
	.type	ESP_EFUSE_CHIP_VER_PKG, @object
	.size	ESP_EFUSE_CHIP_VER_PKG, 8
ESP_EFUSE_CHIP_VER_PKG:
	.word	CHIP_VER_PKG
	.word	0
	.global	ESP_EFUSE_CHIP_VER_DIS_BT
	.section	.data.ESP_EFUSE_CHIP_VER_DIS_BT,"aw"
	.align	4
	.type	ESP_EFUSE_CHIP_VER_DIS_BT, @object
	.size	ESP_EFUSE_CHIP_VER_DIS_BT, 8
ESP_EFUSE_CHIP_VER_DIS_BT:
	.word	CHIP_VER_DIS_BT
	.word	0
	.global	ESP_EFUSE_CHIP_VER_DIS_APP_CPU
	.section	.data.ESP_EFUSE_CHIP_VER_DIS_APP_CPU,"aw"
	.align	4
	.type	ESP_EFUSE_CHIP_VER_DIS_APP_CPU, @object
	.size	ESP_EFUSE_CHIP_VER_DIS_APP_CPU, 8
ESP_EFUSE_CHIP_VER_DIS_APP_CPU:
	.word	CHIP_VER_DIS_APP_CPU
	.word	0
	.global	ESP_EFUSE_RD_DIS_BLK3
	.section	.data.ESP_EFUSE_RD_DIS_BLK3,"aw"
	.align	4
	.type	ESP_EFUSE_RD_DIS_BLK3, @object
	.size	ESP_EFUSE_RD_DIS_BLK3, 8
ESP_EFUSE_RD_DIS_BLK3:
	.word	RD_DIS_BLK3
	.word	0
	.global	ESP_EFUSE_RD_DIS_BLK2
	.section	.data.ESP_EFUSE_RD_DIS_BLK2,"aw"
	.align	4
	.type	ESP_EFUSE_RD_DIS_BLK2, @object
	.size	ESP_EFUSE_RD_DIS_BLK2, 8
ESP_EFUSE_RD_DIS_BLK2:
	.word	RD_DIS_BLK2
	.word	0
	.global	ESP_EFUSE_RD_DIS_BLK1
	.section	.data.ESP_EFUSE_RD_DIS_BLK1,"aw"
	.align	4
	.type	ESP_EFUSE_RD_DIS_BLK1, @object
	.size	ESP_EFUSE_RD_DIS_BLK1, 8
ESP_EFUSE_RD_DIS_BLK1:
	.word	RD_DIS_BLK1
	.word	0
	.global	ESP_EFUSE_WR_DIS_BLK3
	.section	.data.ESP_EFUSE_WR_DIS_BLK3,"aw"
	.align	4
	.type	ESP_EFUSE_WR_DIS_BLK3, @object
	.size	ESP_EFUSE_WR_DIS_BLK3, 8
ESP_EFUSE_WR_DIS_BLK3:
	.word	WR_DIS_BLK3
	.word	0
	.global	ESP_EFUSE_WR_DIS_BLK2
	.section	.data.ESP_EFUSE_WR_DIS_BLK2,"aw"
	.align	4
	.type	ESP_EFUSE_WR_DIS_BLK2, @object
	.size	ESP_EFUSE_WR_DIS_BLK2, 8
ESP_EFUSE_WR_DIS_BLK2:
	.word	WR_DIS_BLK2
	.word	0
	.global	ESP_EFUSE_WR_DIS_BLK1
	.section	.data.ESP_EFUSE_WR_DIS_BLK1,"aw"
	.align	4
	.type	ESP_EFUSE_WR_DIS_BLK1, @object
	.size	ESP_EFUSE_WR_DIS_BLK1, 8
ESP_EFUSE_WR_DIS_BLK1:
	.word	WR_DIS_BLK1
	.word	0
	.global	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT
	.section	.data.ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT,"aw"
	.align	4
	.type	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, @object
	.size	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, 8
ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT:
	.word	WR_DIS_FLASH_CRYPT_CNT
	.word	0
	.global	ESP_EFUSE_FLASH_CRYPT_CNT
	.section	.data.ESP_EFUSE_FLASH_CRYPT_CNT,"aw"
	.align	4
	.type	ESP_EFUSE_FLASH_CRYPT_CNT, @object
	.size	ESP_EFUSE_FLASH_CRYPT_CNT, 8
ESP_EFUSE_FLASH_CRYPT_CNT:
	.word	FLASH_CRYPT_CNT
	.word	0
	.global	ESP_EFUSE_CONSOLE_DEBUG_DISABLE
	.section	.data.ESP_EFUSE_CONSOLE_DEBUG_DISABLE,"aw"
	.align	4
	.type	ESP_EFUSE_CONSOLE_DEBUG_DISABLE, @object
	.size	ESP_EFUSE_CONSOLE_DEBUG_DISABLE, 8
ESP_EFUSE_CONSOLE_DEBUG_DISABLE:
	.word	CONSOLE_DEBUG_DISABLE
	.word	0
	.global	ESP_EFUSE_DISABLE_JTAG
	.section	.data.ESP_EFUSE_DISABLE_JTAG,"aw"
	.align	4
	.type	ESP_EFUSE_DISABLE_JTAG, @object
	.size	ESP_EFUSE_DISABLE_JTAG, 8
ESP_EFUSE_DISABLE_JTAG:
	.word	DISABLE_JTAG
	.word	0
	.global	ESP_EFUSE_DISABLE_DL_CACHE
	.section	.data.ESP_EFUSE_DISABLE_DL_CACHE,"aw"
	.align	4
	.type	ESP_EFUSE_DISABLE_DL_CACHE, @object
	.size	ESP_EFUSE_DISABLE_DL_CACHE, 8
ESP_EFUSE_DISABLE_DL_CACHE:
	.word	DISABLE_DL_CACHE
	.word	0
	.global	ESP_EFUSE_DISABLE_DL_DECRYPT
	.section	.data.ESP_EFUSE_DISABLE_DL_DECRYPT,"aw"
	.align	4
	.type	ESP_EFUSE_DISABLE_DL_DECRYPT, @object
	.size	ESP_EFUSE_DISABLE_DL_DECRYPT, 8
ESP_EFUSE_DISABLE_DL_DECRYPT:
	.word	DISABLE_DL_DECRYPT
	.word	0
	.global	ESP_EFUSE_DISABLE_DL_ENCRYPT
	.section	.data.ESP_EFUSE_DISABLE_DL_ENCRYPT,"aw"
	.align	4
	.type	ESP_EFUSE_DISABLE_DL_ENCRYPT, @object
	.size	ESP_EFUSE_DISABLE_DL_ENCRYPT, 8
ESP_EFUSE_DISABLE_DL_ENCRYPT:
	.word	DISABLE_DL_ENCRYPT
	.word	0
	.global	ESP_EFUSE_ENCRYPT_CONFIG
	.section	.data.ESP_EFUSE_ENCRYPT_CONFIG,"aw"
	.align	4
	.type	ESP_EFUSE_ENCRYPT_CONFIG, @object
	.size	ESP_EFUSE_ENCRYPT_CONFIG, 8
ESP_EFUSE_ENCRYPT_CONFIG:
	.word	ENCRYPT_CONFIG
	.word	0
	.global	ESP_EFUSE_ENCRYPT_FLASH_KEY
	.section	.data.ESP_EFUSE_ENCRYPT_FLASH_KEY,"aw"
	.align	4
	.type	ESP_EFUSE_ENCRYPT_FLASH_KEY, @object
	.size	ESP_EFUSE_ENCRYPT_FLASH_KEY, 8
ESP_EFUSE_ENCRYPT_FLASH_KEY:
	.word	ENCRYPT_FLASH_KEY
	.word	0
	.global	ESP_EFUSE_ABS_DONE_0
	.section	.data.ESP_EFUSE_ABS_DONE_0,"aw"
	.align	4
	.type	ESP_EFUSE_ABS_DONE_0, @object
	.size	ESP_EFUSE_ABS_DONE_0, 8
ESP_EFUSE_ABS_DONE_0:
	.word	ABS_DONE_0
	.word	0
	.global	ESP_EFUSE_SECURE_BOOT_KEY
	.section	.data.ESP_EFUSE_SECURE_BOOT_KEY,"aw"
	.align	4
	.type	ESP_EFUSE_SECURE_BOOT_KEY, @object
	.size	ESP_EFUSE_SECURE_BOOT_KEY, 8
ESP_EFUSE_SECURE_BOOT_KEY:
	.word	SECURE_BOOT_KEY
	.word	0
	.global	ESP_EFUSE_MAC_CUSTOM_VER
	.section	.data.ESP_EFUSE_MAC_CUSTOM_VER,"aw"
	.align	4
	.type	ESP_EFUSE_MAC_CUSTOM_VER, @object
	.size	ESP_EFUSE_MAC_CUSTOM_VER, 8
ESP_EFUSE_MAC_CUSTOM_VER:
	.word	MAC_CUSTOM_VER
	.word	0
	.global	ESP_EFUSE_MAC_CUSTOM
	.section	.data.ESP_EFUSE_MAC_CUSTOM,"aw"
	.align	4
	.type	ESP_EFUSE_MAC_CUSTOM, @object
	.size	ESP_EFUSE_MAC_CUSTOM, 8
ESP_EFUSE_MAC_CUSTOM:
	.word	MAC_CUSTOM
	.word	0
	.global	ESP_EFUSE_MAC_CUSTOM_CRC
	.section	.data.ESP_EFUSE_MAC_CUSTOM_CRC,"aw"
	.align	4
	.type	ESP_EFUSE_MAC_CUSTOM_CRC, @object
	.size	ESP_EFUSE_MAC_CUSTOM_CRC, 8
ESP_EFUSE_MAC_CUSTOM_CRC:
	.word	MAC_CUSTOM_CRC
	.word	0
	.global	ESP_EFUSE_MAC_FACTORY_CRC
	.section	.data.ESP_EFUSE_MAC_FACTORY_CRC,"aw"
	.align	4
	.type	ESP_EFUSE_MAC_FACTORY_CRC, @object
	.size	ESP_EFUSE_MAC_FACTORY_CRC, 8
ESP_EFUSE_MAC_FACTORY_CRC:
	.word	MAC_FACTORY_CRC
	.word	0
	.global	ESP_EFUSE_MAC_FACTORY
	.section	.data.ESP_EFUSE_MAC_FACTORY,"aw"
	.align	4
	.type	ESP_EFUSE_MAC_FACTORY, @object
	.size	ESP_EFUSE_MAC_FACTORY, 28
ESP_EFUSE_MAC_FACTORY:
	.word	MAC_FACTORY
	.word	MAC_FACTORY+4
	.word	MAC_FACTORY+8
	.word	MAC_FACTORY+12
	.word	MAC_FACTORY+16
	.word	MAC_FACTORY+20
	.word	0
	.section	.rodata.SECURE_VERSION,"a"
	.align	4
	.type	SECURE_VERSION, @object
	.size	SECURE_VERSION, 4
SECURE_VERSION:
	.byte	3
	.byte	-128
	.short	32
	.section	.rodata.ADC2_TP_HIGH,"a"
	.align	4
	.type	ADC2_TP_HIGH, @object
	.size	ADC2_TP_HIGH, 4
ADC2_TP_HIGH:
	.byte	3
	.byte	119
	.short	9
	.section	.rodata.ADC1_TP_HIGH,"a"
	.align	4
	.type	ADC1_TP_HIGH, @object
	.size	ADC1_TP_HIGH, 4
ADC1_TP_HIGH:
	.byte	3
	.byte	103
	.short	9
	.section	.rodata.ADC2_TP_LOW,"a"
	.align	4
	.type	ADC2_TP_LOW, @object
	.size	ADC2_TP_LOW, 4
ADC2_TP_LOW:
	.byte	3
	.byte	112
	.short	7
	.section	.rodata.ADC1_TP_LOW,"a"
	.align	4
	.type	ADC1_TP_LOW, @object
	.size	ADC1_TP_LOW, 4
ADC1_TP_LOW:
	.byte	3
	.byte	96
	.short	7
	.section	.rodata.ADC_VREF_AND_SDIO_DREF,"a"
	.align	4
	.type	ADC_VREF_AND_SDIO_DREF, @object
	.size	ADC_VREF_AND_SDIO_DREF, 4
ADC_VREF_AND_SDIO_DREF:
	.byte	0
	.byte	-120
	.short	6
	.section	.rodata.SDIO_FORCE,"a"
	.align	4
	.type	SDIO_FORCE, @object
	.size	SDIO_FORCE, 4
SDIO_FORCE:
	.byte	0
	.byte	-112
	.short	1
	.section	.rodata.SDIO_TIEH,"a"
	.align	4
	.type	SDIO_TIEH, @object
	.size	SDIO_TIEH, 4
SDIO_TIEH:
	.byte	0
	.byte	-113
	.short	1
	.section	.rodata.XPD_SDIO_REG,"a"
	.align	4
	.type	XPD_SDIO_REG, @object
	.size	XPD_SDIO_REG, 4
XPD_SDIO_REG:
	.byte	0
	.byte	-114
	.short	1
	.section	.rodata.CHIP_VER_REV2,"a"
	.align	4
	.type	CHIP_VER_REV2, @object
	.size	CHIP_VER_REV2, 4
CHIP_VER_REV2:
	.byte	0
	.byte	-76
	.short	1
	.section	.rodata.CHIP_VER_REV1,"a"
	.align	4
	.type	CHIP_VER_REV1, @object
	.size	CHIP_VER_REV1, 4
CHIP_VER_REV1:
	.byte	0
	.byte	111
	.short	1
	.section	.rodata.CHIP_CPU_FREQ_RATED,"a"
	.align	4
	.type	CHIP_CPU_FREQ_RATED, @object
	.size	CHIP_CPU_FREQ_RATED, 4
CHIP_CPU_FREQ_RATED:
	.byte	0
	.byte	109
	.short	1
	.section	.rodata.CHIP_CPU_FREQ_LOW,"a"
	.align	4
	.type	CHIP_CPU_FREQ_LOW, @object
	.size	CHIP_CPU_FREQ_LOW, 4
CHIP_CPU_FREQ_LOW:
	.byte	0
	.byte	108
	.short	1
	.section	.rodata.CHIP_VER_PKG,"a"
	.align	4
	.type	CHIP_VER_PKG, @object
	.size	CHIP_VER_PKG, 4
CHIP_VER_PKG:
	.byte	0
	.byte	105
	.short	3
	.section	.rodata.CHIP_VER_DIS_BT,"a"
	.align	4
	.type	CHIP_VER_DIS_BT, @object
	.size	CHIP_VER_DIS_BT, 4
CHIP_VER_DIS_BT:
	.byte	0
	.byte	97
	.short	1
	.section	.rodata.CHIP_VER_DIS_APP_CPU,"a"
	.align	4
	.type	CHIP_VER_DIS_APP_CPU, @object
	.size	CHIP_VER_DIS_APP_CPU, 4
CHIP_VER_DIS_APP_CPU:
	.byte	0
	.byte	96
	.short	1
	.section	.rodata.RD_DIS_BLK3,"a"
	.align	4
	.type	RD_DIS_BLK3, @object
	.size	RD_DIS_BLK3, 4
RD_DIS_BLK3:
	.byte	0
	.byte	18
	.short	1
	.section	.rodata.RD_DIS_BLK2,"a"
	.align	4
	.type	RD_DIS_BLK2, @object
	.size	RD_DIS_BLK2, 4
RD_DIS_BLK2:
	.byte	0
	.byte	17
	.short	1
	.section	.rodata.RD_DIS_BLK1,"a"
	.align	4
	.type	RD_DIS_BLK1, @object
	.size	RD_DIS_BLK1, 4
RD_DIS_BLK1:
	.byte	0
	.byte	16
	.short	1
	.section	.rodata.WR_DIS_BLK3,"a"
	.align	4
	.type	WR_DIS_BLK3, @object
	.size	WR_DIS_BLK3, 4
WR_DIS_BLK3:
	.byte	0
	.byte	9
	.short	1
	.section	.rodata.WR_DIS_BLK2,"a"
	.align	4
	.type	WR_DIS_BLK2, @object
	.size	WR_DIS_BLK2, 4
WR_DIS_BLK2:
	.byte	0
	.byte	8
	.short	1
	.section	.rodata.WR_DIS_BLK1,"a"
	.align	4
	.type	WR_DIS_BLK1, @object
	.size	WR_DIS_BLK1, 4
WR_DIS_BLK1:
	.byte	0
	.byte	7
	.short	1
	.section	.rodata.WR_DIS_FLASH_CRYPT_CNT,"a"
	.align	4
	.type	WR_DIS_FLASH_CRYPT_CNT, @object
	.size	WR_DIS_FLASH_CRYPT_CNT, 4
WR_DIS_FLASH_CRYPT_CNT:
	.byte	0
	.byte	2
	.short	1
	.section	.rodata.FLASH_CRYPT_CNT,"a"
	.align	4
	.type	FLASH_CRYPT_CNT, @object
	.size	FLASH_CRYPT_CNT, 4
FLASH_CRYPT_CNT:
	.byte	0
	.byte	20
	.short	7
	.section	.rodata.CONSOLE_DEBUG_DISABLE,"a"
	.align	4
	.type	CONSOLE_DEBUG_DISABLE, @object
	.size	CONSOLE_DEBUG_DISABLE, 4
CONSOLE_DEBUG_DISABLE:
	.byte	0
	.byte	-62
	.short	1
	.section	.rodata.DISABLE_JTAG,"a"
	.align	4
	.type	DISABLE_JTAG, @object
	.size	DISABLE_JTAG, 4
DISABLE_JTAG:
	.byte	0
	.byte	-58
	.short	1
	.section	.rodata.DISABLE_DL_CACHE,"a"
	.align	4
	.type	DISABLE_DL_CACHE, @object
	.size	DISABLE_DL_CACHE, 4
DISABLE_DL_CACHE:
	.byte	0
	.byte	-55
	.short	1
	.section	.rodata.DISABLE_DL_DECRYPT,"a"
	.align	4
	.type	DISABLE_DL_DECRYPT, @object
	.size	DISABLE_DL_DECRYPT, 4
DISABLE_DL_DECRYPT:
	.byte	0
	.byte	-56
	.short	1
	.section	.rodata.DISABLE_DL_ENCRYPT,"a"
	.align	4
	.type	DISABLE_DL_ENCRYPT, @object
	.size	DISABLE_DL_ENCRYPT, 4
DISABLE_DL_ENCRYPT:
	.byte	0
	.byte	-57
	.short	1
	.section	.rodata.ENCRYPT_CONFIG,"a"
	.align	4
	.type	ENCRYPT_CONFIG, @object
	.size	ENCRYPT_CONFIG, 4
ENCRYPT_CONFIG:
	.byte	0
	.byte	-68
	.short	4
	.section	.rodata.ENCRYPT_FLASH_KEY,"a"
	.align	4
	.type	ENCRYPT_FLASH_KEY, @object
	.size	ENCRYPT_FLASH_KEY, 4
ENCRYPT_FLASH_KEY:
	.byte	1
	.byte	0
	.short	192
	.section	.rodata.ABS_DONE_0,"a"
	.align	4
	.type	ABS_DONE_0, @object
	.size	ABS_DONE_0, 4
ABS_DONE_0:
	.byte	0
	.byte	-60
	.short	1
	.section	.rodata.SECURE_BOOT_KEY,"a"
	.align	4
	.type	SECURE_BOOT_KEY, @object
	.size	SECURE_BOOT_KEY, 4
SECURE_BOOT_KEY:
	.byte	2
	.byte	0
	.short	192
	.section	.rodata.MAC_CUSTOM_VER,"a"
	.align	4
	.type	MAC_CUSTOM_VER, @object
	.size	MAC_CUSTOM_VER, 4
MAC_CUSTOM_VER:
	.byte	3
	.byte	-72
	.short	8
	.section	.rodata.MAC_CUSTOM,"a"
	.align	4
	.type	MAC_CUSTOM, @object
	.size	MAC_CUSTOM, 4
MAC_CUSTOM:
	.byte	3
	.byte	8
	.short	48
	.section	.rodata.MAC_CUSTOM_CRC,"a"
	.align	4
	.type	MAC_CUSTOM_CRC, @object
	.size	MAC_CUSTOM_CRC, 4
MAC_CUSTOM_CRC:
	.byte	3
	.byte	0
	.short	8
	.section	.rodata.MAC_FACTORY_CRC,"a"
	.align	4
	.type	MAC_FACTORY_CRC, @object
	.size	MAC_FACTORY_CRC, 4
MAC_FACTORY_CRC:
	.byte	0
	.byte	80
	.short	8
	.section	.rodata.MAC_FACTORY,"a"
	.align	4
	.type	MAC_FACTORY, @object
	.size	MAC_FACTORY, 24
MAC_FACTORY:
	.byte	0
	.byte	72
	.short	8
	.byte	0
	.byte	64
	.short	8
	.byte	0
	.byte	56
	.short	8
	.byte	0
	.byte	48
	.short	8
	.byte	0
	.byte	40
	.short	8
	.byte	0
	.byte	32
	.short	8
	.text
.Letext0:
	.file 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 9 "/home/dieter/Development/esp-idf/components/efuse/include/esp32/esp_efuse.h"
	.file 10 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
	.file 11 "/home/dieter/Development/esp-idf/components/efuse/esp32/include/esp_efuse_table.h"
	.file 12 "/home/dieter/Development/esp-idf/components/efuse/esp32/esp_efuse_table.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0xc
	.4byte	.LASF212
	.4byte	.LASF213
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x2b
	.byte	0x17
	.4byte	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x1
	.byte	0x39
	.byte	0x1c
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x18
	.byte	0x13
	.4byte	0x24
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x87
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x58
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xbe
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xed
	.byte	0
	.uleb128 0x9
	.4byte	0x30
	.4byte	0xfd
	.uleb128 0xa
	.4byte	0x58
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x121
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x51
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xfd
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x93
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x139
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1a6
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1a6
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x51
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x51
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x51
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x51
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1ac
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x14c
	.uleb128 0x9
	.4byte	0x140
	.4byte	0x1bc
	.uleb128 0xa
	.4byte	0x58
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x23f
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x51
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x51
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x51
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x51
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x51
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x51
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x51
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x51
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x51
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x284
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x284
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x284
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x140
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x140
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x294
	.uleb128 0xa
	.4byte	0x58
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2d6
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2d6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x51
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2dc
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2f3
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x294
	.uleb128 0x9
	.4byte	0x2ec
	.4byte	0x2ec
	.uleb128 0xa
	.4byte	0x58
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2f2
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x23f
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x321
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x321
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x51
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x39a
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x321
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x51
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x51
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x37
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x37
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x2f9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x51
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x4fe
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x327
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x4fe
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x51
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x756
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x756
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x756
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x51
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x665
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x51
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x51
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8be
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8c4
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8d5
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x51
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x51
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x665
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8db
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8e1
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x665
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8f2
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2d6
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x294
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x717
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x756
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8fe
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x665
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x39f
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x647
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x321
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x51
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x51
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x37
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x37
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2f9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x51
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x4fe
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x85
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x677
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6a6
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6ca
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6e4
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2f9
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x321
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x51
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ea
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6fa
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2f9
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x51
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xa6
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x12d
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x121
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x51
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x51
	.4byte	0x665
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x85
	.uleb128 0x18
	.4byte	0x665
	.uleb128 0x18
	.4byte	0x51
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x66b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x13
	.4byte	0x66b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x647
	.uleb128 0x17
	.4byte	0x51
	.4byte	0x69b
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x85
	.uleb128 0x18
	.4byte	0x69b
	.uleb128 0x18
	.4byte	0x51
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x672
	.uleb128 0x13
	.4byte	0x69b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67d
	.uleb128 0x17
	.4byte	0xb2
	.4byte	0x6ca
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x85
	.uleb128 0x18
	.4byte	0xb2
	.uleb128 0x18
	.4byte	0x51
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ac
	.uleb128 0x17
	.4byte	0x51
	.4byte	0x6e4
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x85
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d0
	.uleb128 0x9
	.4byte	0x30
	.4byte	0x6fa
	.uleb128 0xa
	.4byte	0x58
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x30
	.4byte	0x70a
	.uleb128 0xa
	.4byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x504
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x750
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x750
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x51
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x756
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x717
	.uleb128 0xf
	.byte	0x4
	.4byte	0x70a
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7a3
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7a3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7a3
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x4a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x66
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x4a
	.4byte	0x7b3
	.uleb128 0xa
	.4byte	0x58
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7fa
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1a6
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x51
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1a6
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7fa
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a6
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8a9
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x665
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x121
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x121
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x121
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8a9
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x51
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x121
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x121
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x121
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x121
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x121
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x66b
	.4byte	0x8b9
	.uleb128 0xa
	.4byte	0x58
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF214
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8b9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7b3
	.uleb128 0x1a
	.4byte	0x8d5
	.uleb128 0x18
	.4byte	0x4fe
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8ca
	.uleb128 0xf
	.byte	0x4
	.4byte	0x75c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1bc
	.uleb128 0x1a
	.4byte	0x8f2
	.uleb128 0x18
	.4byte	0x51
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x800
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x39a
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x39a
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x39a
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4fe
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x665
	.uleb128 0x9
	.4byte	0x6a1
	.4byte	0x954
	.uleb128 0xa
	.4byte	0x58
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.4byte	0x944
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x8
	.byte	0x8e
	.byte	0x1a
	.4byte	0x954
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x58
	.byte	0x9
	.byte	0x18
	.byte	0xe
	.4byte	0x992
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x9
	.byte	0x1e
	.byte	0x3
	.4byte	0x965
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x28
	.byte	0x9
	.4byte	0x9d2
	.uleb128 0x1f
	.4byte	.LASF215
	.byte	0xa
	.byte	0x29
	.byte	0x17
	.4byte	0x992
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xa
	.byte	0x2a
	.byte	0xd
	.4byte	0x6d
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.4byte	0x79
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xa
	.byte	0x2c
	.byte	0x3
	.4byte	0x99e
	.uleb128 0x13
	.4byte	0x9d2
	.uleb128 0x9
	.4byte	0x9ee
	.4byte	0x9ee
	.uleb128 0x20
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9de
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0xb
	.byte	0x1b
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0xb
	.byte	0x1c
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0xb
	.byte	0x1d
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0xb
	.byte	0x1e
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0xb
	.byte	0x1f
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0xb
	.byte	0x20
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0xb
	.byte	0x21
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0xb
	.byte	0x22
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0xb
	.byte	0x23
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0xb
	.byte	0x24
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0xb
	.byte	0x25
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0xb
	.byte	0x26
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0xb
	.byte	0x27
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0xb
	.byte	0x28
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0xb
	.byte	0x29
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0xb
	.byte	0x2a
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0xb
	.byte	0x2b
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0xb
	.byte	0x2c
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0xb
	.byte	0x2d
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0xb
	.byte	0x2e
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0xb
	.byte	0x2f
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0xb
	.byte	0x30
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0xb
	.byte	0x31
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0xb
	.byte	0x32
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0xb
	.byte	0x33
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0xb
	.byte	0x34
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0xb
	.byte	0x35
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0xb
	.byte	0x36
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0xb
	.byte	0x37
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF164
	.byte	0xb
	.byte	0x38
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0xb
	.byte	0x39
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0xb
	.byte	0x3a
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0xb
	.byte	0x3b
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0xb
	.byte	0x3c
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF169
	.byte	0xb
	.byte	0x3d
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0xb
	.byte	0x3e
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0xb
	.byte	0x3f
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF172
	.byte	0xb
	.byte	0x40
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x9
	.4byte	0x9de
	.4byte	0xbcc
	.uleb128 0xa
	.4byte	0x58
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0xbbc
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0xc
	.byte	0x25
	.byte	0x1f
	.4byte	0xbcc
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_FACTORY
	.uleb128 0x9
	.4byte	0x9de
	.4byte	0xbf3
	.uleb128 0xa
	.4byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbe3
	.uleb128 0x21
	.4byte	.LASF174
	.byte	0xc
	.byte	0x2e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_FACTORY_CRC
	.uleb128 0x21
	.4byte	.LASF175
	.byte	0xc
	.byte	0x32
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_CUSTOM_CRC
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0xc
	.byte	0x36
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_CUSTOM
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0xc
	.byte	0x3a
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_CUSTOM_VER
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0xc
	.byte	0x3e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	SECURE_BOOT_KEY
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0xc
	.byte	0x42
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ABS_DONE_0
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0xc
	.byte	0x46
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ENCRYPT_FLASH_KEY
	.uleb128 0x21
	.4byte	.LASF181
	.byte	0xc
	.byte	0x4a
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ENCRYPT_CONFIG
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0xc
	.byte	0x4e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_DL_ENCRYPT
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0xc
	.byte	0x52
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_DL_DECRYPT
	.uleb128 0x21
	.4byte	.LASF184
	.byte	0xc
	.byte	0x56
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_DL_CACHE
	.uleb128 0x21
	.4byte	.LASF185
	.byte	0xc
	.byte	0x5a
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_JTAG
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0xc
	.byte	0x5e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CONSOLE_DEBUG_DISABLE
	.uleb128 0x21
	.4byte	.LASF187
	.byte	0xc
	.byte	0x62
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	FLASH_CRYPT_CNT
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0xc
	.byte	0x66
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_FLASH_CRYPT_CNT
	.uleb128 0x21
	.4byte	.LASF189
	.byte	0xc
	.byte	0x6a
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_BLK1
	.uleb128 0x21
	.4byte	.LASF190
	.byte	0xc
	.byte	0x6e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_BLK2
	.uleb128 0x21
	.4byte	.LASF191
	.byte	0xc
	.byte	0x72
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_BLK3
	.uleb128 0x21
	.4byte	.LASF192
	.byte	0xc
	.byte	0x76
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	RD_DIS_BLK1
	.uleb128 0x21
	.4byte	.LASF193
	.byte	0xc
	.byte	0x7a
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	RD_DIS_BLK2
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0xc
	.byte	0x7e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	RD_DIS_BLK3
	.uleb128 0x21
	.4byte	.LASF195
	.byte	0xc
	.byte	0x82
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_DIS_APP_CPU
	.uleb128 0x21
	.4byte	.LASF196
	.byte	0xc
	.byte	0x86
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_DIS_BT
	.uleb128 0x21
	.4byte	.LASF197
	.byte	0xc
	.byte	0x8a
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_PKG
	.uleb128 0x21
	.4byte	.LASF198
	.byte	0xc
	.byte	0x8e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_CPU_FREQ_LOW
	.uleb128 0x21
	.4byte	.LASF199
	.byte	0xc
	.byte	0x92
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_CPU_FREQ_RATED
	.uleb128 0x21
	.4byte	.LASF200
	.byte	0xc
	.byte	0x96
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_REV1
	.uleb128 0x21
	.4byte	.LASF201
	.byte	0xc
	.byte	0x9a
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_REV2
	.uleb128 0x21
	.4byte	.LASF202
	.byte	0xc
	.byte	0x9e
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	XPD_SDIO_REG
	.uleb128 0x21
	.4byte	.LASF203
	.byte	0xc
	.byte	0xa2
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	SDIO_TIEH
	.uleb128 0x21
	.4byte	.LASF204
	.byte	0xc
	.byte	0xa6
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	SDIO_FORCE
	.uleb128 0x21
	.4byte	.LASF205
	.byte	0xc
	.byte	0xaa
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC_VREF_AND_SDIO_DREF
	.uleb128 0x21
	.4byte	.LASF206
	.byte	0xc
	.byte	0xae
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC1_TP_LOW
	.uleb128 0x21
	.4byte	.LASF207
	.byte	0xc
	.byte	0xb2
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC2_TP_LOW
	.uleb128 0x21
	.4byte	.LASF208
	.byte	0xc
	.byte	0xb6
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC1_TP_HIGH
	.uleb128 0x21
	.4byte	.LASF209
	.byte	0xc
	.byte	0xba
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC2_TP_HIGH
	.uleb128 0x21
	.4byte	.LASF210
	.byte	0xc
	.byte	0xbe
	.byte	0x1f
	.4byte	0xbf3
	.uleb128 0x5
	.byte	0x3
	.4byte	SECURE_VERSION
	.uleb128 0x22
	.4byte	0x9f4
	.byte	0xc
	.byte	0xc6
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_FACTORY
	.uleb128 0x22
	.4byte	0xa00
	.byte	0xc
	.byte	0xd0
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_FACTORY_CRC
	.uleb128 0x22
	.4byte	0xa0c
	.byte	0xc
	.byte	0xd5
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_CUSTOM_CRC
	.uleb128 0x22
	.4byte	0xa18
	.byte	0xc
	.byte	0xda
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_CUSTOM
	.uleb128 0x22
	.4byte	0xa24
	.byte	0xc
	.byte	0xdf
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_CUSTOM_VER
	.uleb128 0x22
	.4byte	0xa30
	.byte	0xc
	.byte	0xe4
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_SECURE_BOOT_KEY
	.uleb128 0x22
	.4byte	0xa3c
	.byte	0xc
	.byte	0xe9
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ABS_DONE_0
	.uleb128 0x22
	.4byte	0xa48
	.byte	0xc
	.byte	0xee
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ENCRYPT_FLASH_KEY
	.uleb128 0x22
	.4byte	0xa54
	.byte	0xc
	.byte	0xf3
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ENCRYPT_CONFIG
	.uleb128 0x22
	.4byte	0xa60
	.byte	0xc
	.byte	0xf8
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_DL_ENCRYPT
	.uleb128 0x22
	.4byte	0xa6c
	.byte	0xc
	.byte	0xfd
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_DL_DECRYPT
	.uleb128 0x23
	.4byte	0xa78
	.byte	0xc
	.2byte	0x102
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_DL_CACHE
	.uleb128 0x23
	.4byte	0xa84
	.byte	0xc
	.2byte	0x107
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_JTAG
	.uleb128 0x23
	.4byte	0xa90
	.byte	0xc
	.2byte	0x10c
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CONSOLE_DEBUG_DISABLE
	.uleb128 0x23
	.4byte	0xa9c
	.byte	0xc
	.2byte	0x111
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_FLASH_CRYPT_CNT
	.uleb128 0x23
	.4byte	0xaa8
	.byte	0xc
	.2byte	0x116
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT
	.uleb128 0x23
	.4byte	0xab4
	.byte	0xc
	.2byte	0x11b
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_BLK1
	.uleb128 0x23
	.4byte	0xac0
	.byte	0xc
	.2byte	0x120
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_BLK2
	.uleb128 0x23
	.4byte	0xacc
	.byte	0xc
	.2byte	0x125
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_BLK3
	.uleb128 0x23
	.4byte	0xad8
	.byte	0xc
	.2byte	0x12a
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_RD_DIS_BLK1
	.uleb128 0x23
	.4byte	0xae4
	.byte	0xc
	.2byte	0x12f
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_RD_DIS_BLK2
	.uleb128 0x23
	.4byte	0xaf0
	.byte	0xc
	.2byte	0x134
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_RD_DIS_BLK3
	.uleb128 0x23
	.4byte	0xafc
	.byte	0xc
	.2byte	0x139
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_DIS_APP_CPU
	.uleb128 0x23
	.4byte	0xb08
	.byte	0xc
	.2byte	0x13e
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_DIS_BT
	.uleb128 0x23
	.4byte	0xb14
	.byte	0xc
	.2byte	0x143
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_PKG
	.uleb128 0x23
	.4byte	0xb20
	.byte	0xc
	.2byte	0x148
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_CPU_FREQ_LOW
	.uleb128 0x23
	.4byte	0xb2c
	.byte	0xc
	.2byte	0x14d
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_CPU_FREQ_RATED
	.uleb128 0x23
	.4byte	0xb38
	.byte	0xc
	.2byte	0x152
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_REV1
	.uleb128 0x23
	.4byte	0xb44
	.byte	0xc
	.2byte	0x157
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_REV2
	.uleb128 0x23
	.4byte	0xb50
	.byte	0xc
	.2byte	0x15c
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_XPD_SDIO_REG
	.uleb128 0x23
	.4byte	0xb5c
	.byte	0xc
	.2byte	0x161
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_SDIO_TIEH
	.uleb128 0x23
	.4byte	0xb68
	.byte	0xc
	.2byte	0x166
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_SDIO_FORCE
	.uleb128 0x23
	.4byte	0xb74
	.byte	0xc
	.2byte	0x16b
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF
	.uleb128 0x23
	.4byte	0xb80
	.byte	0xc
	.2byte	0x170
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC1_TP_LOW
	.uleb128 0x23
	.4byte	0xb8c
	.byte	0xc
	.2byte	0x175
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC2_TP_LOW
	.uleb128 0x23
	.4byte	0xb98
	.byte	0xc
	.2byte	0x17a
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC1_TP_HIGH
	.uleb128 0x23
	.4byte	0xba4
	.byte	0xc
	.2byte	0x17f
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC2_TP_HIGH
	.uleb128 0x23
	.4byte	0xbb0
	.byte	0xc
	.2byte	0x184
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_SECURE_VERSION
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF151:
	.string	"ESP_EFUSE_WR_DIS_BLK1"
.LASF152:
	.string	"ESP_EFUSE_WR_DIS_BLK2"
.LASF153:
	.string	"ESP_EFUSE_WR_DIS_BLK3"
.LASF179:
	.string	"ABS_DONE_0"
.LASF78:
	.string	"_misc"
.LASF206:
	.string	"ADC1_TP_LOW"
.LASF11:
	.string	"_lock_t"
.LASF173:
	.string	"MAC_FACTORY"
.LASF196:
	.string	"CHIP_VER_DIS_BT"
.LASF40:
	.string	"_on_exit_args"
.LASF83:
	.string	"_write"
.LASF177:
	.string	"MAC_CUSTOM_VER"
.LASF111:
	.string	"_wctomb_state"
.LASF158:
	.string	"ESP_EFUSE_CHIP_VER_DIS_BT"
.LASF71:
	.string	"_r48"
.LASF204:
	.string	"SDIO_FORCE"
.LASF200:
	.string	"CHIP_VER_REV1"
.LASF201:
	.string	"CHIP_VER_REV2"
.LASF79:
	.string	"_signal_buf"
.LASF6:
	.string	"unsigned int"
.LASF169:
	.string	"ESP_EFUSE_ADC2_TP_LOW"
.LASF55:
	.string	"_lbfsize"
.LASF53:
	.string	"_flags"
.LASF208:
	.string	"ADC1_TP_HIGH"
.LASF58:
	.string	"_errno"
.LASF187:
	.string	"FLASH_CRYPT_CNT"
.LASF205:
	.string	"ADC_VREF_AND_SDIO_DREF"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF186:
	.string	"CONSOLE_DEBUG_DISABLE"
.LASF82:
	.string	"_read"
.LASF115:
	.string	"_mbrlen_state"
.LASF60:
	.string	"_stdout"
.LASF184:
	.string	"DISABLE_DL_CACHE"
.LASF181:
	.string	"ENCRYPT_CONFIG"
.LASF15:
	.string	"_fpos_t"
.LASF47:
	.string	"_fns"
.LASF81:
	.string	"_cookie"
.LASF29:
	.string	"_Bigint"
.LASF37:
	.string	"__tm_wday"
.LASF171:
	.string	"ESP_EFUSE_ADC2_TP_HIGH"
.LASF104:
	.string	"_result"
.LASF33:
	.string	"__tm_hour"
.LASF159:
	.string	"ESP_EFUSE_CHIP_VER_PKG"
.LASF167:
	.string	"ESP_EFUSE_ADC_VREF_AND_SDIO_DREF"
.LASF19:
	.string	"__count"
.LASF189:
	.string	"WR_DIS_BLK1"
.LASF190:
	.string	"WR_DIS_BLK2"
.LASF191:
	.string	"WR_DIS_BLK3"
.LASF149:
	.string	"ESP_EFUSE_FLASH_CRYPT_CNT"
.LASF32:
	.string	"__tm_min"
.LASF77:
	.string	"__sf"
.LASF98:
	.string	"_rand48"
.LASF105:
	.string	"_result_k"
.LASF8:
	.string	"long long unsigned int"
.LASF73:
	.string	"_asctime_buf"
.LASF80:
	.string	"__sFILE"
.LASF28:
	.string	"_wds"
.LASF174:
	.string	"MAC_FACTORY_CRC"
.LASF4:
	.string	"__uint16_t"
.LASF136:
	.string	"ESP_EFUSE_MAC_FACTORY_CRC"
.LASF94:
	.string	"__FILE"
.LASF89:
	.string	"_offset"
.LASF86:
	.string	"_ubuf"
.LASF135:
	.string	"ESP_EFUSE_MAC_FACTORY"
.LASF207:
	.string	"ADC2_TP_LOW"
.LASF63:
	.string	"_emergency"
.LASF188:
	.string	"WR_DIS_FLASH_CRYPT_CNT"
.LASF142:
	.string	"ESP_EFUSE_ENCRYPT_FLASH_KEY"
.LASF180:
	.string	"ENCRYPT_FLASH_KEY"
.LASF202:
	.string	"XPD_SDIO_REG"
.LASF31:
	.string	"__tm_sec"
.LASF124:
	.string	"suboptarg"
.LASF38:
	.string	"__tm_yday"
.LASF62:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF175:
	.string	"MAC_CUSTOM_CRC"
.LASF25:
	.string	"_next"
.LASF212:
	.string	"/home/dieter/Development/esp-idf/components/efuse/esp32/esp_efuse_table.c"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF172:
	.string	"ESP_EFUSE_SECURE_VERSION"
.LASF209:
	.string	"ADC2_TP_HIGH"
.LASF20:
	.string	"__value"
.LASF132:
	.string	"bit_start"
.LASF106:
	.string	"_p5s"
.LASF185:
	.string	"DISABLE_JTAG"
.LASF183:
	.string	"DISABLE_DL_DECRYPT"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF110:
	.string	"_mblen_state"
.LASF93:
	.string	"char"
.LASF34:
	.string	"__tm_mday"
.LASF74:
	.string	"_sig_func"
.LASF116:
	.string	"_mbrtowc_state"
.LASF22:
	.string	"_flock_t"
.LASF17:
	.string	"__wch"
.LASF97:
	.string	"_iobs"
.LASF9:
	.string	"uint8_t"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF199:
	.string	"CHIP_CPU_FREQ_RATED"
.LASF85:
	.string	"_close"
.LASF64:
	.string	"__sdidinit"
.LASF52:
	.string	"__sFILE_fake"
.LASF150:
	.string	"ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT"
.LASF59:
	.string	"_stdin"
.LASF68:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF50:
	.string	"_base"
.LASF107:
	.string	"_freelist"
.LASF100:
	.string	"_mult"
.LASF24:
	.string	"__ULong"
.LASF215:
	.string	"efuse_block"
.LASF118:
	.string	"_wcrtomb_state"
.LASF54:
	.string	"_file"
.LASF125:
	.string	"exc_cause_table"
.LASF154:
	.string	"ESP_EFUSE_RD_DIS_BLK1"
.LASF155:
	.string	"ESP_EFUSE_RD_DIS_BLK2"
.LASF156:
	.string	"ESP_EFUSE_RD_DIS_BLK3"
.LASF137:
	.string	"ESP_EFUSE_MAC_CUSTOM_CRC"
.LASF131:
	.string	"esp_efuse_block_t"
.LASF67:
	.string	"__cleanup"
.LASF21:
	.string	"_mbstate_t"
.LASF103:
	.string	"_mprec"
.LASF39:
	.string	"__tm_isdst"
.LASF147:
	.string	"ESP_EFUSE_DISABLE_JTAG"
.LASF170:
	.string	"ESP_EFUSE_ADC1_TP_HIGH"
.LASF166:
	.string	"ESP_EFUSE_SDIO_FORCE"
.LASF148:
	.string	"ESP_EFUSE_CONSOLE_DEBUG_DISABLE"
.LASF198:
	.string	"CHIP_CPU_FREQ_LOW"
.LASF35:
	.string	"__tm_mon"
.LASF182:
	.string	"DISABLE_DL_ENCRYPT"
.LASF10:
	.string	"uint16_t"
.LASF75:
	.string	"_atexit0"
.LASF45:
	.string	"_atexit"
.LASF91:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"long int"
.LASF27:
	.string	"_sign"
.LASF164:
	.string	"ESP_EFUSE_XPD_SDIO_REG"
.LASF197:
	.string	"CHIP_VER_PKG"
.LASF161:
	.string	"ESP_EFUSE_CHIP_CPU_FREQ_RATED"
.LASF168:
	.string	"ESP_EFUSE_ADC1_TP_LOW"
.LASF160:
	.string	"ESP_EFUSE_CHIP_CPU_FREQ_LOW"
.LASF56:
	.string	"_data"
.LASF18:
	.string	"__wchb"
.LASF123:
	.string	"_global_impure_ptr"
.LASF36:
	.string	"__tm_year"
.LASF134:
	.string	"esp_efuse_desc_t"
.LASF162:
	.string	"ESP_EFUSE_CHIP_VER_REV1"
.LASF163:
	.string	"ESP_EFUSE_CHIP_VER_REV2"
.LASF130:
	.string	"EFUSE_BLK_MAX"
.LASF108:
	.string	"_misc_reent"
.LASF72:
	.string	"_localtime_buf"
.LASF143:
	.string	"ESP_EFUSE_ENCRYPT_CONFIG"
.LASF3:
	.string	"__uint8_t"
.LASF69:
	.string	"_cvtlen"
.LASF26:
	.string	"_maxwds"
.LASF113:
	.string	"_l64a_buf"
.LASF126:
	.string	"EFUSE_BLK0"
.LASF127:
	.string	"EFUSE_BLK1"
.LASF128:
	.string	"EFUSE_BLK2"
.LASF129:
	.string	"EFUSE_BLK3"
.LASF146:
	.string	"ESP_EFUSE_DISABLE_DL_CACHE"
.LASF210:
	.string	"SECURE_VERSION"
.LASF88:
	.string	"_blksize"
.LASF30:
	.string	"__tm"
.LASF165:
	.string	"ESP_EFUSE_SDIO_TIEH"
.LASF90:
	.string	"_lock"
.LASF138:
	.string	"ESP_EFUSE_MAC_CUSTOM"
.LASF23:
	.string	"long unsigned int"
.LASF195:
	.string	"CHIP_VER_DIS_APP_CPU"
.LASF96:
	.string	"_niobs"
.LASF211:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF144:
	.string	"ESP_EFUSE_DISABLE_DL_ENCRYPT"
.LASF145:
	.string	"ESP_EFUSE_DISABLE_DL_DECRYPT"
.LASF42:
	.string	"_dso_handle"
.LASF70:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF192:
	.string	"RD_DIS_BLK1"
.LASF114:
	.string	"_getdate_err"
.LASF194:
	.string	"RD_DIS_BLK3"
.LASF101:
	.string	"_add"
.LASF213:
	.string	"/home/dieter/Development/ProjektEi/build/efuse"
.LASF49:
	.string	"__sbuf"
.LASF95:
	.string	"_glue"
.LASF76:
	.string	"__sglue"
.LASF109:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbtowc_state"
.LASF66:
	.string	"_locale"
.LASF41:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF57:
	.string	"_reent"
.LASF5:
	.string	"short unsigned int"
.LASF43:
	.string	"_fntypes"
.LASF51:
	.string	"_size"
.LASF141:
	.string	"ESP_EFUSE_ABS_DONE_0"
.LASF14:
	.string	"_off_t"
.LASF87:
	.string	"_nbuf"
.LASF176:
	.string	"MAC_CUSTOM"
.LASF139:
	.string	"ESP_EFUSE_MAC_CUSTOM_VER"
.LASF65:
	.string	"_unspecified_locale_info"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF92:
	.string	"_flags2"
.LASF44:
	.string	"_is_cxa"
.LASF157:
	.string	"ESP_EFUSE_CHIP_VER_DIS_APP_CPU"
.LASF99:
	.string	"_seed"
.LASF102:
	.string	"_rand_next"
.LASF214:
	.string	"__locale_t"
.LASF193:
	.string	"RD_DIS_BLK2"
.LASF84:
	.string	"_seek"
.LASF178:
	.string	"SECURE_BOOT_KEY"
.LASF61:
	.string	"_stderr"
.LASF16:
	.string	"wint_t"
.LASF133:
	.string	"bit_count"
.LASF203:
	.string	"SDIO_TIEH"
.LASF120:
	.string	"__sf_fake_stdin"
.LASF140:
	.string	"ESP_EFUSE_SECURE_BOOT_KEY"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
