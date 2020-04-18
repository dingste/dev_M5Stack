	.file	"xtensa_perfmon_masks.c"
	.text
.Ltext0:
	.global	xtensa_perfmon_select_mask_all
	.section	.rodata.xtensa_perfmon_select_mask_all,"a"
	.align	4
	.type	xtensa_perfmon_select_mask_all, @object
	.size	xtensa_perfmon_select_mask_all, 944
xtensa_perfmon_select_mask_all:
	.word	0
	.word	1
	.word	1
	.word	1
	.word	2
	.word	1
	.word	2
	.word	2
	.word	2
	.word	4
	.word	2
	.word	8
	.word	2
	.word	16
	.word	2
	.word	32
	.word	2
	.word	64
	.word	2
	.word	128
	.word	2
	.word	256
	.word	2
	.word	1024
	.word	2
	.word	2048
	.word	2
	.word	32768
	.word	3
	.word	2
	.word	3
	.word	4
	.word	3
	.word	8
	.word	3
	.word	16
	.word	3
	.word	32
	.word	3
	.word	64
	.word	3
	.word	128
	.word	3
	.word	256
	.word	4
	.word	1
	.word	4
	.word	2
	.word	4
	.word	4
	.word	4
	.word	8
	.word	4
	.word	16
	.word	4
	.word	32
	.word	4
	.word	64
	.word	4
	.word	128
	.word	4
	.word	256
	.word	5
	.word	1
	.word	5
	.word	2
	.word	5
	.word	4
	.word	5
	.word	8
	.word	5
	.word	16
	.word	5
	.word	32
	.word	5
	.word	64
	.word	5
	.word	128
	.word	5
	.word	256
	.word	6
	.word	1
	.word	6
	.word	4
	.word	6
	.word	8
	.word	6
	.word	16
	.word	6
	.word	32
	.word	6
	.word	64
	.word	6
	.word	128
	.word	6
	.word	256
	.word	7
	.word	1
	.word	7
	.word	2
	.word	7
	.word	4
	.word	7
	.word	8
	.word	8
	.word	1
	.word	8
	.word	2
	.word	8
	.word	4
	.word	8
	.word	8
	.word	9
	.word	1
	.word	9
	.word	2
	.word	9
	.word	4
	.word	9
	.word	8
	.word	10
	.word	1
	.word	10
	.word	2
	.word	10
	.word	4
	.word	10
	.word	8
	.word	13
	.word	1
	.word	13
	.word	2
	.word	13
	.word	4
	.word	13
	.word	8
	.word	16
	.word	1
	.word	16
	.word	2
	.word	16
	.word	4
	.word	16
	.word	8
	.word	11
	.word	1
	.word	11
	.word	2
	.word	11
	.word	4
	.word	11
	.word	8
	.word	14
	.word	1
	.word	14
	.word	2
	.word	14
	.word	4
	.word	14
	.word	8
	.word	17
	.word	1
	.word	17
	.word	2
	.word	17
	.word	4
	.word	17
	.word	8
	.word	12
	.word	1
	.word	15
	.word	1
	.word	18
	.word	1
	.word	22
	.word	1
	.word	22
	.word	2
	.word	22
	.word	4
	.word	22
	.word	8
	.word	22
	.word	16
	.word	22
	.word	32
	.word	23
	.word	1
	.word	23
	.word	2
	.word	24
	.word	1
	.word	24
	.word	2
	.word	26
	.word	1
	.word	26
	.word	2
	.word	26
	.word	4
	.word	26
	.word	8
	.word	26
	.word	32
	.word	27
	.word	1
	.word	28
	.word	1
	.word	28
	.word	2
	.word	28
	.word	4
	.word	28
	.word	8
	.word	28
	.word	16
	.word	28
	.word	32
	.word	28
	.word	64
	.word	28
	.word	128
	.word	28
	.word	256
	.word	28
	.word	512
	.word	28
	.word	1024
	.word	28
	.word	2048
	.word	28
	.word	4096
	.word	28
	.word	8192
	.word	28
	.word	16384
	.global	xtensa_perfmon_masks_table
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Amount of cycles"
.LC1:
	.string	"Overflow counter"
.LC2:
	.string	"JX instructions"
.LC3:
	.string	"CALLXn instructions"
.LC4:
	.string	"return instructions (RET, RETW, ...)"
.LC5:
	.string	"supervisor return instructions (RFDE, RFE, RFI, RFWO, RFWU)"
.LC6:
	.string	"Conditional branch instructions where execution"
.LC7:
	.string	"transfers to the target (aka. taken branch),"
.LC8:
	.string	" or loopgtz/loopnez instr where execution skips"
