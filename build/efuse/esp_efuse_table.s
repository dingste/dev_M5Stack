	.file	"esp_efuse_table.c"
	.text
.Ltext0:
	.global	ESP_EFUSE_SECURE_VERSION
	.section	.data.ESP_EFUSE_SECURE_VERSION,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_SECURE_VERSION, @object
	.size	ESP_EFUSE_SECURE_VERSION, 8
ESP_EFUSE_SECURE_VERSION:
	.word	SECURE_VERSION
	.word	0
	.global	ESP_EFUSE_ADC2_TP_HIGH
	.section	.data.ESP_EFUSE_ADC2_TP_HIGH,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ADC2_TP_HIGH, @object
	.size	ESP_EFUSE_ADC2_TP_HIGH, 8
ESP_EFUSE_ADC2_TP_HIGH:
	.word	ADC2_TP_HIGH
	.word	0
	.global	ESP_EFUSE_ADC1_TP_HIGH
	.section	.data.ESP_EFUSE_ADC1_TP_HIGH,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ADC1_TP_HIGH, @object
	.size	ESP_EFUSE_ADC1_TP_HIGH, 8
ESP_EFUSE_ADC1_TP_HIGH:
	.word	ADC1_TP_HIGH
	.word	0
	.global	ESP_EFUSE_ADC2_TP_LOW
	.section	.data.ESP_EFUSE_ADC2_TP_LOW,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ADC2_TP_LOW, @object
	.size	ESP_EFUSE_ADC2_TP_LOW, 8
ESP_EFUSE_ADC2_TP_LOW:
	.word	ADC2_TP_LOW
	.word	0
	.global	ESP_EFUSE_ADC1_TP_LOW
	.section	.data.ESP_EFUSE_ADC1_TP_LOW,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ADC1_TP_LOW, @object
	.size	ESP_EFUSE_ADC1_TP_LOW, 8
ESP_EFUSE_ADC1_TP_LOW:
	.word	ADC1_TP_LOW
	.word	0
	.global	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF
	.section	.data.ESP_EFUSE_ADC_VREF_AND_SDIO_DREF,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF, @object
	.size	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF, 8
ESP_EFUSE_ADC_VREF_AND_SDIO_DREF:
	.word	ADC_VREF_AND_SDIO_DREF
	.word	0
	.global	ESP_EFUSE_SDIO_FORCE
	.section	.data.ESP_EFUSE_SDIO_FORCE,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_SDIO_FORCE, @object
	.size	ESP_EFUSE_SDIO_FORCE, 8
ESP_EFUSE_SDIO_FORCE:
	.word	SDIO_FORCE
	.word	0
	.global	ESP_EFUSE_SDIO_TIEH
	.section	.data.ESP_EFUSE_SDIO_TIEH,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_SDIO_TIEH, @object
	.size	ESP_EFUSE_SDIO_TIEH, 8
ESP_EFUSE_SDIO_TIEH:
	.word	SDIO_TIEH
	.word	0
	.global	ESP_EFUSE_XPD_SDIO_REG
	.section	.data.ESP_EFUSE_XPD_SDIO_REG,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_XPD_SDIO_REG, @object
	.size	ESP_EFUSE_XPD_SDIO_REG, 8
ESP_EFUSE_XPD_SDIO_REG:
	.word	XPD_SDIO_REG
	.word	0
	.global	ESP_EFUSE_CHIP_VER_REV2
	.section	.data.ESP_EFUSE_CHIP_VER_REV2,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CHIP_VER_REV2, @object
	.size	ESP_EFUSE_CHIP_VER_REV2, 8
ESP_EFUSE_CHIP_VER_REV2:
	.word	CHIP_VER_REV2
	.word	0
	.global	ESP_EFUSE_CHIP_VER_REV1
	.section	.data.ESP_EFUSE_CHIP_VER_REV1,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CHIP_VER_REV1, @object
	.size	ESP_EFUSE_CHIP_VER_REV1, 8
ESP_EFUSE_CHIP_VER_REV1:
	.word	CHIP_VER_REV1
	.word	0
	.global	ESP_EFUSE_CHIP_CPU_FREQ_RATED
	.section	.data.ESP_EFUSE_CHIP_CPU_FREQ_RATED,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CHIP_CPU_FREQ_RATED, @object
	.size	ESP_EFUSE_CHIP_CPU_FREQ_RATED, 8
ESP_EFUSE_CHIP_CPU_FREQ_RATED:
	.word	CHIP_CPU_FREQ_RATED
	.word	0
	.global	ESP_EFUSE_CHIP_CPU_FREQ_LOW
	.section	.data.ESP_EFUSE_CHIP_CPU_FREQ_LOW,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CHIP_CPU_FREQ_LOW, @object
	.size	ESP_EFUSE_CHIP_CPU_FREQ_LOW, 8
