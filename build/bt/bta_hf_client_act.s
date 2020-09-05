	.file	"bta_hf_client_act.c"
	.text
.Ltext0:
	.comm	deinit_semaphore,4,4
.Letext0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/dm/include/bta_dm_int.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x281
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xc
	.4byte	.LASF77
	.4byte	.LASF78
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1a
	.4byte	0x56
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
	.byte	0x2d
	.4byte	0x4b
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0xcc
	.uleb128 0x7
	.4byte	0x8a
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x56
	.byte	0x4
	.2byte	0x1c2
	.4byte	0x1f4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x2e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x56
	.byte	0x4
	.2byte	0x6ec
	.4byte	0x22c
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x5
	.byte	0x58
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0x4f
	.4byte	0x22c
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x3
	.2byte	0x2b8
	.4byte	0x255
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xb
	.4byte	0xbc
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x3
	.2byte	0x2b9
	.4byte	0x26d
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xbc
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x4bc
	.4byte	0x237
	.uleb128 0x5
	.byte	0x3
	.4byte	deinit_semaphore
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF75:
	.string	"bd_addr_null"
.LASF68:
	.string	"BTM_PM_STS_PARK"
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF12:
	.string	"sizetype"
.LASF67:
	.string	"BTM_PM_STS_SNIFF"
.LASF16:
	.string	"UINT32"
.LASF5:
	.string	"__uint32_t"
.LASF30:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF24:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF9:
	.string	"uint8_t"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF28:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF7:
	.string	"long long int"
.LASF11:
	.string	"long int"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF15:
	.string	"UINT8"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF4:
	.string	"__uint8_t"
.LASF72:
	.string	"QueueHandle_t"
.LASF23:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF25:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF34:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF69:
	.string	"BTM_PM_STS_SSR"
.LASF73:
	.string	"SemaphoreHandle_t"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF77:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/hf_client/bta_hf_client_act.c"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF32:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF3:
	.string	"short unsigned int"
.LASF78:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF22:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF14:
	.string	"char"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF71:
	.string	"BTM_PM_STS_ERROR"
.LASF21:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF17:
	.string	"_Bool"
.LASF31:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF66:
	.string	"BTM_PM_STS_HOLD"
.LASF33:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF65:
	.string	"BTM_PM_STS_ACTIVE"
.LASF13:
	.string	"long unsigned int"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF64:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF27:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF76:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF18:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF20:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF29:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF19:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF70:
	.string	"BTM_PM_STS_PENDING"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF74:
	.string	"bd_addr_any"
.LASF26:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF79:
	.string	"deinit_semaphore"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