.LC9:
	.string	" the loop (aka. not-taken loop)"
.LC10:
	.string	"J instr"
.LC11:
	.string	"CALLn instr"
.LC12:
	.string	"Conditional branch instr where execution"
.LC13:
	.string	" falls through (aka. not-taken branch)"
.LC14:
	.string	"Loop instr where execution falls into loop (aka. taken loop)"
.LC15:
	.string	"Last inst of loop and execution transfers"
.LC16:
	.string	" to LBEG (aka. loopback taken)"
.LC17:
	.string	"Last inst of loop and execution falls "
.LC18:
	.string	" through to LEND (aka. loopback fallthrough)"
.LC19:
	.string	"Non-branch instr (aka. non-CTI)"
.LC20:
	.string	"Store buffer full stall"
.LC21:
	.string	"Store buffer conflict stall"
.LC22:
	.string	"Data Cache-miss stall (unused)"
.LC23:
	.string	"Data RAM/ROM/XLMI busy stall"
.LC24:
	.string	"Data inbound-PIF request stall (includes s32c1i)"
.LC25:
	.string	"MHT lookup stall"
.LC26:
	.string	"Uncached load stall (included in MHT lookup stall below)"
.LC27:
	.string	"Bank-conflict stall"
.LC28:
	.string	"ICache-miss stall"
.LC29:
	.string	"Instruction RAM/ROM busy stall"
.LC30:
	.string	"Instruction RAM inbound-PIF request stall"
.LC31:
	.string	"TIE port stall"
.LC32:
	.string	"External RunStall signal status"
.LC33:
	.string	"Uncached fetch stall"
.LC34:
	.string	"FastL32R stall"
.LC35:
	.string	"Iterative multiply stall"
.LC36:
	.string	"Iterative divide stall"
.LC37:
	.string	"Other Pipeline Replay (i.e. excludes cache miss etc.)"
.LC38:
	.string	"Level-1 interrupt"
.LC39:
	.string	"Greater-than-level-1 interrupt"
.LC40:
	.string	"Debug exception"
.LC41:
	.string	"NMI"
.LC42:
	.string	"Window exception"
.LC43:
	.string	"Allocate exception"
.LC44:
	.string	"Other exceptions"
.LC45:
	.string	"HW-corrected memory error"
.LC46:
	.string	"Processor domain PSO bubble"
.LC47:
	.string	"R hold caused by Data Cache miss(unused)"
.LC48:
	.string	"R hold caused by Store release"
.LC49:
	.string	"R hold caused by register dependency"
.LC50:
	.string	"R hold caused by MEMW, EXTW or EXCW"
.LC51:
	.string	"R hold caused by Halt instruction (TX only)"
.LC52:
	.string	"CTI bubble (e.g. branch delay slot)"
.LC53:
	.string	"WAITI bubble i.e. a cycle spent in WaitI power down mode."
.LC54:
	.string	"ITLB Hit"
.LC55:
	.string	"Replay of instruction due to ITLB miss"
.LC56:
	.string	"HW-assisted TLB Refill completes"
.LC57:
	.string	"ITLB Miss Exception"
.LC58:
	.string	"Instruction Cache Hit"
.LC59:
	.string	"Instruction Cache Miss"
.LC60:
	.string	"All InstRAM or InstROM accesses"
.LC61:
	.string	"Bypass (i.e. uncached) fetch"
.LC62:
	.string	"DTLB Hit"
.LC63:
	.string	"Replay of load/store due to DTLB miss"
.LC64:
	.string	"DTLB Miss Exception"
.LC65:
	.string	"Data Cache Hit(unused)"
.LC66:
	.string	"Data Cache Miss(unused)"
.LC67:
	.string	"Load from local memory i.e. DataRAM, DataROM, InstRAM, InstROM"
.LC68:
	.string	"Bypass (i.e. uncached) load"
.LC69:
	.string	"Data Cache Hit (unused)"
.LC70:
	.string	"Data Cache Miss (unused)"
.LC71:
	.string	"Store to local memory i.e. DataRAM, InstRAM"
.LC72:
	.string	"PIF Store"
.LC73:
	.string	"Cache Miss"
.LC74:
	.string	"0 stores and 0 loads"
.LC75:
	.string	"0 stores and 1 loads"
.LC76:
	.string	"1 stores and 0 loads"
.LC77:
	.string	"1 stores and 1 loads"
.LC78:
	.string	"0 stores and 2 loads"
.LC79:
	.string	"2 stores and 0 loads"
.LC80:
	.string	"Castout"
.LC81:
	.string	"Prefetch"
