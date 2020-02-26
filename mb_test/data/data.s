	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .data

	.global gUnk_02006E10
gUnk_02006E10: @ 02006E10
	.incbin "../baserom.gba", 0x08187C, 0x38

	.global gUnk_02006E48
gUnk_02006E48: @ 02006E48
	.incbin "../baserom.gba", 0x0818B4, 0x60

	.global gUnk_02006EA8
gUnk_02006EA8: @ 02006EA8
	.incbin "../baserom.gba", 0x081914, 0xc09

	.global gUnk_02007AB1
gUnk_02007AB1: @ 02007AB1
	.incbin "../baserom.gba", 0x08251D, 0x103

	.section .data.2007C44
	.align 2

	.global gUnk_02007C44
gUnk_02007C44: @ 02007C44
	.incbin "../baserom.gba", 0x0826B0, 0x4

	.section .data.2007DD0
	.align 2

	.global gUnk_02007DD0
gUnk_02007DD0: @ 02007DD0
	.incbin "../baserom.gba", 0x08283C, 0x78c