ESP_EFUSE_CHIP_CPU_FREQ_LOW:
	.word	CHIP_CPU_FREQ_LOW
	.word	0
	.global	ESP_EFUSE_CHIP_VER_PKG
	.section	.data.ESP_EFUSE_CHIP_VER_PKG,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CHIP_VER_PKG, @object
	.size	ESP_EFUSE_CHIP_VER_PKG, 8
ESP_EFUSE_CHIP_VER_PKG:
	.word	CHIP_VER_PKG
	.word	0
	.global	ESP_EFUSE_CHIP_VER_DIS_BT
	.section	.data.ESP_EFUSE_CHIP_VER_DIS_BT,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CHIP_VER_DIS_BT, @object
	.size	ESP_EFUSE_CHIP_VER_DIS_BT, 8
ESP_EFUSE_CHIP_VER_DIS_BT:
	.word	CHIP_VER_DIS_BT
	.word	0
	.global	ESP_EFUSE_CHIP_VER_DIS_APP_CPU
	.section	.data.ESP_EFUSE_CHIP_VER_DIS_APP_CPU,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CHIP_VER_DIS_APP_CPU, @object
	.size	ESP_EFUSE_CHIP_VER_DIS_APP_CPU, 8
ESP_EFUSE_CHIP_VER_DIS_APP_CPU:
	.word	CHIP_VER_DIS_APP_CPU
	.word	0
	.global	ESP_EFUSE_RD_DIS_BLK3
	.section	.data.ESP_EFUSE_RD_DIS_BLK3,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_RD_DIS_BLK3, @object
	.size	ESP_EFUSE_RD_DIS_BLK3, 8
ESP_EFUSE_RD_DIS_BLK3:
	.word	RD_DIS_BLK3
	.word	0
	.global	ESP_EFUSE_RD_DIS_BLK2
	.section	.data.ESP_EFUSE_RD_DIS_BLK2,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_RD_DIS_BLK2, @object
	.size	ESP_EFUSE_RD_DIS_BLK2, 8
ESP_EFUSE_RD_DIS_BLK2:
	.word	RD_DIS_BLK2
	.word	0
	.global	ESP_EFUSE_RD_DIS_BLK1
	.section	.data.ESP_EFUSE_RD_DIS_BLK1,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_RD_DIS_BLK1, @object
	.size	ESP_EFUSE_RD_DIS_BLK1, 8
ESP_EFUSE_RD_DIS_BLK1:
	.word	RD_DIS_BLK1
	.word	0
	.global	ESP_EFUSE_WR_DIS_BLK3
	.section	.data.ESP_EFUSE_WR_DIS_BLK3,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_WR_DIS_BLK3, @object
	.size	ESP_EFUSE_WR_DIS_BLK3, 8
ESP_EFUSE_WR_DIS_BLK3:
	.word	WR_DIS_BLK3
	.word	0
	.global	ESP_EFUSE_WR_DIS_BLK2
	.section	.data.ESP_EFUSE_WR_DIS_BLK2,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_WR_DIS_BLK2, @object
	.size	ESP_EFUSE_WR_DIS_BLK2, 8
ESP_EFUSE_WR_DIS_BLK2:
	.word	WR_DIS_BLK2
	.word	0
	.global	ESP_EFUSE_WR_DIS_BLK1
	.section	.data.ESP_EFUSE_WR_DIS_BLK1,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_WR_DIS_BLK1, @object
	.size	ESP_EFUSE_WR_DIS_BLK1, 8
ESP_EFUSE_WR_DIS_BLK1:
	.word	WR_DIS_BLK1
	.word	0
	.global	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT
	.section	.data.ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, @object
	.size	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, 8
ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT:
	.word	WR_DIS_FLASH_CRYPT_CNT
	.word	0
	.global	ESP_EFUSE_FLASH_CRYPT_CNT
	.section	.data.ESP_EFUSE_FLASH_CRYPT_CNT,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_FLASH_CRYPT_CNT, @object
	.size	ESP_EFUSE_FLASH_CRYPT_CNT, 8
ESP_EFUSE_FLASH_CRYPT_CNT:
	.word	FLASH_CRYPT_CNT
	.word	0
	.global	ESP_EFUSE_CONSOLE_DEBUG_DISABLE
	.section	.data.ESP_EFUSE_CONSOLE_DEBUG_DISABLE,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_CONSOLE_DEBUG_DISABLE, @object
	.size	ESP_EFUSE_CONSOLE_DEBUG_DISABLE, 8
ESP_EFUSE_CONSOLE_DEBUG_DISABLE:
	.word	CONSOLE_DEBUG_DISABLE
	.word	0
	.global	ESP_EFUSE_DISABLE_JTAG
	.section	.data.ESP_EFUSE_DISABLE_JTAG,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_DISABLE_JTAG, @object
	.size	ESP_EFUSE_DISABLE_JTAG, 8