.LC82:
	.string	"Data DMA"
.LC83:
	.string	"Instruction DMA"
.LC84:
	.string	"I prefetch-buffer-lookup hit"
.LC85:
	.string	"D prefetch-buffer-lookup hit"
.LC86:
	.string	"I prefetch-buffer-lookup miss"
.LC87:
	.string	"D prefetch-buffer-lookup miss"
.LC88:
	.string	"Direct fill to (L1) Data Cache (unused)"
.LC89:
	.string	"active cycles"
.LC90:
	.string	"16-bit"
.LC91:
	.string	"24-bit"
.LC92:
	.string	"32-bit"
.LC93:
	.string	"40-bit"
.LC94:
	.string	"48-bit"
.LC95:
	.string	"56-bit"
.LC96:
	.string	"64-bit"
.LC97:
	.string	"72-bit"
.LC98:
	.string	"80-bit"
.LC99:
	.string	"88-bit"
.LC100:
	.string	"96-bit"
.LC101:
	.string	"104-bit"
.LC102:
	.string	"112-bit"
.LC103:
	.string	"120-bit"
.LC104:
	.string	"128-bit"
.LC105:
	.string	""
	.section	.rodata.xtensa_perfmon_masks_table,"a"
	.align	4
	.type	xtensa_perfmon_masks_table, @object
	.size	xtensa_perfmon_masks_table, 1500
