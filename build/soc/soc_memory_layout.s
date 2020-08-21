	.file	"soc_memory_layout.c"
	.text
.Ltext0:
	.section	.reserved_memory_address,"aw",@progbits
	.align	4
	.type	reserved_region_rom_data, @object
	.size	reserved_region_rom_data, 8
reserved_region_rom_data:
	.word	1073405952
	.word	1073407712
	.align	4
	.type	reserved_region_rom_pro_data, @object
	.size	reserved_region_rom_pro_data, 8
reserved_region_rom_pro_data:
	.word	1073610752
	.word	1073611840
	.align	4
	.type	reserved_region_cpu0_cache, @object
	.size	reserved_region_cpu0_cache, 8
reserved_region_cpu0_cache:
	.word	1074200576
	.word	1074233344
	.global	soc_memory_region_count
	.section	.rodata.soc_memory_region_count,"a",@progbits
	.align	4
	.type	soc_memory_region_count, @object
	.size	soc_memory_region_count, 4
soc_memory_region_count:
	.word	43
	.global	soc_memory_regions
	.section	.rodata.soc_memory_regions,"a",@progbits
	.align	4
	.type	soc_memory_regions, @object
	.size	soc_memory_regions, 688
soc_memory_regions:
	.word	1073405952
	.word	8192
	.word	0
	.word	0
	.word	1073414144
	.word	32768
	.word	0
	.word	0
	.word	1073446912
	.word	32768
	.word	0
	.word	0
	.word	1073479680
	.word	8192
	.word	0
	.word	0
	.word	1073487872
	.word	8192
	.word	0
	.word	0
	.word	1073496064
	.word	8192
	.word	0
	.word	0
	.word	1073504256
	.word	8192
	.word	0
	.word	0
	.word	1073512448
	.word	8192
	.word	0
	.word	0
	.word	1073520640
	.word	8192
	.word	0
	.word	0
	.word	1073528832
	.word	8192
	.word	0
	.word	0
	.word	1073537024
	.word	8192
	.word	0
	.word	0
	.word	1073545216
	.word	8192
	.word	0
	.word	0
	.word	1073553408
	.word	8192
	.word	0
	.word	0
	.word	1073561600
	.word	8192
	.word	0
	.word	0
	.word	1073569792
	.word	8192
	.word	0
	.word	0
	.word	1073577984
	.word	8192
	.word	0
	.word	0
	.word	1073586176
	.word	8192
	.word	0
	.word	0
	.word	1073594368
	.word	8192
	.word	0
	.word	0
	.word	1073602560
	.word	8192
	.word	0
	.word	0
	.word	1073610752
	.word	16384
	.word	1
	.word	1074511872
	.word	1073627136
	.word	16384
	.word	1
	.word	1074495488
	.word	1073643520
	.word	32768
	.word	1
	.word	1074462720
	.word	1073676288
	.word	32768
	.word	1
	.word	1074429952
	.word	1073709056
	.word	16384
	.word	1
	.word	1074413568
	.word	1073725440
	.word	16384
	.word	1
	.word	1074397184
	.word	1074200576
	.word	32768
	.word	2
	.word	0
	.word	1074233344
	.word	32768
	.word	2
	.word	0
	.word	1074266112
	.word	8192
	.word	2
	.word	0
	.word	1074274304
	.word	8192
	.word	2
	.word	0
	.word	1074282496
	.word	8192
	.word	2
	.word	0
	.word	1074290688
	.word	8192
	.word	2
	.word	0
	.word	1074298880
	.word	8192
	.word	2
	.word	0
	.word	1074307072
	.word	8192
	.word	2
	.word	0
	.word	1074315264
	.word	8192
	.word	2
	.word	0
	.word	1074323456
	.word	8192
	.word	2
	.word	0
	.word	1074331648
	.word	8192
	.word	2
	.word	0
	.word	1074339840
	.word	8192
	.word	2
	.word	0
	.word	1074348032
	.word	8192
	.word	2
	.word	0
	.word	1074356224
	.word	8192
	.word	2
	.word	0
	.word	1074364416
	.word	8192
	.word	2
	.word	0
	.word	1074372608
	.word	8192
	.word	2
	.word	0
	.word	1074380800
	.word	8192
	.word	2
	.word	0
	.word	1074388992
	.word	8192
	.word	2
	.word	0
	.global	soc_memory_type_count
	.section	.rodata.soc_memory_type_count,"a",@progbits
	.align	4
	.type	soc_memory_type_count, @object
	.size	soc_memory_type_count, 4
soc_memory_type_count:
	.word	15
	.global	soc_memory_types
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"DRAM"
.LC1:
	.string	"D/IRAM"
.LC2:
	.string	"IRAM"
.LC3:
	.string	"PID2IRAM"
.LC4:
	.string	"PID3IRAM"
.LC5:
	.string	"PID4IRAM"
.LC6:
	.string	"PID5IRAM"
.LC7:
	.string	"PID6IRAM"
.LC8:
	.string	"PID7IRAM"
.LC9:
	.string	"PID2DRAM"
.LC10:
	.string	"PID3DRAM"
.LC11:
	.string	"PID4DRAM"
.LC12:
	.string	"PID5DRAM"
.LC13:
	.string	"PID6DRAM"
.LC14:
	.string	"PID7DRAM"
	.section	.rodata.soc_memory_types,"a",@progbits
	.align	4
	.type	soc_memory_types, @object
	.size	soc_memory_types, 300