ESP_EFUSE_DISABLE_JTAG:
	.word	DISABLE_JTAG
	.word	0
	.global	ESP_EFUSE_DISABLE_DL_CACHE
	.section	.data.ESP_EFUSE_DISABLE_DL_CACHE,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_DISABLE_DL_CACHE, @object
	.size	ESP_EFUSE_DISABLE_DL_CACHE, 8
ESP_EFUSE_DISABLE_DL_CACHE:
	.word	DISABLE_DL_CACHE
	.word	0
	.global	ESP_EFUSE_DISABLE_DL_DECRYPT
	.section	.data.ESP_EFUSE_DISABLE_DL_DECRYPT,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_DISABLE_DL_DECRYPT, @object
	.size	ESP_EFUSE_DISABLE_DL_DECRYPT, 8
ESP_EFUSE_DISABLE_DL_DECRYPT:
	.word	DISABLE_DL_DECRYPT
	.word	0
	.global	ESP_EFUSE_DISABLE_DL_ENCRYPT
	.section	.data.ESP_EFUSE_DISABLE_DL_ENCRYPT,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_DISABLE_DL_ENCRYPT, @object
	.size	ESP_EFUSE_DISABLE_DL_ENCRYPT, 8
ESP_EFUSE_DISABLE_DL_ENCRYPT:
	.word	DISABLE_DL_ENCRYPT
	.word	0
	.global	ESP_EFUSE_ENCRYPT_CONFIG
	.section	.data.ESP_EFUSE_ENCRYPT_CONFIG,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ENCRYPT_CONFIG, @object
	.size	ESP_EFUSE_ENCRYPT_CONFIG, 8
ESP_EFUSE_ENCRYPT_CONFIG:
	.word	ENCRYPT_CONFIG
	.word	0
	.global	ESP_EFUSE_ENCRYPT_FLASH_KEY
	.section	.data.ESP_EFUSE_ENCRYPT_FLASH_KEY,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ENCRYPT_FLASH_KEY, @object
	.size	ESP_EFUSE_ENCRYPT_FLASH_KEY, 8
ESP_EFUSE_ENCRYPT_FLASH_KEY:
	.word	ENCRYPT_FLASH_KEY
	.word	0
	.global	ESP_EFUSE_ABS_DONE_0
	.section	.data.ESP_EFUSE_ABS_DONE_0,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_ABS_DONE_0, @object
	.size	ESP_EFUSE_ABS_DONE_0, 8
ESP_EFUSE_ABS_DONE_0:
	.word	ABS_DONE_0
	.word	0
	.global	ESP_EFUSE_SECURE_BOOT_KEY
	.section	.data.ESP_EFUSE_SECURE_BOOT_KEY,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_SECURE_BOOT_KEY, @object
	.size	ESP_EFUSE_SECURE_BOOT_KEY, 8
ESP_EFUSE_SECURE_BOOT_KEY:
	.word	SECURE_BOOT_KEY
	.word	0
	.global	ESP_EFUSE_MAC_CUSTOM_VER
	.section	.data.ESP_EFUSE_MAC_CUSTOM_VER,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_MAC_CUSTOM_VER, @object
	.size	ESP_EFUSE_MAC_CUSTOM_VER, 8
ESP_EFUSE_MAC_CUSTOM_VER:
	.word	MAC_CUSTOM_VER
	.word	0
	.global	ESP_EFUSE_MAC_CUSTOM
	.section	.data.ESP_EFUSE_MAC_CUSTOM,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_MAC_CUSTOM, @object
	.size	ESP_EFUSE_MAC_CUSTOM, 8
ESP_EFUSE_MAC_CUSTOM:
	.word	MAC_CUSTOM
	.word	0
	.global	ESP_EFUSE_MAC_CUSTOM_CRC
	.section	.data.ESP_EFUSE_MAC_CUSTOM_CRC,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_MAC_CUSTOM_CRC, @object
	.size	ESP_EFUSE_MAC_CUSTOM_CRC, 8
ESP_EFUSE_MAC_CUSTOM_CRC:
	.word	MAC_CUSTOM_CRC
	.word	0
	.global	ESP_EFUSE_MAC_FACTORY_CRC
	.section	.data.ESP_EFUSE_MAC_FACTORY_CRC,"aw",@progbits
	.align	4
	.type	ESP_EFUSE_MAC_FACTORY_CRC, @object
	.size	ESP_EFUSE_MAC_FACTORY_CRC, 8
ESP_EFUSE_MAC_FACTORY_CRC:
	.word	MAC_FACTORY_CRC
	.word	0
	.global	ESP_EFUSE_MAC_FACTORY
	.section	.data.ESP_EFUSE_MAC_FACTORY,"aw",@progbits
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
	.section	.rodata.SECURE_VERSION,"a",@progbits
	.align	4
	.type	SECURE_VERSION, @object
	.size	SECURE_VERSION, 4
SECURE_VERSION:
	.byte	3
	.byte	-128
	.short	32
	.section	.rodata.ADC2_TP_HIGH,"a",@progbits
	.align	4
	.type	ADC2_TP_HIGH, @object
	.size	ADC2_TP_HIGH, 4