xtensa_perfmon_masks_table:
	.word	0
	.word	1
	.word	.LC0
	.word	1
	.word	1
	.word	.LC1
	.word	2
	.word	1
	.word	.LC2
	.word	2
	.word	2
	.word	.LC3
	.word	2
	.word	4
	.word	.LC4
	.word	2
	.word	8
	.word	.LC5
	.word	2
	.word	16
	.word	.LC6
	.word	2
	.word	16
	.word	.LC7
	.word	2
	.word	16
	.word	.LC8
	.word	2
	.word	16
	.word	.LC9
	.word	2
	.word	32
	.word	.LC10
	.word	2
	.word	64
	.word	.LC11
	.word	2
	.word	128
	.word	.LC12
	.word	2
	.word	128
	.word	.LC13
	.word	2
	.word	256
	.word	.LC14
	.word	2
	.word	1024
	.word	.LC15
	.word	2
	.word	1024
	.word	.LC16
	.word	2
	.word	2048
	.word	.LC17
	.word	2
	.word	2048
	.word	.LC18
	.word	2
	.word	32768
	.word	.LC19
	.word	3
	.word	2
	.word	.LC20
	.word	3
	.word	4
	.word	.LC21
	.word	3
	.word	8
	.word	.LC22
	.word	3
	.word	16
	.word	.LC23
	.word	3
	.word	32
	.word	.LC24
	.word	3
	.word	64
	.word	.LC25
	.word	3
	.word	128
	.word	.LC26
	.word	3
	.word	256
	.word	.LC27
	.word	4
	.word	1
	.word	.LC28
	.word	4
	.word	2
	.word	.LC29
	.word	4
	.word	4
	.word	.LC30
	.word	4
	.word	8
	.word	.LC31
	.word	4
	.word	16
	.word	.LC32
	.word	4
	.word	32
	.word	.LC33
	.word	4
	.word	64
	.word	.LC34
	.word	4
	.word	128
	.word	.LC35
	.word	4
	.word	256
	.word	.LC36
	.word	5
	.word	1
	.word	.LC37
	.word	5
	.word	2
	.word	.LC38
	.word	5
	.word	4
	.word	.LC39
	.word	5
	.word	8
	.word	.LC40
	.word	5
	.word	16
	.word	.LC41
	.word	5
	.word	32
	.word	.LC42
	.word	5
	.word	64
	.word	.LC43
	.word	5
	.word	128
	.word	.LC44
	.word	5
	.word	256
	.word	.LC45
	.word	6
	.word	1
	.word	.LC46
	.word	6
	.word	4
	.word	.LC47
	.word	6
	.word	8
	.word	.LC48
	.word	6
	.word	16
	.word	.LC49
	.word	6
	.word	32
	.word	.LC50
	.word	6
	.word	64
	.word	.LC51
	.word	6
	.word	128
	.word	.LC52
	.word	6
	.word	256
	.word	.LC53
	.word	7
	.word	1
	.word	.LC54
	.word	7
	.word	2
	.word	.LC55
	.word	7
	.word	4
	.word	.LC56
	.word	7
	.word	8
	.word	.LC57
	.word	8
	.word	1
	.word	.LC58
	.word	8
	.word	2
	.word	.LC59
	.word	8
	.word	4
	.word	.LC60
	.word	8
	.word	8
	.word	.LC61
	.word	9
	.word	1
	.word	.LC62
	.word	9
	.word	2
	.word	.LC63
	.word	9
	.word	4
	.word	.LC56
	.word	9
	.word	8
	.word	.LC64
	.word	10
	.word	1
	.word	.LC65
	.word	10
	.word	2
	.word	.LC66
	.word	10
	.word	4
	.word	.LC67
	.word	10
	.word	8
	.word	.LC68
	.word	13
	.word	1
	.word	.LC65
	.word	13
	.word	2
	.word	.LC66
	.word	13
	.word	4
	.word	.LC67
	.word	13
	.word	8
	.word	.LC68
	.word	16
	.word	1
	.word	.LC69
	.word	16
	.word	2
	.word	.LC70
	.word	16
	.word	4
	.word	.LC67
	.word	16
	.word	8
	.word	.LC68
	.word	11
	.word	1
	.word	.LC69
	.word	11
	.word	2
	.word	.LC70
	.word	11
	.word	4
	.word	.LC71
	.word	11
	.word	8
	.word	.LC72
	.word	14
	.word	1
	.word	.LC65
	.word	14
	.word	2
	.word	.LC66
	.word	14
	.word	4
	.word	.LC71
	.word	14
	.word	8
	.word	.LC72
	.word	17
	.word	1
	.word	.LC69
	.word	17
	.word	2
	.word	.LC70
	.word	17
	.word	4
	.word	.LC71
	.word	17
	.word	8
	.word	.LC72
	.word	12
	.word	1
	.word	.LC73
	.word	15
	.word	1
	.word	.LC73
	.word	18
	.word	1
	.word	.LC73
	.word	22
	.word	1
	.word	.LC74
	.word	22
	.word	2
	.word	.LC75
	.word	22
	.word	4
	.word	.LC76
	.word	22
	.word	8
	.word	.LC77
	.word	22
	.word	16
	.word	.LC78
	.word	22
	.word	32
	.word	.LC79
	.word	23
	.word	1
	.word	.LC80
	.word	23
	.word	2
	.word	.LC81
	.word	24
	.word	1
	.word	.LC82
	.word	24
	.word	2
	.word	.LC83
	.word	26
	.word	1
	.word	.LC84
	.word	26
	.word	2
	.word	.LC85
	.word	26
	.word	4
	.word	.LC86
	.word	26
	.word	8
	.word	.LC87
	.word	26
	.word	32
	.word	.LC88
	.word	27
	.word	1
	.word	.LC89
	.word	28
	.word	1
	.word	.LC90
	.word	28
	.word	2
	.word	.LC91
	.word	28
	.word	4
	.word	.LC92
	.word	28
	.word	8
	.word	.LC93
	.word	28
	.word	16
	.word	.LC94
	.word	28
	.word	32
	.word	.LC95
	.word	28
	.word	64
	.word	.LC96
	.word	28
	.word	128
	.word	.LC97
	.word	28
	.word	256
	.word	.LC98
	.word	28
	.word	512
	.word	.LC99
	.word	28
	.word	1024
	.word	.LC100
	.word	28
	.word	2048
	.word	.LC101
	.word	28
	.word	4096
	.word	.LC102
	.word	28
	.word	8192
	.word	.LC103
	.word	28
	.word	16384
	.word	.LC104
	.word	-1
	.word	0
	.word	.LC105
	.global	xtensa_perfmon_select_table
	.section	.rodata.str1.1
.LC106:
	.string	"Counts cycles"
.LC107:
	.string	"Overflow of counter"
.LC108:
	.string	"Successfully Retired Instructions"
.LC109:
	.string	"Data-related GlobalStall cycles"
.LC110:
	.string	"Instruction-related and Other GlobalStall cycles"
.LC111:
	.string	"Exceptions and Pipeline Replays"
.LC112:
	.string	"Hold and Other Bubble cycles"
.LC113:
	.string	"Instruction TLB Accesses (per instruction retiring)"
.LC114:
	.string	"Instruction Memory Accesses (per instruction retiring)"
.LC115:
	.string	"Data TLB Accesses"
.LC116:
	.string	"Load Instruction (Data Memory)"
.LC117:
	.string	"Store Instruction (Data Memory)"
.LC118:
	.string	"Accesses to Data Memory (Load, Store, S32C1I, ...)"
.LC119:
	.string	"Multiple Load/Store"
.LC120:
	.string	"Outbound PIF"
.LC121:
	.string	"Inbound PIF"
.LC122:
	.string	"iDMA"
