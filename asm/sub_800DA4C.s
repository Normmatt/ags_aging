.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800DA4C
sub_800DA4C: @ 0x0800DA4C
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DBE8
	movs r3, #0xe0
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _0800DBEC
	ldr r4, _0800DBF0
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _0800DBF4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DBF8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DBFC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC00
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC04
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC08
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC0C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC10
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC14
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC18
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC1C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC20
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DC24
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC28
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC2C
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _0800DC30
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _0800DC34
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC38
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC3C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DC40
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC44
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC48
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC4C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC50
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC54
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC58
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC5C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC60
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC64
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC68
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC6C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC70
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC74
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC74
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0
	str r0, [r7, #4]
	ldr r0, _0800DC78
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #4
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _0800DC7C
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800DC80
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
	ldr r0, _0800DC78
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800DC84
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800DC80
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800DC74
	adds r1, r0, #0
	ldr r3, _0800DC88
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _0800DC74
	adds r0, r1, #0
	ldr r4, _0800DC8C
	adds r1, r1, r4
	ldr r2, _0800DC90
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r0, _0800DC74
	adds r1, r0, #0
	movs r4, #0x81
	lsls r4, r4, #5
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0
	str r0, [r7]
_0800DBDE:
	ldr r0, [r7]
	cmp r0, #7
	ble _0800DC94
	b _0800DCDC
	.align 2, 0
_0800DBE8: .4byte 0x04000008
_0800DBEC: .4byte 0x0400000A
_0800DBF0: .4byte 0x00001D01
_0800DBF4: .4byte 0x04000010
_0800DBF8: .4byte 0x04000012
_0800DBFC: .4byte 0x04000014
_0800DC00: .4byte 0x04000016
_0800DC04: .4byte 0x0400000C
_0800DC08: .4byte 0x0400000E
_0800DC0C: .4byte 0x0400004C
_0800DC10: .4byte 0x04000028
_0800DC14: .4byte 0x0400002C
_0800DC18: .4byte 0x04000038
_0800DC1C: .4byte 0x0400003C
_0800DC20: .4byte 0x04000020
_0800DC24: .4byte 0x04000022
_0800DC28: .4byte 0x04000024
_0800DC2C: .4byte 0x04000026
_0800DC30: .4byte 0x04000030
_0800DC34: .4byte 0x04000032
_0800DC38: .4byte 0x04000034
_0800DC3C: .4byte 0x04000036
_0800DC40: .4byte 0x04000018
_0800DC44: .4byte 0x0400001A
_0800DC48: .4byte 0x0400001C
_0800DC4C: .4byte 0x0400001E
_0800DC50: .4byte 0x04000040
_0800DC54: .4byte 0x04000044
_0800DC58: .4byte 0x04000042
_0800DC5C: .4byte 0x04000046
_0800DC60: .4byte 0x04000048
_0800DC64: .4byte 0x0400004A
_0800DC68: .4byte 0x04000050
_0800DC6C: .4byte 0x04000052
_0800DC70: .4byte 0x04000054
_0800DC74: .4byte gUnknown_03001B40
_0800DC78: .4byte 0x040000D4
_0800DC7C: .4byte gUnknown_03001B48
_0800DC80: .4byte 0x85000200
_0800DC84: .4byte gUnknown_03002348
_0800DC88: .4byte 0x00001008
_0800DC8C: .4byte 0x0000100C
_0800DC90: .4byte gUnknown_08100C1C
_0800DC94:
	ldr r0, _0800DCCC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _0800DCD0
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, _0800DCD4
	str r0, [r1]
	ldr r0, _0800DCCC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	adds r1, r0, #0
	ldr r3, _0800DCD8
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800DBDE
	.align 2, 0
_0800DCCC: .4byte gUnknown_03001B40
_0800DCD0: .4byte 0x00001024
_0800DCD4: .4byte sub_800E224+1
_0800DCD8: .4byte 0x00001028
_0800DCDC:
	bl UpdateTilemaps
	movs r0, #0
	movs r1, #0
	bl sub_800DE38
	movs r0, #1
	movs r1, #0x1f
	bl sub_800DE38
	ldr r1, _0800DD38
	movs r0, #2
	bl sub_800DE38
	ldr r1, _0800DD3C
	movs r0, #3
	bl sub_800DE38
	ldr r1, _0800DD40
	movs r0, #4
	bl sub_800DE38
	ldr r1, _0800DD44
	movs r0, #5
	bl sub_800DE38
	ldr r1, _0800DD48
	movs r0, #6
	bl sub_800DE38
	ldr r1, _0800DD4C
	movs r0, #7
	bl sub_800DE38
	movs r0, #0
	bl sub_800E6E8
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r4, _0800DD4C
	adds r1, r4, #0
	strh r1, [r0]
	add sp, #0xc
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD38: .4byte 0x00001683
_0800DD3C: .4byte 0x000003FF
_0800DD40: .4byte 0x00005863
_0800DD44: .4byte 0x00005CBF
_0800DD48: .4byte 0x000073A5
_0800DD4C: .4byte 0x00007FFF

	THUMB_FUNC_START sub_800DD50
sub_800DD50: @ 0x0800DD50
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	ldr r0, _0800DE28
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, _0800DE28
	adds r2, r1, #0
	movs r2, #0x81
	lsls r2, r2, #5
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r3, _0800DE2C
	adds r0, r0, r3
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DE28
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _0800DE30
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, _0800DE34
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _0800DE28
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r3, r1, r2
	adds r1, r3, #0
	ldr r1, _0800DE2C
	adds r2, r3, r1
	ldrh r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r1, r3
	str r2, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, [r7, #8]
	adds r1, r2, #0
	cmp r1, #0
	bge _0800DDDA
	adds r1, #3
_0800DDDA:
	asrs r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800DE28
	ldr r1, _0800DE28
	adds r2, r1, #0
	movs r2, #0x81
	lsls r2, r2, #5
	adds r1, r1, r2
	ldr r3, [r7, #8]
	adds r2, r3, #0
	cmp r2, #0
	bge _0800DE02
	adds r2, #0x1f
_0800DE02:
	asrs r2, r2, #5
	ldrh r1, [r1]
	adds r1, r1, r2
	adds r2, r0, #0
	movs r3, #0x81
	lsls r3, r3, #5
	adds r0, r0, r3
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE28: .4byte gUnknown_03001B40
_0800DE2C: .4byte 0x00001028
_0800DE30: .4byte 0x00001024
_0800DE34: .4byte 0x040000D4

	THUMB_FUNC_START sub_800DE38
sub_800DE38: @ 0x0800DE38
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	adds r0, r7, #6
	adds r1, r7, #4
	ldrh r2, [r1]
	movs r3, #0x1f
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #4
	ldrh r2, [r1]
	lsrs r1, r2, #5
	adds r2, r1, #0
	movs r3, #0x1f
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	adds r1, r7, #4
	ldrh r2, [r1]
	lsrs r1, r2, #0xa
	adds r2, r1, #0
	movs r3, #0x1f
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #5
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r0, r2
	str r1, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	movs r2, #0x1f
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF24
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF28
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF2C
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF30
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF34
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF38
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	movs r0, #1
	str r0, [r7, #0x10]
_0800DF1A:
	ldr r0, [r7, #0x10]
	cmp r0, #7
	ble _0800DF3C
	b _0800DFA0
	.align 2, 0
_0800DF24: .4byte 0x00001683
_0800DF28: .4byte 0x000003FF
_0800DF2C: .4byte 0x00005863
_0800DF30: .4byte 0x00005CBF
_0800DF34: .4byte 0x000073A5
_0800DF38: .4byte 0x00007FFF
_0800DF3C:
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, [r1]
	adds r0, r7, #6
	ldrh r3, [r0]
	ldr r4, [r7, #0x10]
	adds r0, r3, #0
	muls r0, r4, r0
	adds r3, r0, #0
	adds r0, r2, #0
	adds r2, #2
	str r2, [r1]
	cmp r3, #0
	bge _0800DF5A
	adds r3, #7
_0800DF5A:
	asrs r2, r3, #3
	adds r1, r2, #0
	adds r2, r7, #0
	adds r2, #8
	ldrh r3, [r2]
	ldr r2, [r7, #0x10]
	muls r3, r2, r3
	adds r2, r3, #0
	cmp r2, #0
	bge _0800DF70
	adds r2, #7
_0800DF70:
	asrs r2, r2, #3
	adds r3, r2, #0
	lsls r2, r3, #5
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r7, #0
	adds r2, #0xa
	ldrh r3, [r2]
	ldr r2, [r7, #0x10]
	muls r3, r2, r3
	adds r2, r3, #0
	cmp r2, #0
	bge _0800DF8C
	adds r2, #7
_0800DF8C:
	asrs r2, r2, #3
	adds r3, r2, #0
	lsls r2, r3, #0xa
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800DF1A
_0800DFA0:
	ldr r0, [r7, #0xc]
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START UpdateTilemaps
UpdateTilemaps: @ 0x0800DFB0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _0800E008
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800E00C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800E010
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800E014
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800E008
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800E018
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800E01C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800E014
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E008: .4byte 0x040000D4
_0800E00C: .4byte gUnknown_03001B48
_0800E010: .4byte 0x0600E000
_0800E014: .4byte 0x84000200
_0800E018: .4byte gUnknown_03002348
_0800E01C: .4byte 0x0600E800

	THUMB_FUNC_START DrawString
DrawString: @ 0x0800E020
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
_0800E030:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800E03E
	b _0800E21C
_0800E03E:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _0800E074
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _0800E0BC
	ldr r0, [r7, #8]
	ldr r2, [r7, #0xc]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xc
	beq _0800E08A
	cmp r0, #0xc
	bgt _0800E078
	cmp r0, #0xa
	beq _0800E07E
	b _0800E0B4
	.align 2, 0
_0800E074: .4byte gUnknown_08141E81
_0800E078:
	cmp r0, #0x1b
	beq _0800E096
	b _0800E0B4
_0800E07E:
	bl sub_800E4E8
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800E0BA
_0800E08A:
	bl sub_800E508
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800E0BA
_0800E096:
	adds r1, r7, #4
	ldr r0, [r7, #8]
	ldr r2, [r7, #0xc]
	adds r0, r0, r2
	adds r2, r0, #1
	adds r0, r7, #0
	bl sub_800E5F0
	ldr r1, [r7, #0xc]
	adds r0, r1, r0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800E0BA
_0800E0B4:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
_0800E0BA:
	b _0800E21A
_0800E0BC:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _0800E0CC
	b _0800E214
_0800E0CC:
	bl sub_800E258
	ldr r0, _0800E110
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _0800E114
	adds r3, r0, r2
	adds r0, r3, r1
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, [r7, #8]
	ldr r3, [r7, #0xc]
	adds r2, r2, r3
	ldr r3, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	bl _call_via_r3
	adds r1, r7, #0
	adds r1, #0x10
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	ldr r0, _0800E118
	cmp r1, r0
	bne _0800E11C
	adds r0, r7, #0
	adds r0, #0x10
	movs r1, #0
	strh r1, [r0]
	b _0800E156
	.align 2, 0
_0800E110: .4byte gUnknown_03001B40
_0800E114: .4byte 0x00001024
_0800E118: .4byte 0x0000FFFF
_0800E11C:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	ldr r2, _0800E1FC
	ldr r3, [r7]
	adds r4, r3, #0
	lsls r3, r4, #3
	adds r4, r2, r3
	adds r2, r4, #0
	ldr r2, _0800E200
	adds r3, r4, r2
	ldrh r1, [r1]
	ldrh r2, [r3]
	adds r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	ldr r3, [r7, #4]
	adds r2, r3, #0
	lsls r3, r2, #0xc
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
_0800E156:
	ldr r0, _0800E1FC
	ldr r2, _0800E1FC
	adds r1, r2, #0
	ldr r1, _0800E204
	adds r2, r2, r1
	ldr r1, _0800E1FC
	ldr r2, [r2]
	ldr r3, [r1]
	adds r1, r2, r3
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r3, _0800E1FC
	adds r2, r3, #0
	ldr r2, _0800E208
	adds r3, r3, r2
	ldr r2, _0800E1FC
	ldr r3, [r3]
	ldr r4, [r2, #4]
	adds r2, r3, r4
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	adds r2, #8
	adds r0, r2, r1
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800E1FC
	ldr r2, _0800E1FC
	adds r1, r2, #0
	ldr r1, _0800E204
	adds r2, r2, r1
	ldr r1, _0800E1FC
	ldr r2, [r2]
	ldr r3, [r1]
	adds r1, r2, r3
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r3, _0800E1FC
	adds r2, r3, #0
	ldr r2, _0800E208
	adds r3, r3, r2
	ldr r2, _0800E1FC
	ldr r3, [r3]
	ldr r4, [r2, #4]
	adds r2, r3, r4
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r2, _0800E20C
	adds r3, r0, r2
	adds r0, r3, r1
	ldr r1, _0800E1FC
	adds r2, r1, #0
	ldr r2, _0800E210
	adds r1, r1, r2
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, _0800E1FC
	ldr r0, _0800E1FC
	ldr r1, _0800E1FC
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	b _0800E21A
	.align 2, 0
_0800E1FC: .4byte gUnknown_03001B40
_0800E200: .4byte 0x00001028
_0800E204: .4byte 0x0000100C
_0800E208: .4byte 0x00001010
_0800E20C: .4byte 0x00000808
_0800E210: .4byte 0x00001008
_0800E214:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
_0800E21A:
	b _0800E030
_0800E21C:
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E224
sub_800E224: @ 0x0800E224
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	ldr r0, [r7, #4]
	ldrb r1, [r0]
	adds r0, r1, #0
	adds r1, r0, #0
	subs r1, #0x20
	adds r2, r1, #0
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	b _0800E24E
_0800E24E:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E258
sub_800E258: @ 0x0800E258
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	ldr r0, _0800E2C0
	ldr r2, _0800E2C0
	adds r1, r2, #0
	ldr r1, _0800E2C4
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	blt _0800E274
	bl sub_800E4E8
_0800E274:
	ldr r0, _0800E2C0
	ldr r2, _0800E2C0
	adds r1, r2, #0
	ldr r1, _0800E2C8
	adds r2, r2, r1
	ldr r0, [r0, #4]
	ldr r1, [r2]
	cmp r0, r1
	bge _0800E288
	b _0800E4C0
_0800E288:
	ldr r0, _0800E2C0
	ldr r2, _0800E2C0
	adds r1, r2, #0
	ldr r1, _0800E2C8
	adds r2, r2, r1
	ldr r1, [r2]
	subs r2, r1, #1
	str r2, [r0, #4]
	ldr r1, _0800E2C0
	adds r0, r1, #0
	ldr r2, _0800E2CC
	adds r1, r1, r2
	ldr r0, [r1]
	cmp r0, #1
	beq _0800E2A8
	b _0800E4C0
_0800E2A8:
	movs r0, #0
	str r0, [r7]
_0800E2AC:
	ldr r1, _0800E2C0
	adds r0, r1, #0
	ldr r0, _0800E2C8
	adds r1, r1, r0
	ldr r2, [r1]
	subs r0, r2, #1
	ldr r1, [r7]
	cmp r1, r0
	blt _0800E2D0
	b _0800E3F0
	.align 2, 0
_0800E2C0: .4byte gUnknown_03001B40
_0800E2C4: .4byte 0x00001014
_0800E2C8: .4byte 0x00001018
_0800E2CC: .4byte 0x0000101C
_0800E2D0:
	ldr r0, _0800E3CC
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3DC
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3E0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3E4
	adds r2, r2, r1
	ldr r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800E3CC
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3E8
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3EC
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3E4
	adds r2, r2, r1
	ldr r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800E2AC
	.align 2, 0
_0800E3CC: .4byte 0x040000D4
_0800E3D0: .4byte gUnknown_03001B40
_0800E3D4: .4byte 0x00001010
_0800E3D8: .4byte 0x0000100C
_0800E3DC: .4byte gUnknown_03001B88
_0800E3E0: .4byte gUnknown_03001B48
_0800E3E4: .4byte 0x00001014
_0800E3E8: .4byte gUnknown_03002388
_0800E3EC: .4byte gUnknown_03002348
_0800E3F0:
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800E4C8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800E4CC
	adds r2, r1, #0
	ldr r2, _0800E4D0
	adds r1, r1, r2
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D4
	adds r3, r3, r2
	ldr r1, [r1]
	ldr r2, [r3]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E4DC
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E4CC
	adds r1, r2, #0
	ldr r1, _0800E4E0
	adds r2, r2, r1
	ldr r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800E4C8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800E4CC
	adds r2, r1, #0
	ldr r2, _0800E4D0
	adds r1, r1, r2
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D4
	adds r3, r3, r2
	ldr r1, [r1]
	ldr r2, [r3]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E4E4
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E4CC
	adds r1, r2, #0
	ldr r1, _0800E4E0
	adds r2, r2, r1
	ldr r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
_0800E4C0:
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4C8: .4byte 0x040000D4
_0800E4CC: .4byte gUnknown_03001B40
_0800E4D0: .4byte 0x00001010
_0800E4D4: .4byte 0x00001018
_0800E4D8: .4byte 0x0000100C
_0800E4DC: .4byte gUnknown_03001B08
_0800E4E0: .4byte 0x00001014
_0800E4E4: .4byte gUnknown_03002308

	THUMB_FUNC_START sub_800E4E8
sub_800E4E8: @ 0x0800E4E8
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800E504
	movs r1, #0
	str r1, [r0]
	ldr r1, _0800E504
	ldr r0, _0800E504
	ldr r1, _0800E504
	ldr r2, [r1, #4]
	adds r1, r2, #1
	str r1, [r0, #4]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E504: .4byte gUnknown_03001B40

	THUMB_FUNC_START sub_800E508
sub_800E508: @ 0x0800E508
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	ldr r1, _0800E538
	adds r0, r1, #0
	ldr r0, _0800E53C
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r7]
_0800E51A:
	ldr r0, _0800E538
	adds r1, r0, #0
	ldr r1, _0800E53C
	adds r0, r0, r1
	ldr r2, _0800E538
	adds r1, r2, #0
	ldr r1, _0800E540
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [r7]
	cmp r1, r0
	blt _0800E544
	b _0800E5D8
	.align 2, 0
_0800E538: .4byte gUnknown_03001B40
_0800E53C: .4byte 0x00001010
_0800E540: .4byte 0x00001018
_0800E544:
	ldr r1, _0800E570
	adds r0, r1, #0
	ldr r2, _0800E574
	adds r1, r1, r2
	ldr r0, [r1]
	str r0, [r7, #4]
_0800E550:
	ldr r0, _0800E570
	adds r1, r0, #0
	ldr r1, _0800E574
	adds r0, r0, r1
	ldr r2, _0800E570
	adds r1, r2, #0
	ldr r1, _0800E578
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [r7, #4]
	cmp r1, r0
	blt _0800E57C
	b _0800E5D0
	.align 2, 0
_0800E570: .4byte gUnknown_03001B40
_0800E574: .4byte 0x0000100C
_0800E578: .4byte 0x00001014
_0800E57C:
	ldr r0, _0800E5C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	adds r2, #8
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800E5C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r2, _0800E5CC
	adds r3, r0, r2
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800E550
	.align 2, 0
_0800E5C8: .4byte gUnknown_03001B40
_0800E5CC: .4byte 0x00000808
_0800E5D0:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800E51A
_0800E5D8:
	ldr r0, _0800E5EC
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800E5EC
	movs r1, #0
	str r1, [r0, #4]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5EC: .4byte gUnknown_03001B40

	THUMB_FUNC_START sub_800E5F0
sub_800E5F0: @ 0x0800E5F0
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r0]
	ldrb r2, [r1]
	adds r1, #1
	str r1, [r0]
	cmp r2, #0x5b
	beq _0800E610
	movs r0, #0
	b _0800E64C
_0800E610:
	adds r1, r7, #0
	adds r1, #8
	ldr r2, [r1]
	ldrb r0, [r2]
	adds r2, #1
	str r2, [r1]
	cmp r0, #0x46
	beq _0800E626
	cmp r0, #0x50
	beq _0800E636
	b _0800E648
_0800E626:
	ldr r0, [r7, #8]
	ldrb r1, [r0]
	ldr r0, [r7]
	bl sub_800E654
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800E64C
_0800E636:
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldrb r2, [r1]
	adds r1, r2, #0
	bl sub_800E690
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800E64C
_0800E648:
	movs r0, #0
	b _0800E64C
_0800E64C:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800E654
sub_800E654: @ 0x0800E654
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strb r0, [r1]
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x30
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	blt _0800E684
	ldr r0, [r7, #8]
	cmp r0, #7
	bgt _0800E684
	ldr r0, [r7]
	ldr r1, [r7, #8]
	str r1, [r0]
	movs r0, #3
	b _0800E688
	.byte 0x01, 0xE0
_0800E684:
	movs r0, #0
	b _0800E688
_0800E688:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800E690
sub_800E690: @ 0x0800E690
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strb r0, [r1]
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x30
	str r0, [r7, #8]
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #0x40
	bls _0800E6C2
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #0x46
	bhi _0800E6C2
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x37
	str r0, [r7, #8]
_0800E6C2:
	ldr r0, [r7, #8]
	cmp r0, #0
	blt _0800E6DA
	ldr r0, [r7, #8]
	cmp r0, #0xf
	bgt _0800E6DA
	ldr r0, [r7]
	ldr r1, [r7, #8]
	str r1, [r0]
	movs r0, #3
	b _0800E6DE
	.byte 0x01, 0xE0
_0800E6DA:
	movs r0, #0
	b _0800E6DE
_0800E6DE:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    