ADC2_TP_HIGH:
	.byte	3
	.byte	119
	.short	9
	.section	.rodata.ADC1_TP_HIGH,"a",@progbits
	.align	4
	.type	ADC1_TP_HIGH, @object
	.size	ADC1_TP_HIGH, 4
ADC1_TP_HIGH:
	.byte	3
	.byte	103
	.short	9
	.section	.rodata.ADC2_TP_LOW,"a",@progbits
	.align	4
	.type	ADC2_TP_LOW, @object
	.size	ADC2_TP_LOW, 4
ADC2_TP_LOW:
	.byte	3
	.byte	112
	.short	7
	.section	.rodata.ADC1_TP_LOW,"a",@progbits
	.align	4
	.type	ADC1_TP_LOW, @object
	.size	ADC1_TP_LOW, 4
ADC1_TP_LOW:
	.byte	3
	.byte	96
	.short	7
	.section	.rodata.ADC_VREF_AND_SDIO_DREF,"a",@progbits
	.align	4
	.type	ADC_VREF_AND_SDIO_DREF, @object
	.size	ADC_VREF_AND_SDIO_DREF, 4
ADC_VREF_AND_SDIO_DREF:
	.byte	0
	.byte	-120
	.short	6
	.section	.rodata.SDIO_FORCE,"a",@progbits
	.align	4
	.type	SDIO_FORCE, @object
	.size	SDIO_FORCE, 4
SDIO_FORCE:
	.byte	0
	.byte	-112
	.short	1
	.section	.rodata.SDIO_TIEH,"a",@progbits
	.align	4
	.type	SDIO_TIEH, @object
	.size	SDIO_TIEH, 4
SDIO_TIEH:
	.byte	0
	.byte	-113
	.short	1
	.section	.rodata.XPD_SDIO_REG,"a",@progbits
	.align	4
	.type	XPD_SDIO_REG, @object
	.size	XPD_SDIO_REG, 4
XPD_SDIO_REG:
	.byte	0
	.byte	-114
	.short	1
	.section	.rodata.CHIP_VER_REV2,"a",@progbits
	.align	4
	.type	CHIP_VER_REV2, @object
	.size	CHIP_VER_REV2, 4
CHIP_VER_REV2:
	.byte	0
	.byte	-76
	.short	1
	.section	.rodata.CHIP_VER_REV1,"a",@progbits
	.align	4
	.type	CHIP_VER_REV1, @object
	.size	CHIP_VER_REV1, 4
CHIP_VER_REV1:
	.byte	0
	.byte	111
	.short	1
	.section	.rodata.CHIP_CPU_FREQ_RATED,"a",@progbits
	.align	4
	.type	CHIP_CPU_FREQ_RATED, @object
	.size	CHIP_CPU_FREQ_RATED, 4
CHIP_CPU_FREQ_RATED:
	.byte	0
	.byte	109
	.short	1
	.section	.rodata.CHIP_CPU_FREQ_LOW,"a",@progbits
	.align	4
	.type	CHIP_CPU_FREQ_LOW, @object
	.size	CHIP_CPU_FREQ_LOW, 4
CHIP_CPU_FREQ_LOW:
	.byte	0
	.byte	108
	.short	1
	.section	.rodata.CHIP_VER_PKG,"a",@progbits
	.align	4
	.type	CHIP_VER_PKG, @object
	.size	CHIP_VER_PKG, 4
CHIP_VER_PKG:
	.byte	0
	.byte	105
	.short	3
	.section	.rodata.CHIP_VER_DIS_BT,"a",@progbits
	.align	4
	.type	CHIP_VER_DIS_BT, @object
	.size	CHIP_VER_DIS_BT, 4
CHIP_VER_DIS_BT:
	.byte	0
	.byte	97
	.short	1
	.section	.rodata.CHIP_VER_DIS_APP_CPU,"a",@progbits
	.align	4
	.type	CHIP_VER_DIS_APP_CPU, @object
	.size	CHIP_VER_DIS_APP_CPU, 4
CHIP_VER_DIS_APP_CPU:
	.byte	0
	.byte	96
	.short	1
	.section	.rodata.RD_DIS_BLK3,"a",@progbits
	.align	4
	.type	RD_DIS_BLK3, @object
	.size	RD_DIS_BLK3, 4
RD_DIS_BLK3:
	.byte	0
	.byte	18
	.short	1
	.section	.rodata.RD_DIS_BLK2,"a",@progbits
	.align	4
	.type	RD_DIS_BLK2, @object
	.size	RD_DIS_BLK2, 4
RD_DIS_BLK2:
	.byte	0
	.byte	17
	.short	1
	.section	.rodata.RD_DIS_BLK1,"a",@progbits
	.align	4
	.type	RD_DIS_BLK1, @object
	.size	RD_DIS_BLK1, 4
