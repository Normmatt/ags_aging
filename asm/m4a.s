.include "asm/macros.inc"

.syntax unified


	non_word_aligned_thumb_func_start sub_0800F380
sub_0800F380: @ 0x0800F380
	add r2, pc, #0x0
	bx r2
	.byte 0x90, 0x21, 0x83, 0xE0, 0x00, 0x00, 0x83, 0xE2, 0x1E, 0xFF, 0x2F, 0xE1

	THUMB_FUNC_START SoundMain
SoundMain: @ 0x0800F390
	ldr r0, _0800F3FC
	ldr r0, [r0]
	ldr r2, _0800F400
	ldr r3, [r0]
	cmp r2, r3
	beq _0800F39E
	bx lr
_0800F39E:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0800F3C2
	ldr r2, _0800F408
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _0800F3C0
	adds r2, #0xe4
_0800F3C0:
	adds r1, r1, r2
_0800F3C2:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0800F3D2
	ldr r0, [r0, #0x24]
	bl sub_0800F7B2
	ldr r0, [sp, #0x18]
_0800F3D2:
	ldr r3, [r0, #0x28]
	bl sub_0800F7B2
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _0800F40C
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _0800F3F2
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_0800F3F2:
	str r5, [sp, #8]
	ldr r6, _0800F410
	ldr r3, _0800F404
	bx r3
	.align 2, 0
_0800F3FC: .4byte gUnknown_03007FF0
_0800F400: .4byte 0x68736D53
_0800F404: .4byte gUnknown_03000C81
_0800F408: .4byte 0x04000006
_0800F40C: .4byte 0x00000350
_0800F410: .4byte 0x00000630

	THUMB_FUNC_START SoundMainRAM
SoundMainRAM: @ 0x0800F414
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq _0800F474
	add r1, pc, #0x4
	bx r1
	.byte 0x00, 0x00
	.byte 0x02, 0x00, 0x54, 0xE3, 0x35, 0x7E, 0x80, 0x02, 0x08, 0x70, 0x85, 0x10, 0x08, 0x40, 0xA0, 0xE1
	.byte 0xD6, 0x00, 0x95, 0xE1, 0xD0, 0x10, 0xD5, 0xE1, 0x01, 0x00, 0x80, 0xE0, 0xD6, 0x10, 0x97, 0xE1
	.byte 0x01, 0x00, 0x80, 0xE0, 0xD1, 0x10, 0xD7, 0xE0, 0x01, 0x00, 0x80, 0xE0, 0x90, 0x03, 0x01, 0xE0
	.byte 0xC1, 0x04, 0xA0, 0xE1, 0x80, 0x00, 0x10, 0xE3, 0x01, 0x00, 0x80, 0x12, 0x06, 0x00, 0xC5, 0xE7
	.byte 0x01, 0x00, 0xC5, 0xE4, 0x01, 0x40, 0x54, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA, 0x2F, 0x00, 0x8F, 0xE2
	.byte 0x10, 0xFF, 0x2F, 0xE1
_0800F474:
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _0800F482
	stm r5!, {r0}
	stm r6!, {r0}
_0800F482:
	lsrs r1, r1, #1
	blo _0800F48E
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_0800F48E:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _0800F48E
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_0800F4AC:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0800F4CC
	ldr r1, _0800F4C8
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _0800F4C0
	adds r1, #0xe4
_0800F4C0:
	cmp r1, r0
	blo _0800F4CC
	b _0800F79E
	.align 2, 0
_0800F4C8: .4byte 0x04000006
_0800F4CC:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0800F4D6
	b _0800F794
_0800F4D6:
	movs r0, #0x80
	tst r0, r6
	beq _0800F506
	movs r0, #0x40
	tst r0, r6
	bne _0800F516
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _0800F55E
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0800F55E
_0800F506:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _0800F51C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _0800F56C
_0800F516:
	movs r0, #0
	strb r0, [r4]
	b _0800F794
_0800F51C:
	movs r0, #0x40
	tst r0, r6
	beq _0800F53C
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _0800F56C
_0800F52E:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0800F516
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _0800F56C
_0800F53C:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0800F55A
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _0800F56C
	adds r5, r0, #0
	beq _0800F52E
	subs r6, #1
	strb r6, [r4]
	b _0800F56C
_0800F55A:
	cmp r2, #3
	bne _0800F56C
_0800F55E:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _0800F56C
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_0800F56C:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _0800F5A0
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_0800F5A0:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4
	bx r0
	.byte 0x00, 0x00, 0x00, 0x80, 0x8D, 0xE5
	.byte 0x0A, 0xA0, 0xD4, 0xE5, 0x0B, 0xB0, 0xD4, 0xE5, 0x0A, 0xA8, 0xA0, 0xE1, 0x0B, 0xB8, 0xA0, 0xE1
	.byte 0x01, 0x00, 0xD4, 0xE5, 0x08, 0x00, 0x10, 0xE3, 0x47, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x52, 0xE3
	.byte 0x19, 0x00, 0x00, 0xDA, 0x08, 0x20, 0x52, 0xE0, 0x00, 0xE0, 0xA0, 0xC3, 0x05, 0x00, 0x00, 0xCA
	.byte 0x08, 0xE0, 0xA0, 0xE1, 0x08, 0x20, 0x82, 0xE0, 0x04, 0x80, 0x42, 0xE2, 0x08, 0xE0, 0x4E, 0xE0
	.byte 0x03, 0x20, 0x12, 0xE2, 0x04, 0x20, 0xA0, 0x03, 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5
	.byte 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x66, 0x64, 0x81, 0xE0
	.byte 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0, 0x01, 0x51, 0x95, 0xE2
	.byte 0xF6, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2
	.byte 0xF0, 0xFF, 0xFF, 0xCA, 0x0E, 0x80, 0x98, 0xE0, 0x50, 0x00, 0x00, 0x0A, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0
	.byte 0x01, 0x20, 0x52, 0xE2, 0x12, 0x00, 0x00, 0x0A, 0x01, 0x51, 0x95, 0xE2, 0xF4, 0xFF, 0xFF, 0x3A
	.byte 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2, 0xD2, 0xFF, 0xFF, 0xCA
	.byte 0x3E, 0x00, 0x00, 0xEA, 0x18, 0x00, 0x9D, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x05, 0x00, 0x00, 0x0A
	.byte 0x14, 0x30, 0x9D, 0xE5, 0x00, 0x90, 0x62, 0xE2, 0x02, 0x20, 0x90, 0xE0, 0x2B, 0x00, 0x00, 0xCA
	.byte 0x00, 0x90, 0x49, 0xE0, 0xFB, 0xFF, 0xFF, 0xEA, 0x10, 0x10, 0xBD, 0xE8, 0x00, 0x20, 0xA0, 0xE3
	.byte 0x03, 0x00, 0x00, 0xEA, 0x10, 0x20, 0x9D, 0xE5, 0x00, 0x00, 0x52, 0xE3, 0x0C, 0x30, 0x9D, 0x15
	.byte 0xE8, 0xFF, 0xFF, 0x1A, 0x00, 0x20, 0xC4, 0xE5, 0x25, 0x0F, 0xA0, 0xE1, 0x03, 0x51, 0xC5, 0xE3
	.byte 0x03, 0x00, 0x60, 0xE2, 0x80, 0x01, 0xA0, 0xE1, 0x76, 0x60, 0xA0, 0xE1, 0x77, 0x70, 0xA0, 0xE1
	.byte 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x26, 0x00, 0x00, 0xEA, 0x10, 0x10, 0x2D, 0xE9
	.byte 0x1C, 0xE0, 0x94, 0xE5, 0x20, 0x10, 0x94, 0xE5, 0x9C, 0x01, 0x04, 0xE0, 0xD0, 0x00, 0xD3, 0xE1
	.byte 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0, 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5
	.byte 0x9E, 0x01, 0x09, 0xE0, 0xC9, 0x9B, 0x80, 0xE0, 0x9A, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3
	.byte 0x66, 0x64, 0x8C, 0xE0, 0x9B, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3, 0x67, 0x74, 0x8C, 0xE0
	.byte 0x04, 0xE0, 0x8E, 0xE0, 0xAE, 0x9B, 0xB0, 0xE1, 0x07, 0x00, 0x00, 0x0A, 0xFE, 0xE5, 0xCE, 0xE3
	.byte 0x09, 0x20, 0x52, 0xE0, 0xCE, 0xFF, 0xFF, 0xDA, 0x01, 0x90, 0x59, 0xE2, 0x01, 0x00, 0x80, 0x00
	.byte 0xD9, 0x00, 0xB3, 0x11, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0, 0x01, 0x51, 0x95, 0xE2
	.byte 0xEA, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2
	.byte 0xE4, 0xFF, 0xFF, 0xCA, 0x01, 0x30, 0x43, 0xE2, 0x10, 0x10, 0xBD, 0xE8, 0x1C, 0xE0, 0x84, 0xE5
	.byte 0x18, 0x20, 0x84, 0xE5, 0x28, 0x30, 0x84, 0xE5, 0x00, 0x80, 0x9D, 0xE5, 0x01, 0x00, 0x8F, 0xE2
	.byte 0x10, 0xFF, 0x2F, 0xE1
_0800F794:
	ldr r0, [sp, #4]
	subs r0, #1
	ble _0800F79E
	adds r4, #0x40
	b _0800F4AC
_0800F79E:
	ldr r0, [sp, #0x18]
	ldr r3, _0800F7B4
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_0800F7B2
sub_0800F7B2: @ 0x0800F7B2
	bx r3
	.align 2, 0
_0800F7B4: .4byte 0x68736D53
	.byte 0xA4, 0x46, 0x00, 0x21, 0x00, 0x22, 0x00, 0x23
	.byte 0x00, 0x24, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x64, 0x46, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START ClearChain
ClearChain: @ 0x0800F7D0
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0800F7EE
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0800F7E2
	str r1, [r2, #0x34]
	b _0800F7E4
_0800F7E2:
	str r1, [r3, #0x20]
_0800F7E4:
	cmp r1, #0
	beq _0800F7EA
	str r2, [r1, #0x30]
_0800F7EA:
	movs r1, #0
	str r1, [r0, #0x2c]
_0800F7EE:
	bx lr
ply_fine:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0800F814
_0800F7FA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0800F808
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_0800F808:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0800F7FA
_0800F814:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x0800F820
	mov ip, lr
	movs r1, #0x24
	ldr r2, _0800F850
_0800F826:
	ldr r3, [r2]
	bl chk_adr_r2
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0800F826
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ldrb_r3_r2
ldrb_r3_r2: @ 0x0800F838
	ldrb r3, [r2]
chk_adr_r2:
	push {r0}
	lsrs r0, r2, #0x19
	bne _0800F84C
	ldr r0, _0800F850
	cmp r2, r0
	blo _0800F84A
	lsrs r0, r2, #0xe
	beq _0800F84C
_0800F84A:
	movs r3, #0
_0800F84C:
	pop {r0}
	bx lr
	.align 2, 0
_0800F850: .4byte gUnknown_08106F88

	THUMB_FUNC_START ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x0800F854
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_0800F856
sub_0800F856: @ 0x0800F856
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b chk_adr_r2
	.byte 0x00, 0x00
ply_goto:
	push {lr}
_0800F862:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	THUMB_FUNC_START ply_patt
ply_patt: @ 0x0800F880
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _0800F898
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_0800F898:
	b ply_fine
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_pend
ply_pend: @ 0x0800F89C
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _0800F8AE
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_0800F8AE:
	bx lr

	THUMB_FUNC_START ply_rept
ply_rept: @ 0x0800F8B0
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _0800F8C0
	adds r2, #1
	str r2, [r1, #0x40]
	b _0800F862
_0800F8C0:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _0800F8D2
	b _0800F862
_0800F8D2:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_prio
ply_prio: @ 0x0800F8E0
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_tempo
ply_tempo: @ 0x0800F8EC
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	THUMB_FUNC_START ply_keysh
ply_keysh: @ 0x0800F900
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_voice
ply_voice: @ 0x0800F914
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl chk_adr_r2
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl chk_adr_r2
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl chk_adr_r2
	str r3, [r1, #0x2c]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_vol
ply_vol: @ 0x0800F944
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_pan
ply_pan: @ 0x0800F958
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START ply_bend
ply_bend: @ 0x0800F96C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START ply_bendr
ply_bendr: @ 0x0800F980
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_lfodl
ply_lfodl: @ 0x0800F994
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_modt
ply_modt: @ 0x0800F9A0
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0800F9B6
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0800F9B6:
	bx ip

	THUMB_FUNC_START ply_tune
ply_tune: @ 0x0800F9B8
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START ply_port
ply_port: @ 0x0800F9CC
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _0800F9E0
	adds r0, r0, r3
	bl sub_0800F856

	THUMB_FUNC_START sub_800F9DC
sub_800F9DC: @ 0x0800F9DC
	strb r3, [r0]
	bx ip
	.align 2, 0
_0800F9E0: .4byte 0x04000060

	THUMB_FUNC_START SoundVSync_rev01
SoundVSync_rev01: @ 0x0800F9E4
	ldr r0, _0800FC90
	ldr r0, [r0]
	ldr r2, _0800FC94
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _0800FA24
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _0800FA24
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _0800FA28
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _0800FA0A
	ldr r1, _0800FA2C
	str r1, [r2, #8]
_0800FA0A:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _0800FA14
	ldr r1, _0800FA2C
	str r1, [r2, #0x14]
_0800FA14:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_0800FA24:
	bx lr
	.align 2, 0
_0800FA28: .4byte 0x040000BC
_0800FA2C: .4byte 0x84400004

	THUMB_FUNC_START MPlayMain_rev01
MPlayMain_rev01: @ 0x0800FA30
	ldr r2, _0800FC94
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _0800FA3A
	bx lr
_0800FA3A:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _0800FA4C
	ldr r0, [r0, #0x3c]
	bl sub_0800FC88
_0800FA4C:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0800FA64
	b _0800FC78
_0800FA64:
	ldr r0, _0800FC90
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0800FA78
	b _0800FC78
_0800FA78:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _0800FBC8
_0800FA80:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_0800FA88:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _0800FA92
	b _0800FBA4
_0800FA92:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0800FAC6
_0800FA9E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0800FABA
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0800FAC0
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _0800FAC0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _0800FAC0
_0800FABA:
	adds r0, r4, #0
	bl ClearChain_rev
_0800FAC0:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0800FA9E
_0800FAC6:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0800FB44
	adds r0, r5, #0
	bl Clear64byte_rev
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _0800FB44
_0800FAEC:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _0800FAF8
	ldrb r1, [r5, #7]
	b _0800FB02
_0800FAF8:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _0800FB02
	strb r1, [r5, #7]
_0800FB02:
	cmp r1, #0xcf
	blo _0800FB18
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0800FC88
	b _0800FB44
_0800FB18:
	cmp r1, #0xb0
	bls _0800FB3A
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800FC88
	ldrb r0, [r5]
	cmp r0, #0
	beq _0800FBA0
	b _0800FB44
_0800FB3A:
	ldr r0, _0800FC8C
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0800FB44:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0800FAEC
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _0800FBA0
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _0800FBA0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0800FB66
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _0800FBA0
_0800FB66:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _0800FB7A
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _0800FB7E
_0800FB7A:
	movs r0, #0x80
	subs r2, r0, r1
_0800FB7E:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _0800FBA0
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _0800FB9A
	movs r1, #0xc
	b _0800FB9C
_0800FB9A:
	movs r1, #3
_0800FB9C:
	orrs r0, r1
	strb r0, [r5]
_0800FBA0:
	mov r3, sl
	mov r4, fp
_0800FBA4:
	subs r6, #1
	ble _0800FBB0
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _0800FA88
_0800FBB0:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _0800FBC2
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _0800FC78
_0800FBC2:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_0800FBC8:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _0800FBD0
	b _0800FA80
_0800FBD0:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_0800FBD4:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _0800FC6E
	movs r1, #0xf
	tst r1, r0
	beq _0800FC6E
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0800FC64
_0800FBF2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _0800FC02
	adds r0, r4, #0
	bl ClearChain_rev
	b _0800FC5E
_0800FC02:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _0800FC20
	bl ChnVolSetAsm
	cmp r6, #0
	beq _0800FC20
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0800FC20:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _0800FC5E
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0800FC34
	movs r2, #0
_0800FC34:
	cmp r6, #0
	beq _0800FC52
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_0800FC88
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _0800FC5E
_0800FC52:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_0800FC5E:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0800FBF2
_0800FC64:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_0800FC6E:
	subs r2, #1
	ble _0800FC78
	movs r0, #0x50
	adds r5, r5, r0
	bgt _0800FBD4
_0800FC78:
	ldr r0, _0800FC94
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_0800FC88
sub_0800FC88: @ 0x0800FC88
	bx r3
	.align 2, 0
_0800FC8C: .4byte gUnknown_081071FC
_0800FC90: .4byte gUnknown_03007FF0
_0800FC94: .4byte 0x68736D53

	THUMB_FUNC_START TrackStop_rev01
TrackStop_rev01: @ 0x0800FC98
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _0800FCD0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0800FCCE
	movs r6, #0
_0800FCAC:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800FCC6
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _0800FCC4
	ldr r3, _0800FCD8
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_0800FC88
_0800FCC4:
	strb r6, [r4]
_0800FCC6:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0800FCAC
_0800FCCE:
	str r4, [r5, #0x20]
_0800FCD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FCD8: .4byte gUnknown_03007FF0

	THUMB_FUNC_START ChnVolSetAsm
ChnVolSetAsm: @ 0x0800FCDC
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0800FCF4
	movs r0, #0xff
_0800FCF4:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0800FD08
	movs r0, #0xff
_0800FD08:
	strb r0, [r4, #3]
	bx lr

	THUMB_FUNC_START ply_note_rev01
ply_note_rev01: @ 0x0800FD0C
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0800FF04
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0800FF08
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0800FD52
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0800FD50
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0800FD50
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_0800FD50:
	str r3, [r5, #0x40]
_0800FD52:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _0800FDA4
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0800FD72
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0800FD74
_0800FD72:
	adds r0, r3, #0
_0800FD74:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _0800FD8C
	b _0800FEF2
_0800FD8C:
	movs r0, #0x80
	tst r0, r2
	beq _0800FDA8
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _0800FDA0
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_0800FDA0:
	ldrb r3, [r6, #1]
	b _0800FDA8
_0800FDA4:
	mov sb, r4
	ldrb r3, [r5, #5]
_0800FDA8:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0800FDB8
	movs r0, #0xff
_0800FDB8:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0800FDF8
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _0800FDD0
	b _0800FEF2
_0800FDD0:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0800FE4C
	movs r0, #0x40
	tst r0, r1
	bne _0800FE4C
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _0800FE4C
	beq _0800FDF0
	b _0800FEF2
_0800FDF0:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _0800FE4C
	b _0800FEF2
_0800FDF8:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0800FE06:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0800FE4C
	movs r0, #0x40
	tst r0, r1
	beq _0800FE20
	cmp r2, #0
	bne _0800FE24
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _0800FE3E
_0800FE20:
	cmp r2, #0
	bne _0800FE40
_0800FE24:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _0800FE30
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _0800FE3E
_0800FE30:
	bhi _0800FE40
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _0800FE3C
	adds r7, r0, #0
	b _0800FE3E
_0800FE3C:
	blo _0800FE40
_0800FE3E:
	mov r8, r4
_0800FE40:
	adds r4, #0x40
	subs r3, #1
	bgt _0800FE06
	mov r4, r8
	cmp r4, #0
	beq _0800FEF2
_0800FE4C:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _0800FE60
	str r4, [r3, #0x30]
_0800FE60:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0800FE72
	adds r1, r5, #0
	bl clear_modM
_0800FE72:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _0800FEAC
	movs r3, #0
_0800FEAC:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0800FEDA
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0800FEC6
	movs r0, #0x70
	tst r0, r1
	bne _0800FEC8
_0800FEC6:
	movs r1, #8
_0800FEC8:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_0800FC88
	b _0800FEE4
_0800FEDA:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_0800FEE4:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0800FEF2:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0800FF04: .4byte gUnknown_03007FF0
_0800FF08: .4byte gUnknown_081071FC

	THUMB_FUNC_START ply_endtie_rev01
ply_endtie_rev01: @ 0x0800FF0C
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _0800FF1E
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _0800FF20
_0800FF1E:
	ldrb r3, [r1, #5]
_0800FF20:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _0800FF48
	movs r4, #0x83
	movs r5, #0x40
_0800FF2A:
	ldrb r2, [r1]
	tst r2, r4
	beq _0800FF42
	tst r2, r5
	bne _0800FF42
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0800FF42
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _0800FF48
_0800FF42:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _0800FF2A
_0800FF48:
	pop {r4, r5}
	bx lr

	THUMB_FUNC_START clear_modM
clear_modM: @ 0x0800FF4C
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _0800FF5C
	movs r2, #0xc
	b _0800FF5E
_0800FF5C:
	movs r2, #3
_0800FF5E:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x0800FF68
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_lfos_rev01
ply_lfos_rev01: @ 0x0800FF74
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0800FF84
	bl clear_modM
_0800FF84:
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_mod_rev01
ply_mod_rev01: @ 0x0800FF88
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0800FF98
	bl clear_modM
_0800FF98:
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START MidiKey2fr
MidiKey2fr: @ 0x0800FF9C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _0800FFB0
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_0800FFB0:
	ldr r3, _0800FFF8
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _0800FFFC
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_0800F380
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_0800F380
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FFF8: .4byte gUnknown_08107018
_0800FFFC: .4byte gUnknown_081070CC

	THUMB_FUNC_START DummyFunc
DummyFunc: @ 0x08010000
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START MPlayContinue
MPlayContinue: @ 0x08010004
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08010018
	cmp r3, r0
	bne _08010016
	ldr r0, [r2, #4]
	ldr r1, _0801001C
	ands r0, r1
	str r0, [r2, #4]
_08010016:
	bx lr
	.align 2, 0
_08010018: .4byte 0x68736D53
_0801001C: .4byte 0x7FFFFFFF

	THUMB_FUNC_START MPlayFadeOut
MPlayFadeOut: @ 0x08010020
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0801003C
	cmp r3, r0
	bne _08010038
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08010038:
	bx lr
	.align 2, 0
_0801003C: .4byte 0x68736D53

	THUMB_FUNC_START m4aSoundInit
m4aSoundInit: @ 0x08010040
	push {r4, r5, r6, lr}
	ldr r0, _08010094
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08010098
	ldr r2, _0801009C
	bl CpuSet
	ldr r0, _080100A0
	bl SoundInit_rev01
	ldr r0, _080100A4
	bl MPlayExtender
	ldr r0, _080100A8
	bl SoundMode_rev01
	ldr r0, _080100AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801008E
	ldr r5, _080100B0
	adds r6, r0, #0
_08010072:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen_rev01
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _080100B4
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08010072
_0801008E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010094: .4byte SoundMainRAM+1
_08010098: .4byte gUnknown_03000C80
_0801009C: .4byte 0x04000100
_080100A0: .4byte gSoundInfo
_080100A4: .4byte gCgbChans
_080100A8: .4byte 0x0097F800
_080100AC: .4byte 0x00000004
_080100B0: .4byte gUnknown_08107BF8
_080100B4: .4byte gMPlayMemAccArea

	THUMB_FUNC_START m4aSoundMain
m4aSoundMain: @ 0x080100B8
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START m4aSongNumStart
m4aSongNumStart: @ 0x080100C4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080100E8
	ldr r1, _080100EC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart_rev01
	pop {r0}
	bx r0
	.align 2, 0
_080100E8: .4byte gUnknown_08107BF8
_080100EC: .4byte gUnknown_08107C28

	THUMB_FUNC_START m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x080100F0
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0801011C
	ldr r1, _08010120
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08010124
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _08010138
	.align 2, 0
_0801011C: .4byte gUnknown_08107BF8
_08010120: .4byte gUnknown_08107C28
_08010124:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08010130
	cmp r2, #0
	bge _08010138
_08010130:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
_08010138:
	pop {r0}
	bx r0

	THUMB_FUNC_START m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x0801013C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08010168
	ldr r1, _0801016C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08010170
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _0801018C
	.align 2, 0
_08010168: .4byte gUnknown_08107BF8
_0801016C: .4byte gUnknown_08107C28
_08010170:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08010182
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
	b _0801018C
_08010182:
	cmp r2, #0
	bge _0801018C
	adds r0, r1, #0
	bl MPlayContinue
_0801018C:
	pop {r0}
	bx r0

	THUMB_FUNC_START m4aSongNumStop
m4aSongNumStop: @ 0x08010190
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080101BC
	ldr r1, _080101C0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080101B6
	adds r0, r2, #0
	bl MPlayStop_rev01
_080101B6:
	pop {r0}
	bx r0
	.align 2, 0
_080101BC: .4byte gUnknown_08107BF8
_080101C0: .4byte gUnknown_08107C28

	THUMB_FUNC_START m4aSongNumContinue
m4aSongNumContinue: @ 0x080101C4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080101F0
	ldr r1, _080101F4
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080101EA
	adds r0, r2, #0
	bl MPlayContinue
_080101EA:
	pop {r0}
	bx r0
	.align 2, 0
_080101F0: .4byte gUnknown_08107BF8
_080101F4: .4byte gUnknown_08107C28

	THUMB_FUNC_START m4aMPlayAllStop
m4aMPlayAllStop: @ 0x080101F8
	push {r4, r5, lr}
	ldr r0, _0801021C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08010216
	ldr r5, _08010220
	adds r4, r0, #0
_08010208:
	ldr r0, [r5]
	bl MPlayStop_rev01
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08010208
_08010216:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801021C: .4byte 0x00000004
_08010220: .4byte gUnknown_08107BF8

	THUMB_FUNC_START m4aMPlayContinue
m4aMPlayContinue: @ 0x08010224
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x08010230
	push {r4, r5, lr}
	ldr r0, _08010254
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801024E
	ldr r5, _08010258
	adds r4, r0, #0
_08010240:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08010240
_0801024E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010254: .4byte 0x00000004
_08010258: .4byte gUnknown_08107BF8

	THUMB_FUNC_START m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x0801025C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x0801026C
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08010284
	cmp r3, r0
	bne _08010282
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08010288
	strh r0, [r2, #0x28]
_08010282:
	bx lr
	.align 2, 0
_08010284: .4byte 0x68736D53
_08010288: .4byte 0x00000101

	THUMB_FUNC_START m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x0801028C
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080102AC
	cmp r3, r0
	bne _080102AA
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _080102B0
	ands r0, r1
	str r0, [r2, #4]
_080102AA:
	bx lr
	.align 2, 0
_080102AC: .4byte 0x68736D53
_080102B0: .4byte 0x7FFFFFFF

	THUMB_FUNC_START m4aMPlayImmInit
m4aMPlayImmInit: @ 0x080102B4
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080102F6
	movs r7, #0x80
_080102C0:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080102EE
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080102EE
	adds r0, r4, #0
	bl Clear64byte_rev
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080102EE:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080102C0
_080102F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START MPlayExtender
MPlayExtender: @ 0x080102FC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080103C4
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _080103C8
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080103CC
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _080103D0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _080103D4
	cmp r6, r0
	bne _080103BC
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _080103D8
	ldr r0, _080103DC
	str r0, [r1, #0x20]
	ldr r0, _080103E0
	str r0, [r1, #0x44]
	ldr r0, _080103E4
	str r0, [r1, #0x4c]
	ldr r0, _080103E8
	str r0, [r1, #0x70]
	ldr r0, _080103EC
	str r0, [r1, #0x74]
	ldr r0, _080103F0
	str r0, [r1, #0x78]
	ldr r0, _080103F4
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080103F8
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080103FC
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08010400
	str r0, [r4, #0x28]
	ldr r0, _08010404
	str r0, [r4, #0x2c]
	ldr r0, _08010408
	str r0, [r4, #0x30]
	ldr r0, _0801040C
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08010410
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_080103BC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080103C4: .4byte 0x04000084
_080103C8: .4byte 0x04000080
_080103CC: .4byte 0x04000063
_080103D0: .4byte gUnknown_03007FF0
_080103D4: .4byte 0x68736D53
_080103D8: .4byte gMPlayJumpTable
_080103DC: .4byte ply_memacc+1
_080103E0: .4byte ply_lfos_rev01+1
_080103E4: .4byte ply_mod_rev01+1
_080103E8: .4byte ply_xcmd+1
_080103EC: .4byte ply_endtie_rev01+1
_080103F0: .4byte SampFreqSet_rev01+1
_080103F4: .4byte TrackStop_rev01+1
_080103F8: .4byte FadeOutBody_rev01+1
_080103FC: .4byte TrkVolPitSet_rev01+1
_08010400: .4byte CgbSound+1
_08010404: .4byte CgbOscOff+1
_08010408: .4byte MidiKey2CgbFr+1
_0801040C: .4byte 0x00000000
_08010410: .4byte 0x05000040

	THUMB_FUNC_START MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x08010414
	svc #0x2a
	bx lr

	THUMB_FUNC_START ClearChain_rev
ClearChain_rev: @ 0x08010418
	push {lr}
	ldr r1, _08010428
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08010428: .4byte gUnknown_03003C08

	THUMB_FUNC_START Clear64byte_rev
Clear64byte_rev: @ 0x0801042C
	push {lr}
	ldr r1, _0801043C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0801043C: .4byte gUnknown_03003C0C

	THUMB_FUNC_START SoundInit_rev01
SoundInit_rev01: @ 0x08010440
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _080104F8
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _0801045C
	ldr r0, _080104FC
	str r0, [r1]
_0801045C:
	ldr r1, _08010500
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0801046A
	ldr r0, _080104FC
	str r0, [r1]
_0801046A:
	ldr r0, _08010504
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08010508
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0801050C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08010510
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08010514
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08010518
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0801051C
	str r0, [r1]
	ldr r0, _08010520
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08010524
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08010528
	str r0, [r5, #0x38]
	ldr r0, _0801052C
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08010530
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _08010534
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080104F8: .4byte 0x040000C4
_080104FC: .4byte 0x84400004
_08010500: .4byte 0x040000D0
_08010504: .4byte 0x040000C6
_08010508: .4byte 0x04000084
_0801050C: .4byte 0x0000A90E
_08010510: .4byte 0x04000089
_08010514: .4byte 0x040000BC
_08010518: .4byte 0x040000A0
_0801051C: .4byte 0x040000A4
_08010520: .4byte gUnknown_03007FF0
_08010524: .4byte 0x050003EC
_08010528: .4byte ply_note_rev01+1
_0801052C: .4byte DummyFunc_rev+1
_08010530: .4byte gMPlayJumpTable
_08010534: .4byte 0x68736D53

	THUMB_FUNC_START SampFreqSet_rev01
SampFreqSet_rev01: @ 0x08010538
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _080105B8
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _080105BC
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _080105C0
	muls r0, r5, r0
	ldr r1, _080105C4
	adds r0, r0, r1
	ldr r1, _080105C8
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _080105CC
	strh r6, [r0]
	ldr r4, _080105D0
	ldr r0, _080105D4
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _080105D8
_0801059C:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _0801059C
	ldr r1, _080105D8
_080105A4:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080105A4
	ldr r1, _080105CC
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080105B8: .4byte gUnknown_03007FF0
_080105BC: .4byte gUnknown_081070FC
_080105C0: .4byte 0x00091D1B
_080105C4: .4byte 0x00001388
_080105C8: .4byte 0x00002710
_080105CC: .4byte 0x04000102
_080105D0: .4byte 0x04000100
_080105D4: .4byte 0x00044940
_080105D8: .4byte 0x04000006

	THUMB_FUNC_START SoundMode_rev01
SoundMode_rev01: @ 0x080105DC
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08010668
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _0801066C
	cmp r1, r0
	bne _08010662
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080105FE
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080105FE:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _0801061E
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08010614:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08010614
_0801061E:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _0801062C
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_0801062C:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _0801064A
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08010670
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_0801064A:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _0801065E
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_0801065E:
	ldr r0, _0801066C
	str r0, [r5]
_08010662:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010668: .4byte gUnknown_03007FF0
_0801066C: .4byte 0x68736D53
_08010670: .4byte 0x04000089

	THUMB_FUNC_START SoundClear_rev01
SoundClear_rev01: @ 0x08010674
	push {r4, r5, r6, r7, lr}
	ldr r0, _080106C0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _080106C4
	cmp r1, r0
	bne _080106BA
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_0801068E:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _0801068E
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080106B6
	movs r5, #1
	movs r7, #0
_080106A2:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080106A2
_080106B6:
	ldr r0, _080106C4
	str r0, [r6]
_080106BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080106C0: .4byte gUnknown_03007FF0
_080106C4: .4byte 0x68736D53

	THUMB_FUNC_START SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x080106C8
	push {lr}
	sub sp, #4
	ldr r0, _08010728
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _0801072C
	adds r0, r1, r3
	cmp r0, #1
	bhi _08010720
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08010730
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _080106F2
	ldr r0, _08010734
	str r0, [r1]
_080106F2:
	ldr r1, _08010738
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08010700
	ldr r0, _08010734
	str r0, [r1]
_08010700:
	ldr r0, _0801073C
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08010740
	mov r0, sp
	bl CpuSet
_08010720:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08010728: .4byte gUnknown_03007FF0
_0801072C: .4byte 0x978C92AD
_08010730: .4byte 0x040000C4
_08010734: .4byte 0x84400004
_08010738: .4byte 0x040000D0
_0801073C: .4byte 0x040000C6
_08010740: .4byte 0x05000318

	THUMB_FUNC_START SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x08010744
	push {r4, lr}
	ldr r0, _08010774
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08010778
	cmp r3, r0
	beq _0801076C
	ldr r0, _0801077C
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_0801076C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010774: .4byte gUnknown_03007FF0
_08010778: .4byte 0x68736D53
_0801077C: .4byte 0x040000C6

	THUMB_FUNC_START MPlayOpen_rev01
MPlayOpen_rev01: @ 0x08010780
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080107E4
	cmp r4, #0x10
	bls _08010794
	movs r4, #0x10
_08010794:
	ldr r0, _080107EC
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080107F0
	cmp r1, r0
	bne _080107E4
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte_rev
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080107C8
	movs r1, #0
_080107BA:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080107BA
_080107C8:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080107D8
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080107D8:
	str r7, [r5, #0x24]
	ldr r0, _080107F4
	str r0, [r5, #0x20]
	ldr r0, _080107F0
	str r0, [r5]
	str r0, [r7, #0x34]
_080107E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080107EC: .4byte gUnknown_03007FF0
_080107F0: .4byte 0x68736D53
_080107F4: .4byte MPlayMain_rev01+1

	THUMB_FUNC_START MPlayStart_rev01
MPlayStart_rev01: @ 0x080107F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080108D8
	cmp r1, r0
	bne _080108CE
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _0801083A
	ldr r0, [r5]
	cmp r0, #0
	beq _08010824
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08010830
_08010824:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0801083A
	cmp r1, #0
	blt _0801083A
_08010830:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _080108CE
_0801083A:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _0801089A
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080108BA
	mov r8, r6
_0801086E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _0801089A
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _0801086E
_0801089A:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080108BA
	movs r1, #0
	mov r8, r1
_080108A4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080108A4
_080108BA:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080108CA
	ldrb r0, [r7, #3]
	bl SoundMode_rev01
_080108CA:
	ldr r0, _080108D8
	str r0, [r5, #0x34]
_080108CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080108D8: .4byte 0x68736D53

	THUMB_FUNC_START MPlayStop_rev01
MPlayStop_rev01: @ 0x080108DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08010918
	cmp r1, r0
	bne _08010912
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _0801090E
_080108FE:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080108FE
_0801090E:
	ldr r0, _08010918
	str r0, [r6, #0x34]
_08010912:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010918: .4byte 0x68736D53

	THUMB_FUNC_START FadeOutBody_rev01
FadeOutBody_rev01: @ 0x0801091C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080109DE
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _0801095C
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080109DE
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010960
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080109B2
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080109B2
	.align 2, 0
_0801095C: .4byte 0x0000FFFF
_08010960:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080109B2
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08010992
_08010976:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _0801098A
	strb r0, [r4]
_0801098A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08010976
_08010992:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080109A6
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080109AA
_080109A6:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080109AA:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080109DE
_080109B2:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080109DE
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080109C0:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080109D6
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080109D6:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080109C0
_080109DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x080109E4
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08010A48
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08010A0C
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08010A0C:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08010A22
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08010A22:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08010A2E
	adds r1, r0, #0
	b _08010A34
_08010A2E:
	cmp r1, #0x7f
	ble _08010A34
	movs r1, #0x7f
_08010A34:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08010A48:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08010A8C
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08010A86
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08010A86:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08010A8C:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START MidiKey2CgbFr
MidiKey2CgbFr: @ 0x08010A98
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08010AD0
	cmp r5, #0x14
	bhi _08010AB4
	movs r5, #0
	b _08010AC2
_08010AB4:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08010AC2
	movs r5, #0x3b
_08010AC2:
	ldr r0, _08010ACC
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08010B32
	.align 2, 0
_08010ACC: .4byte gUnknown_081071B0
_08010AD0:
	cmp r5, #0x23
	bhi _08010ADC
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08010AEE
_08010ADC:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08010AEE
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08010AEE:
	ldr r3, _08010B38
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08010B3C
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08010B32:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08010B38: .4byte gUnknown_08107114
_08010B3C: .4byte gUnknown_08107198

	THUMB_FUNC_START CgbOscOff
CgbOscOff: @ 0x08010B40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08010B68
	cmp r0, #2
	bgt _08010B54
	cmp r0, #1
	beq _08010B5A
	b _08010B7C
_08010B54:
	cmp r1, #3
	beq _08010B70
	b _08010B7C
_08010B5A:
	ldr r1, _08010B64
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08010B84
	.align 2, 0
_08010B64: .4byte 0x04000063
_08010B68:
	ldr r1, _08010B6C
	b _08010B7E
	.align 2, 0
_08010B6C: .4byte 0x04000069
_08010B70:
	ldr r1, _08010B78
	movs r0, #0
	b _08010B86
	.align 2, 0
_08010B78: .4byte 0x04000070
_08010B7C:
	ldr r1, _08010B8C
_08010B7E:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08010B84:
	movs r0, #0x80
_08010B86:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08010B8C: .4byte 0x04000079

	THUMB_FUNC_START CgbModVol
CgbModVol: @ 0x08010B90
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08010BB0
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08010BBC
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08010BCA
_08010BB0:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08010BBC
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08010BCA
_08010BBC:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08010BDA
_08010BCA:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08010BDC
	movs r0, #0xf
_08010BDA:
	strb r0, [r1, #0xa]
_08010BDC:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START CgbSound
CgbSound: @ 0x08010BF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08010C18
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08010C1C
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08010C22
	.align 2, 0
_08010C18: .4byte gUnknown_03007FF0
_08010C1C:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08010C22:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08010C28:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08010C3E
	b _08011028
_08010C3E:
	cmp r6, #2
	beq _08010C70
	cmp r6, #2
	bgt _08010C4C
	cmp r6, #1
	beq _08010C52
	b _08010CA8
_08010C4C:
	cmp r6, #3
	beq _08010C88
	b _08010CA8
_08010C52:
	ldr r0, _08010C64
	str r0, [sp, #8]
	ldr r7, _08010C68
	ldr r2, _08010C6C
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08010CB8
	.align 2, 0
_08010C64: .4byte 0x04000060
_08010C68: .4byte 0x04000062
_08010C6C: .4byte 0x04000063
_08010C70:
	ldr r0, _08010C7C
	str r0, [sp, #8]
	ldr r7, _08010C80
	ldr r2, _08010C84
	b _08010CB0
	.align 2, 0
_08010C7C: .4byte 0x04000061
_08010C80: .4byte 0x04000068
_08010C84: .4byte 0x04000069
_08010C88:
	ldr r0, _08010C9C
	str r0, [sp, #8]
	ldr r7, _08010CA0
	ldr r2, _08010CA4
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08010CB8
	.align 2, 0
_08010C9C: .4byte 0x04000070
_08010CA0: .4byte 0x04000072
_08010CA4: .4byte 0x04000073
_08010CA8:
	ldr r0, _08010D08
	str r0, [sp, #8]
	ldr r7, _08010D0C
	ldr r2, _08010D10
_08010CB0:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08010CB8:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08010DAE
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _08010DD2
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08010D20
	cmp r6, #2
	bgt _08010D14
	cmp r6, #1
	beq _08010D1A
	b _08010D74
	.align 2, 0
_08010D08: .4byte 0x04000071
_08010D0C: .4byte 0x04000078
_08010D10: .4byte 0x04000079
_08010D14:
	cmp r6, #3
	beq _08010D2C
	b _08010D74
_08010D1A:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08010D20:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08010D80
_08010D2C:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08010D54
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08010D68
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_08010D54:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08010D6C
	movs r0, #0xc0
	b _08010D8E
	.align 2, 0
_08010D68: .4byte 0x04000090
_08010D6C:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08010D90
_08010D74:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08010D80:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08010D8E
	movs r0, #0x40
_08010D8E:
	strb r0, [r4, #0x1a]
_08010D90:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _08010DAA
	b _08010EE6
_08010DAA:
	strb r2, [r4, #9]
	b _08010F14
_08010DAE:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08010DE0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _08010DD2
	b _08010F26
_08010DD2:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _08011024
_08010DE0:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08010E20
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08010E20
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08010E52
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08010F14
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08010F14
_08010E20:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08010F14
	cmp r6, #3
	bne _08010E32
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08010E32:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08010E86
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08010E82
_08010E52:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08010DD2
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08010F26
	movs r2, #8
	mov r8, r2
	b _08010F26
_08010E82:
	ldrb r0, [r4, #7]
	b _08010F12
_08010E86:
	cmp r0, #1
	bne _08010E92
_08010E8A:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08010F12
_08010E92:
	cmp r0, #2
	bne _08010ED6
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08010ED2
_08010EAA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08010EBA
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08010E52
_08010EBA:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08010E8A
	movs r0, #8
	mov r8, r0
	b _08010E8A
_08010ED2:
	ldrb r0, [r4, #5]
	b _08010F12
_08010ED6:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08010F10
_08010EE6:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08010EAA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08010F14
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08010F14
_08010F10:
	ldrb r0, [r4, #4]
_08010F12:
	strb r0, [r4, #0xb]
_08010F14:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08010F26
	subs r0, #1
	str r0, [sp]
	b _08010E20
_08010F26:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08010F9E
	cmp r6, #3
	bgt _08010F66
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08010F66
	ldr r0, _08010F50
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08010F58
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08010F54
	b _08010F62
	.align 2, 0
_08010F50: .4byte 0x04000089
_08010F54: .4byte 0x000007FC
_08010F58:
	cmp r0, #0x7f
	bgt _08010F66
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08010F74
_08010F62:
	ands r0, r1
	str r0, [r4, #0x20]
_08010F66:
	cmp r6, #4
	beq _08010F78
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08010F86
	.align 2, 0
_08010F74: .4byte 0x000007FE
_08010F78:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08010F86:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08010F9E:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08011024
	ldr r1, _08010FE8
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08010FF0
	ldr r0, _08010FEC
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _08011024
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08011024
	.align 2, 0
_08010FE8: .4byte 0x04000081
_08010FEC: .4byte gUnknown_081071EC
_08010FF0:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _08011024
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08011024
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08011024:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08011028:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08011032
	b _08010C28
_08011032:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START MPlayTempoControl
MPlayTempoControl: @ 0x08011044
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08011068
	cmp r3, r0
	bne _08011060
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08011060:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011068: .4byte 0x68736D53

	THUMB_FUNC_START MPlayVolumeControl
MPlayVolumeControl: @ 0x0801106C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080110D0
	cmp r3, r0
	bne _080110C4
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080110C0
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_0801109C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080110B6
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080110B6
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080110B6:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0801109C
_080110C0:
	ldr r0, _080110D0
	str r0, [r4, #0x34]
_080110C4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080110D0: .4byte 0x68736D53

	THUMB_FUNC_START MPlayPitchControl
MPlayPitchControl: @ 0x080110D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08011144
	cmp r3, r0
	bne _08011136
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08011132
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_0801110C:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08011128
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08011128
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08011128:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0801110C
_08011132:
	ldr r0, _08011144
	str r0, [r4, #0x34]
_08011136:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011144: .4byte 0x68736D53

	THUMB_FUNC_START MPlayPanpotControl
MPlayPanpotControl: @ 0x08011148
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080111AC
	cmp r3, r0
	bne _080111A0
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0801119C
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08011178:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08011192
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08011192
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08011192:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08011178
_0801119C:
	ldr r0, _080111AC
	str r0, [r4, #0x34]
_080111A0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080111AC: .4byte 0x68736D53

	THUMB_FUNC_START MP_clear_modM
MP_clear_modM: @ 0x080111B0
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080111C4
	movs r0, #0xc
	b _080111C6
_080111C4:
	movs r0, #3
_080111C6:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START MPlayModDepthSet
MPlayModDepthSet: @ 0x080111D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08011240
	cmp r1, r0
	bne _08011230
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _0801122C
	mov sb, r8
_08011200:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08011222
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08011222
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08011222
	adds r0, r4, #0
	bl MP_clear_modM
_08011222:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08011200
_0801122C:
	ldr r0, _08011240
	str r0, [r6, #0x34]
_08011230:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011240: .4byte 0x68736D53

	THUMB_FUNC_START MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x08011244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080112B4
	cmp r1, r0
	bne _080112A4
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080112A0
	mov sb, r8
_08011274:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08011296
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08011296
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08011296
	adds r0, r4, #0
	bl MP_clear_modM
_08011296:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08011274
_080112A0:
	ldr r0, _080112B4
	str r0, [r6, #0x34]
_080112A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080112B4: .4byte 0x68736D53

	THUMB_FUNC_START ply_memacc
ply_memacc: @ 0x080112B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080112DC
	b _0801140A
_080112DC:
	lsls r0, r5, #2
	ldr r1, _080112E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080112E8: .4byte _080112EC
_080112EC: @ jump table
	.4byte _08011334 @ case 0
	.4byte _08011338 @ case 1
	.4byte _08011340 @ case 2
	.4byte _08011348 @ case 3
	.4byte _08011352 @ case 4
	.4byte _08011360 @ case 5
	.4byte _0801136E @ case 6
	.4byte _08011376 @ case 7
	.4byte _0801137E @ case 8
	.4byte _08011386 @ case 9
	.4byte _0801138E @ case 10
	.4byte _08011396 @ case 11
	.4byte _0801139E @ case 12
	.4byte _080113AC @ case 13
	.4byte _080113BA @ case 14
	.4byte _080113C8 @ case 15
	.4byte _080113D6 @ case 16
	.4byte _080113E4 @ case 17
_08011334:
	strb r2, [r3]
	b _0801140A
_08011338:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _0801140A
_08011340:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _0801140A
_08011348:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _0801140A
_08011352:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _0801140A
_08011360:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _0801140A
_0801136E:
	ldrb r3, [r3]
	cmp r3, r2
	beq _080113F0
	b _08011404
_08011376:
	ldrb r3, [r3]
	cmp r3, r2
	bne _080113F0
	b _08011404
_0801137E:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _080113F0
	b _08011404
_08011386:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _080113F0
	b _08011404
_0801138E:
	ldrb r3, [r3]
	cmp r3, r2
	bls _080113F0
	b _08011404
_08011396:
	ldrb r3, [r3]
	cmp r3, r2
	blo _080113F0
	b _08011404
_0801139E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _080113F0
	b _08011404
_080113AC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _080113F0
	b _08011404
_080113BA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080113F0
	b _08011404
_080113C8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080113F0
	b _08011404
_080113D6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _080113F0
	b _08011404
_080113E4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08011404
_080113F0:
	ldr r0, _08011400
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _0801140A
	.align 2, 0
_08011400: .4byte gUnknown_03003B84
_08011404:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_0801140A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START ply_xcmd
ply_xcmd: @ 0x08011410
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _0801142C
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0801142C: .4byte gUnknown_08107230

	THUMB_FUNC_START ply_xxx
ply_xxx: @ 0x08011430
	push {lr}
	ldr r2, _08011440
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08011440: .4byte gMPlayJumpTable

	THUMB_FUNC_START ply_xwave
ply_xwave: @ 0x08011444
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _0801147C
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08011480
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08011484
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08011488
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801147C: .4byte 0xFFFFFF00
_08011480: .4byte 0xFFFF00FF
_08011484: .4byte 0xFF00FFFF
_08011488: .4byte 0x00FFFFFF

	THUMB_FUNC_START ply_xtype
ply_xtype: @ 0x0801148C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_xatta
ply_xatta: @ 0x080114A0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_xdeca
ply_xdeca: @ 0x080114B4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_xsust
ply_xsust: @ 0x080114C8
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_xrele
ply_xrele: @ 0x080114DC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_xiecv
ply_xiecv: @ 0x080114F0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	THUMB_FUNC_START ply_xiecl
ply_xiecl: @ 0x080114FC
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	THUMB_FUNC_START ply_xleng
ply_xleng: @ 0x08011508
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ply_xswee
ply_xswee: @ 0x0801151C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START DummyFunc_rev
DummyFunc_rev: @ 0x08011530
	bx lr
	.byte 0x00, 0x00
    