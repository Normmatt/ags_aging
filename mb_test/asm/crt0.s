	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start __start
__start: @ 0x02000000
	b _020000C0

	.include "asm/rom_header.inc"

_020000C0:
	b sub_020000E0
_020000C4:
	.space 28

	arm_func_start sub_020000E0
sub_020000E0: @ 0x020000E0
	ldrb r0, [pc, #-0x24]
	cmp r0, #0
	beq _020001A4
	ldr r0, _02000170 @ =0x04000120
_020000F0:
	bl _02000178
	bne _020000F0
	mov r2, #0
	strh r2, [r0, #0xa]
	cmp r1, #0
	bne _020000F0
	mov r2, #0x8000
_0200010C:
	mov r1, #0
_02000110:
	strh r1, [r0, #0xa]
	bl _02000178
	bne _020000F0
	cmp r1, r2
	bne _0200010C
	lsr r2, r2, #5
	cmp r1, #0
	bne _02000110
	ldr r3, _02000174 @ =0x020000AC
	ldrh r2, [r3]
	strh r2, [r0, #0xa]
	bl _02000178
_02000140:
	bne _02000140
	cmp r1, r2
	bne _02000140
	ldrh r2, [r3, #2]
	strh r2, [r0, #0xa]
	bl _02000178
	bne _02000140
	cmp r1, r2
	bne _02000140
	mov r1, #0
	strh r1, [r0, #0xa]
	b _020001A4
	.align 2, 0
_02000170: .4byte 0x04000120
_02000174: .4byte 0x020000AC
_02000178:
	ldrh r1, [r0, #8]
	tst r1, #0x80
	beq _02000178
_02000184:
	ldrh r1, [r0, #8]
	tst r1, #0x80
	bne _02000184
	ldrh r1, [r0, #8]
	tst r1, #0x40
	bxne lr
	ldrh r1, [r0]
	bx lr
_020001A4:
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _020001E0 @ =gUnk_03007D00
	ldr r1, _020001E4 @ =0x03007FFC
	ldr r0, _020001E8 @ =sub_020011F8
	str r0, [r1]
	ldr r0, _020001EC @ =gUnk_03000000
	ldr r2, _020001F0 @ =gUnk_02007DD0
	ldr r3, _020001F4 @ =0x0000078C
_020001C8:
	ldr r1, [r2], #4
	str r1, [r0], #4
	subs r3, r3, #4
	bne _020001C8
	ldr r1, _020001F8 @ =sub_020001FC
	bx r1
	.align 2, 0
_020001E0: .4byte gUnk_03007D00
_020001E4: .4byte 0x03007FFC
_020001E8: .4byte sub_020011F8
_020001EC: .4byte gUnk_03000000
_020001F0: .4byte gUnk_02007DD0
_020001F4: .4byte 0x0000078C
_020001F8: .4byte sub_020001FC