RD_DIS_BLK1:
	.byte	0
	.byte	16
	.short	1
	.section	.rodata.WR_DIS_BLK3,"a",@progbits
	.align	4
	.type	WR_DIS_BLK3, @object
	.size	WR_DIS_BLK3, 4
WR_DIS_BLK3:
	.byte	0
	.byte	9
	.short	1
	.section	.rodata.WR_DIS_BLK2,"a",@progbits
	.align	4
	.type	WR_DIS_BLK2, @object
	.size	WR_DIS_BLK2, 4
WR_DIS_BLK2:
	.byte	0
	.byte	8
	.short	1
	.section	.rodata.WR_DIS_BLK1,"a",@progbits
	.align	4
	.type	WR_DIS_BLK1, @object
	.size	WR_DIS_BLK1, 4
WR_DIS_BLK1:
	.byte	0
	.byte	7
	.short	1
	.section	.rodata.WR_DIS_FLASH_CRYPT_CNT,"a",@progbits
	.align	4
	.type	WR_DIS_FLASH_CRYPT_CNT, @object
	.size	WR_DIS_FLASH_CRYPT_CNT, 4
WR_DIS_FLASH_CRYPT_CNT:
	.byte	0
	.byte	2
	.short	1
	.section	.rodata.FLASH_CRYPT_CNT,"a",@progbits
	.align	4
	.type	FLASH_CRYPT_CNT, @object
	.size	FLASH_CRYPT_CNT, 4
FLASH_CRYPT_CNT:
	.byte	0
	.byte	20
	.short	7
	.section	.rodata.CONSOLE_DEBUG_DISABLE,"a",@progbits
	.align	4
	.type	CONSOLE_DEBUG_DISABLE, @object
	.size	CONSOLE_DEBUG_DISABLE, 4
CONSOLE_DEBUG_DISABLE:
	.byte	0
	.byte	-62
	.short	1
	.section	.rodata.DISABLE_JTAG,"a",@progbits
	.align	4
	.type	DISABLE_JTAG, @object
	.size	DISABLE_JTAG, 4
DISABLE_JTAG:
	.byte	0
	.byte	-58
	.short	1
	.section	.rodata.DISABLE_DL_CACHE,"a",@progbits
	.align	4
	.type	DISABLE_DL_CACHE, @object
	.size	DISABLE_DL_CACHE, 4
DISABLE_DL_CACHE:
	.byte	0
	.byte	-55
	.short	1
	.section	.rodata.DISABLE_DL_DECRYPT,"a",@progbits
	.align	4
	.type	DISABLE_DL_DECRYPT, @object
	.size	DISABLE_DL_DECRYPT, 4
DISABLE_DL_DECRYPT:
	.byte	0
	.byte	-56
	.short	1
	.section	.rodata.DISABLE_DL_ENCRYPT,"a",@progbits
	.align	4
	.type	DISABLE_DL_ENCRYPT, @object
	.size	DISABLE_DL_ENCRYPT, 4
DISABLE_DL_ENCRYPT:
	.byte	0
	.byte	-57
	.short	1
	.section	.rodata.ENCRYPT_CONFIG,"a",@progbits
	.align	4
	.type	ENCRYPT_CONFIG, @object
	.size	ENCRYPT_CONFIG, 4
ENCRYPT_CONFIG:
	.byte	0
	.byte	-68
	.short	4
	.section	.rodata.ENCRYPT_FLASH_KEY,"a",@progbits
	.align	4
	.type	ENCRYPT_FLASH_KEY, @object
	.size	ENCRYPT_FLASH_KEY, 4
ENCRYPT_FLASH_KEY:
	.byte	1
	.byte	0
	.short	192
	.section	.rodata.ABS_DONE_0,"a",@progbits
	.align	4
	.type	ABS_DONE_0, @object
	.size	ABS_DONE_0, 4
ABS_DONE_0:
	.byte	0
	.byte	-60
	.short	1
	.section	.rodata.SECURE_BOOT_KEY,"a",@progbits
	.align	4
	.type	SECURE_BOOT_KEY, @object
	.size	SECURE_BOOT_KEY, 4
SECURE_BOOT_KEY:
	.byte	2
	.byte	0
	.short	192
	.section	.rodata.MAC_CUSTOM_VER,"a",@progbits
	.align	4
	.type	MAC_CUSTOM_VER, @object
	.size	MAC_CUSTOM_VER, 4
MAC_CUSTOM_VER:
	.byte	3
	.byte	-72
	.short	8
	.section	.rodata.MAC_CUSTOM,"a",@progbits
	.align	4
	.type	MAC_CUSTOM, @object
	.size	MAC_CUSTOM, 4
MAC_CUSTOM:
	.byte	3
	.byte	8
	.short	48
	.section	.rodata.MAC_CUSTOM_CRC,"a",@progbits
	.align	4
	.type	MAC_CUSTOM_CRC, @object
	.size	MAC_CUSTOM_CRC, 4
