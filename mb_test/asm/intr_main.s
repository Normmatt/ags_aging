	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start IntrMain
IntrMain: @ 0x020011F8
	ldr r3, _020012EC @ =0x04000200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #1
	bne _020012AC
	add r2, r2, #4
	ands r0, r1, #2
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #4
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #8
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _020012BC
	add r2, r2, #4
	ands r0, r1, #0x2000
	b _020012BC
_020012AC:
	ldr r3, _020012F0 @ =gUnk_03000040
	ldr r1, [r3]
	add r1, r1, #1
	str r1, [r3]
_020012BC:
	ldr r3, _020012EC @ =0x04000200
	strh r0, [r3, #2]
	ldr r3, _020012F4 @ =0x03007FF8
	ldr r1, [r3]
	orr r1, r1, r0
	str r1, [r3]
	ldr r1, _020012F8 @ =gIntrTable
	add r1, r1, r2
	ldr r0, [r1]
	tst r0, r0
	bxne r0
	bx lr
	.align 2, 0
_020012EC: .4byte 0x04000200
_020012F0: .4byte gUnk_03000040
_020012F4: .4byte 0x03007FF8
_020012F8: .4byte gIntrTable