.LC123:
	.string	"Length of Instructions"
	.section	.rodata.xtensa_perfmon_select_table,"a"
	.align	4
	.type	xtensa_perfmon_select_table, @object
	.size	xtensa_perfmon_select_table, 208
xtensa_perfmon_select_table:
	.word	0
	.word	.LC106
	.word	1
	.word	.LC107
	.word	2
	.word	.LC108
	.word	3
	.word	.LC109
	.word	4
	.word	.LC110
	.word	5
	.word	.LC111
	.word	6
	.word	.LC112
	.word	7
	.word	.LC113
	.word	8
	.word	.LC114
	.word	9
	.word	.LC115
	.word	10
	.word	.LC116
	.word	13
	.word	.LC116
	.word	16
	.word	.LC116
	.word	11
	.word	.LC117
	.word	14
	.word	.LC117
	.word	17
	.word	.LC117
	.word	12
	.word	.LC118
	.word	15
	.word	.LC118
	.word	18
	.word	.LC118
	.word	22
	.word	.LC119
	.word	23
	.word	.LC120
	.word	24
	.word	.LC121
	.word	26
	.word	.LC81
	.word	27
	.word	.LC122
	.word	28
	.word	.LC123
	.word	-1
	.word	.LC105
	.text
.Letext0:
	.file 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 3 "/home/dieter/Development/esp-idf/components/perfmon/include/xtensa_perfmon_masks.h"
	.file 4 "/home/dieter/Development/esp-idf/components/perfmon/xtensa_perfmon_masks.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x183
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x1
	.byte	0x4f
	.byte	0x16
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.4byte	0x40
	.uleb128 0x5
	.4byte	0x61
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x8
	.byte	0x3
	.byte	0x1f
	.byte	0x10
	.4byte	0x9a
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x20
	.byte	0x9
	.4byte	0x39
	.byte	0
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.byte	0x11
	.4byte	0x9a
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0xa0
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x22
	.byte	0x3
	.4byte	0x72
	.uleb128 0x5
	.4byte	0xac
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0xc
	.byte	0x3
	.byte	0x29
	.byte	0x10
	.4byte	0xf2
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2a
	.byte	0x9
	.4byte	0x39
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2b
	.byte	0x9
	.4byte	0x39
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.byte	0x11
	.4byte	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.byte	0x3
	.4byte	0xbd
	.uleb128 0x5
	.4byte	0xf2
	.uleb128 0x9
	.4byte	0xb8
	.4byte	0x10e
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.4byte	0x103
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0x37
	.byte	0x26
	.4byte	0x10e
	.uleb128 0x9
	.4byte	0xfe
	.4byte	0x12a
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.4byte	0x11f
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x3
	.byte	0x3e
	.byte	0x25
	.4byte	0x12a
	.uleb128 0x9
	.4byte	0x6d
	.4byte	0x14b
	.uleb128 0xc
	.4byte	0x4c
	.byte	0xeb
	.byte	0
	.uleb128 0x5
	.4byte	0x13b
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x3
	.byte	0x45
	.byte	0x17
	.4byte	0x14b
	.uleb128 0xd
	.4byte	0x113
	.byte	0x4
	.byte	0x14
	.byte	0x1f
	.uleb128 0x5
	.byte	0x3
	.4byte	xtensa_perfmon_select_table
	.uleb128 0xd
	.4byte	0x12f
	.byte	0x4
	.byte	0x32
	.byte	0x1e
	.uleb128 0x5
	.byte	0x3
	.4byte	xtensa_perfmon_masks_table
	.uleb128 0xd
	.4byte	0x150
	.byte	0x4
	.byte	0xb4
	.byte	0x10
	.uleb128 0x5
	.byte	0x3
	.4byte	xtensa_perfmon_select_mask_all
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
.LASF18:
	.string	"xtensa_perfmon_masks_table"
.LASF15:
	.string	"mask"
.LASF17:
	.string	"xtensa_perfmon_select_table"
.LASF9:
	.string	"select"
.LASF12:
	.string	"xtensa_perfmon_select_t"
.LASF10:
	.string	"description"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"xtensa_perfmon_masks"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"xtensa_perfmon_select"
.LASF21:
	.string	"/home/dieter/Development/esp-idf/components/perfmon/xtensa_perfmon_masks.c"
.LASF7:
	.string	"__uint32_t"
.LASF22:
	.string	"/home/dieter/Development/ProjektEi/build/perfmon"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF16:
	.string	"xtensa_perfmon_masks_t"
.LASF5:
	.string	"long long int"
.LASF20:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF11:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"uint32_t"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"xtensa_perfmon_select_mask_all"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