MAC_CUSTOM_CRC:
	.byte	3
	.byte	0
	.short	8
	.section	.rodata.MAC_FACTORY_CRC,"a",@progbits
	.align	4
	.type	MAC_FACTORY_CRC, @object
	.size	MAC_FACTORY_CRC, 4
MAC_FACTORY_CRC:
	.byte	0
	.byte	80
	.short	8
	.section	.rodata.MAC_FACTORY,"a",@progbits
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
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/include/esp_efuse.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/esp32/esp_efuse_table.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x735
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x12
	.4byte	0x2f
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
	.byte	0x16
	.4byte	0x48
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
	.byte	0x15
	.4byte	0x24
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x21
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.byte	0x3
	.byte	0x23
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x28
	.4byte	0x9d
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.byte	0x36
	.4byte	0xfd
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x3
	.byte	0x37
	.4byte	0xc2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x38
	.4byte	0x6b
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x39
	.4byte	0x76
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x3a
	.4byte	0xcd
	.uleb128 0xa
	.4byte	0xfd
	.4byte	0x118
	.uleb128 0xb
	.4byte	0x88
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x4
	.byte	0x25
	.4byte	0x129
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_FACTORY
	.uleb128 0xd
	.4byte	0x108
	.uleb128 0xa
	.4byte	0xfd
	.4byte	0x13e
	.uleb128 0xb
	.4byte	0x88
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2e
	.4byte	0x14f
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_FACTORY_CRC
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x32
	.4byte	0x165
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_CUSTOM_CRC
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0x36
	.4byte	0x17b
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_CUSTOM
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x4
	.byte	0x3a
	.4byte	0x191
	.uleb128 0x5
	.byte	0x3
	.4byte	MAC_CUSTOM_VER
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3e
	.4byte	0x1a7
	.uleb128 0x5
	.byte	0x3
	.4byte	SECURE_BOOT_KEY
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0x42
	.4byte	0x1bd
	.uleb128 0x5
	.byte	0x3
	.4byte	ABS_DONE_0
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x4
	.byte	0x46
	.4byte	0x1d3
	.uleb128 0x5
	.byte	0x3
	.4byte	ENCRYPT_FLASH_KEY
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4a
	.4byte	0x1e9
	.uleb128 0x5
	.byte	0x3
	.4byte	ENCRYPT_CONFIG
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4e
	.4byte	0x1ff
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_DL_ENCRYPT
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0x52
	.4byte	0x215
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_DL_DECRYPT
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x4
	.byte	0x56
	.4byte	0x22b
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_DL_CACHE
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x4
	.byte	0x5a
	.4byte	0x241
	.uleb128 0x5
	.byte	0x3
	.4byte	DISABLE_JTAG
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5e
	.4byte	0x257
	.uleb128 0x5
	.byte	0x3
	.4byte	CONSOLE_DEBUG_DISABLE
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x4
	.byte	0x62
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x3
	.4byte	FLASH_CRYPT_CNT
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x4
	.byte	0x66
	.4byte	0x283
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_FLASH_CRYPT_CNT
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x4
	.byte	0x6a
	.4byte	0x299
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_BLK1
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x4
	.byte	0x6e
	.4byte	0x2af
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_BLK2
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0x72
	.4byte	0x2c5
	.uleb128 0x5
	.byte	0x3
	.4byte	WR_DIS_BLK3
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x4
	.byte	0x76
	.4byte	0x2db
	.uleb128 0x5
	.byte	0x3
	.4byte	RD_DIS_BLK1
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x4
	.byte	0x7a
	.4byte	0x2f1
	.uleb128 0x5
	.byte	0x3
	.4byte	RD_DIS_BLK2
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7e
	.4byte	0x307
	.uleb128 0x5
	.byte	0x3
	.4byte	RD_DIS_BLK3
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x4
	.byte	0x82
	.4byte	0x31d
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_DIS_APP_CPU
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x4
	.byte	0x86
	.4byte	0x333
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_DIS_BT
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x4
	.byte	0x8a
	.4byte	0x349
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_PKG
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x4
	.byte	0x8e
	.4byte	0x35f
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_CPU_FREQ_LOW
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x4
	.byte	0x92
	.4byte	0x375
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_CPU_FREQ_RATED
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x4
	.byte	0x96
	.4byte	0x38b
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_REV1
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x4
	.byte	0x9a
	.4byte	0x3a1
	.uleb128 0x5
	.byte	0x3
	.4byte	CHIP_VER_REV2
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x4
	.byte	0x9e
	.4byte	0x3b7
	.uleb128 0x5
	.byte	0x3
	.4byte	XPD_SDIO_REG
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x4
	.byte	0xa2
	.4byte	0x3cd
	.uleb128 0x5
	.byte	0x3
	.4byte	SDIO_TIEH
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x4
	.byte	0xa6
	.4byte	0x3e3
	.uleb128 0x5
	.byte	0x3
	.4byte	SDIO_FORCE
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x4
	.byte	0xaa
	.4byte	0x3f9
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC_VREF_AND_SDIO_DREF
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x4
	.byte	0xae
	.4byte	0x40f
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC1_TP_LOW
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x4
	.byte	0xb2
	.4byte	0x425
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC2_TP_LOW
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x4
	.byte	0xb6
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC1_TP_HIGH
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x4
	.byte	0xba
	.4byte	0x451
	.uleb128 0x5
	.byte	0x3
	.4byte	ADC2_TP_HIGH
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x4
	.byte	0xbe
	.4byte	0x467
	.uleb128 0x5
	.byte	0x3
	.4byte	SECURE_VERSION
	.uleb128 0xd
	.4byte	0x12e
	.uleb128 0xa
	.4byte	0x47c
	.4byte	0x47c
	.uleb128 0xb
	.4byte	0x88
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x482
	.uleb128 0xd
	.4byte	0xfd
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc6
	.4byte	0x46c
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_FACTORY
	.uleb128 0xa
	.4byte	0x47c
	.4byte	0x4a8
	.uleb128 0xb
	.4byte	0x88
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x4
	.byte	0xd0
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_FACTORY_CRC
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x4
	.byte	0xd5
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_CUSTOM_CRC
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x4
	.byte	0xda
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_CUSTOM
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x4
	.byte	0xdf
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_MAC_CUSTOM_VER
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x4
	.byte	0xe4
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_SECURE_BOOT_KEY
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x4
	.byte	0xe9
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ABS_DONE_0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x4
	.byte	0xee
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ENCRYPT_FLASH_KEY
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x4
	.byte	0xf3
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ENCRYPT_CONFIG
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x4
	.byte	0xf8
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_DL_ENCRYPT
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x4
	.byte	0xfd
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_DL_DECRYPT
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x102
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_DL_CACHE
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x107
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_DISABLE_JTAG
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x10c
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CONSOLE_DEBUG_DISABLE
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x111
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_FLASH_CRYPT_CNT
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x116
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x11b
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_BLK1
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x120
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_BLK2
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x125
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_WR_DIS_BLK3
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x12a
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_RD_DIS_BLK1
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x12f
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_RD_DIS_BLK2
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x134
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_RD_DIS_BLK3
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x139
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_DIS_APP_CPU
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x13e
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_DIS_BT
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x143
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_PKG
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x148
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_CPU_FREQ_LOW
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x14d
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_CPU_FREQ_RATED
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x152
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_REV1
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x157
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_CHIP_VER_REV2
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x15c
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_XPD_SDIO_REG
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x161
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_SDIO_TIEH
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x166
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_SDIO_FORCE
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x16b
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC_VREF_AND_SDIO_DREF
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x170
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC1_TP_LOW
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x175
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC2_TP_LOW
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x17a
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC1_TP_HIGH
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x17f
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	ESP_EFUSE_ADC2_TP_HIGH
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x184
	.4byte	0x498
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
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
.LASF54:
	.string	"SDIO_FORCE"