soc_memory_types:
	.word	.LC0
	.word	4100
	.word	2058
	.word	0
	.byte	0
	.byte	0
	.zero	2
	.word	.LC1
	.word	0
	.word	6156
	.word	3
	.byte	1
	.byte	1
	.zero	2
	.word	.LC2
	.word	2051
	.word	0
	.word	0
	.byte	0
	.byte	0
	.zero	2
	.word	.LC3
	.word	2064
	.word	0
	.word	3
	.byte	0
	.byte	0
	.zero	2
	.word	.LC4
	.word	2080
	.word	0
	.word	3
	.byte	0
	.byte	0
	.zero	2
	.word	.LC5
	.word	2112
	.word	0
	.word	3
	.byte	0
	.byte	0
	.zero	2
	.word	.LC6
	.word	2176
	.word	0
	.word	3
	.byte	0
	.byte	0
	.zero	2
	.word	.LC7
	.word	2304
	.word	0
	.word	3
	.byte	0
	.byte	0
	.zero	2
	.word	.LC8
	.word	2560
	.word	0
	.word	3
	.byte	0
	.byte	0
	.zero	2
	.word	.LC9
	.word	2064
	.word	4
	.word	4098
	.byte	0
	.byte	0
	.zero	2
	.word	.LC10
	.word	2080
	.word	4
	.word	4098
	.byte	0
	.byte	0
	.zero	2
	.word	.LC11
	.word	2112
	.word	4
	.word	4098
	.byte	0
	.byte	0
	.zero	2
	.word	.LC12
	.word	2176
	.word	4
	.word	4098
	.byte	0
	.byte	0
	.zero	2
	.word	.LC13
	.word	2304
	.word	4
	.word	4098
	.byte	0
	.byte	0
	.zero	2
	.word	.LC14
	.word	2560
	.word	4
	.word	4098
	.byte	0
	.byte	0
	.zero	2
	.text
.Letext0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/soc_memory_layout.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x1
	.byte	0xd8
	.4byte	0x24
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x24
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x31
	.4byte	0x32
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0x94
	.uleb128 0x6
	.4byte	0x87
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa9
	.4byte	0x67
	.uleb128 0x7
	.byte	0x14
	.byte	0x4
	.byte	0x3b
	.4byte	0xe8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3c
	.4byte	0x8e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3d
	.4byte	0xe8
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3e
	.4byte	0xf8
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3f
	.4byte	0xf8
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.4byte	0x99
	.4byte	0xf8
	.uleb128 0xa
	.4byte	0x79
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x40
	.4byte	0xaf
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.byte	0x48
	.4byte	0x143
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4a
	.4byte	0xa4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x4b
	.4byte	0x19
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x4c
	.4byte	0x19
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4d
	.4byte	0xa4
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4e
	.4byte	0x10a
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0x56
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x58
	.4byte	0xa4
	.byte	0
	.uleb128 0xb
	.string	"end"
	.byte	0x4
	.byte	0x59
	.4byte	0xa4
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5a
	.4byte	0x14e
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x85
	.4byte	0x16f
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_cpu0_cache
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x9a
	.4byte	0x16f
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_pro_data
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x9f
	.4byte	0x16f
	.uleb128 0x5
	.byte	0x3
	.4byte	reserved_region_rom_data
	.uleb128 0x9
	.4byte	0xff
	.4byte	0x1bd
	.uleb128 0xa
	.4byte	0x79
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.byte	0x29
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	soc_memory_types
	.uleb128 0x6
	.4byte	0x1ad
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.byte	0x45
	.4byte	0x1e4
	.uleb128 0x5
	.byte	0x3
	.4byte	soc_memory_type_count
	.uleb128 0x6
	.4byte	0x19
	.uleb128 0x9
	.4byte	0x143
	.4byte	0x1f9
	.uleb128 0xa
	.4byte	0x79
	.byte	0x2a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.byte	0x4d
	.4byte	0x20a
	.uleb128 0x5
	.byte	0x3
	.4byte	soc_memory_regions
	.uleb128 0x6
	.4byte	0x1e9
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0x7e
	.4byte	0x1e4
	.uleb128 0x5
	.byte	0x3
	.4byte	soc_memory_region_count
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
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
.LASF28:
	.string	"reserved_region_cpu0_cache"
.LASF5:
	.string	"size_t"
.LASF9:
	.string	"__intptr_t"
.LASF17:
	.string	"caps"
.LASF30:
	.string	"reserved_region_rom_data"
.LASF31:
	.string	"soc_memory_types"
.LASF22:
	.string	"start"
.LASF29:
	.string	"reserved_region_rom_pro_data"
.LASF35:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"size"
.LASF12:
	.string	"long unsigned int"
.LASF19:
	.string	"startup_stack"
.LASF1:
	.string	"short unsigned int"
.LASF26:
	.string	"soc_memory_region_t"
.LASF34:
	.string	"soc_memory_region_count"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF32:
	.string	"soc_memory_type_count"
.LASF15:
	.string	"intptr_t"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF36:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/soc_memory_layout.c"
.LASF21:
	.string	"soc_memory_type_desc_t"
.LASF11:
	.string	"sizetype"
.LASF25:
	.string	"iram_address"
.LASF7:
	.string	"long long int"
.LASF16:
	.string	"name"
.LASF18:
	.string	"aliased_iram"
.LASF27:
	.string	"soc_reserved_region_t"
.LASF24:
	.string	"type"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF33:
	.string	"soc_memory_regions"
.LASF20:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