.LASF91:
	.string	"ESP_EFUSE_SDIO_TIEH"
.LASF95:
	.string	"ESP_EFUSE_ADC2_TP_LOW"
.LASF92:
	.string	"ESP_EFUSE_SDIO_FORCE"
.LASF57:
	.string	"ADC2_TP_LOW"
.LASF28:
	.string	"SECURE_BOOT_KEY"
.LASF88:
	.string	"ESP_EFUSE_CHIP_VER_REV1"
.LASF89:
	.string	"ESP_EFUSE_CHIP_VER_REV2"
.LASF102:
	.string	"efuse_block"
.LASF35:
	.string	"DISABLE_JTAG"
.LASF12:
	.string	"sizetype"
.LASF65:
	.string	"ESP_EFUSE_MAC_CUSTOM_VER"
.LASF30:
	.string	"ENCRYPT_FLASH_KEY"
.LASF68:
	.string	"ESP_EFUSE_ENCRYPT_FLASH_KEY"
.LASF50:
	.string	"CHIP_VER_REV1"
.LASF46:
	.string	"CHIP_VER_DIS_BT"
.LASF4:
	.string	"__uint16_t"
.LASF62:
	.string	"ESP_EFUSE_MAC_FACTORY_CRC"
.LASF86:
	.string	"ESP_EFUSE_CHIP_CPU_FREQ_LOW"
.LASF45:
	.string	"CHIP_VER_DIS_APP_CPU"
.LASF9:
	.string	"uint8_t"
.LASF76:
	.string	"ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT"
.LASF32:
	.string	"DISABLE_DL_ENCRYPT"
.LASF61:
	.string	"ESP_EFUSE_MAC_FACTORY"
.LASF23:
	.string	"MAC_FACTORY"
.LASF21:
	.string	"bit_count"
.LASF33:
	.string	"DISABLE_DL_DECRYPT"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"ABS_DONE_0"
.LASF7:
	.string	"long long int"
.LASF39:
	.string	"WR_DIS_BLK1"
.LASF40:
	.string	"WR_DIS_BLK2"
.LASF41:
	.string	"WR_DIS_BLK3"
.LASF48:
	.string	"CHIP_CPU_FREQ_LOW"
.LASF53:
	.string	"SDIO_TIEH"
.LASF87:
	.string	"ESP_EFUSE_CHIP_CPU_FREQ_RATED"
.LASF25:
	.string	"MAC_CUSTOM_CRC"
.LASF74:
	.string	"ESP_EFUSE_CONSOLE_DEBUG_DISABLE"
.LASF71:
	.string	"ESP_EFUSE_DISABLE_DL_DECRYPT"
.LASF55:
	.string	"ADC_VREF_AND_SDIO_DREF"
.LASF101:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/efuse"
.LASF22:
	.string	"esp_efuse_desc_t"
.LASF42:
	.string	"RD_DIS_BLK1"
.LASF64:
	.string	"ESP_EFUSE_MAC_CUSTOM"
.LASF1:
	.string	"unsigned char"
.LASF81:
	.string	"ESP_EFUSE_RD_DIS_BLK2"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF100:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/esp32/esp_efuse_table.c"
.LASF6:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF20:
	.string	"bit_start"
.LASF13:
	.string	"long unsigned int"
.LASF58:
	.string	"ADC1_TP_HIGH"
.LASF98:
	.string	"ESP_EFUSE_SECURE_VERSION"
.LASF15:
	.string	"EFUSE_BLK0"
.LASF18:
	.string	"EFUSE_BLK3"
.LASF47:
	.string	"CHIP_VER_PKG"
.LASF26:
	.string	"MAC_CUSTOM"
.LASF17:
	.string	"EFUSE_BLK2"
.LASF16:
	.string	"EFUSE_BLK1"
.LASF59:
	.string	"ADC2_TP_HIGH"
.LASF94:
	.string	"ESP_EFUSE_ADC1_TP_LOW"
.LASF90:
	.string	"ESP_EFUSE_XPD_SDIO_REG"
.LASF14:
	.string	"char"
.LASF11:
	.string	"long int"
.LASF36:
	.string	"CONSOLE_DEBUG_DISABLE"
.LASF51:
	.string	"CHIP_VER_REV2"
.LASF5:
	.string	"short unsigned int"
.LASF67:
	.string	"ESP_EFUSE_ABS_DONE_0"
.LASF66:
	.string	"ESP_EFUSE_SECURE_BOOT_KEY"
.LASF80:
	.string	"ESP_EFUSE_RD_DIS_BLK1"
.LASF34:
	.string	"DISABLE_DL_CACHE"
.LASF82:
	.string	"ESP_EFUSE_RD_DIS_BLK3"
.LASF56:
	.string	"ADC1_TP_LOW"
.LASF43:
	.string	"RD_DIS_BLK2"
.LASF44:
	.string	"RD_DIS_BLK3"
.LASF19:
	.string	"esp_efuse_block_t"
.LASF49:
	.string	"CHIP_CPU_FREQ_RATED"
.LASF24:
	.string	"MAC_FACTORY_CRC"
.LASF69:
	.string	"ESP_EFUSE_ENCRYPT_CONFIG"
.LASF63:
	.string	"ESP_EFUSE_MAC_CUSTOM_CRC"
.LASF52:
	.string	"XPD_SDIO_REG"
.LASF72:
	.string	"ESP_EFUSE_DISABLE_DL_CACHE"
.LASF37:
	.string	"FLASH_CRYPT_CNT"
.LASF38:
	.string	"WR_DIS_FLASH_CRYPT_CNT"
.LASF93:
	.string	"ESP_EFUSE_ADC_VREF_AND_SDIO_DREF"
.LASF27:
	.string	"MAC_CUSTOM_VER"
.LASF77:
	.string	"ESP_EFUSE_WR_DIS_BLK1"
.LASF78:
	.string	"ESP_EFUSE_WR_DIS_BLK2"
.LASF79:
	.string	"ESP_EFUSE_WR_DIS_BLK3"
.LASF83:
	.string	"ESP_EFUSE_CHIP_VER_DIS_APP_CPU"
.LASF75:
	.string	"ESP_EFUSE_FLASH_CRYPT_CNT"
.LASF84:
	.string	"ESP_EFUSE_CHIP_VER_DIS_BT"
.LASF31:
	.string	"ENCRYPT_CONFIG"
.LASF70:
	.string	"ESP_EFUSE_DISABLE_DL_ENCRYPT"
.LASF99:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF96:
	.string	"ESP_EFUSE_ADC1_TP_HIGH"
.LASF85:
	.string	"ESP_EFUSE_CHIP_VER_PKG"
.LASF73:
	.string	"ESP_EFUSE_DISABLE_JTAG"
.LASF97:
	.string	"ESP_EFUSE_ADC2_TP_HIGH"
.LASF3:
	.string	"__uint8_t"
.LASF60:
	.string	"SECURE_VERSION"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
