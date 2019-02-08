.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800B0A0
sub_800B0A0: @ 0x0800B0A0
	push {r4, r7, lr}
	sub sp, #0x28
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _0800B148
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	adds r0, r7, #0
	adds r0, #0x14
	ldr r2, _0800B14C
	adds r1, r2, #0
	ldr r4, _0800B150
	adds r2, r2, r4
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r1, _0800B14C
	adds r0, r1, #0
	ldr r4, _0800B150
	adds r1, r1, r4
	adds r2, r7, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, _0800B154
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r2, _0800B158
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r2, _0800B15C
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r2, _0800B160
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r2, _0800B164
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r2, _0800B168
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r2, _0800B16C
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r2, _0800B170
	movs r0, #0
	movs r1, #4
	bl DrawString
	bl sub_800D9D8
_0800B132:
	ldr r0, _0800B174
	ldrh r1, [r0, #2]
	movs r2, #8
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800B178
	b _0800B1C8
	.align 2, 0
_0800B148: .4byte gUnknown_0807A8EC
_0800B14C: .4byte gUnknown_03001B40
_0800B150: .4byte 0x0000100C
_0800B154: .4byte gUnknown_0807A900
_0800B158: .4byte gUnknown_0807A91C
_0800B15C: .4byte gUnknown_0807A938
_0800B160: .4byte gUnknown_0807A954
_0800B164: .4byte gUnknown_0807A974
_0800B168: .4byte gUnknown_0807A990
_0800B16C: .4byte gUnknown_0807A9AC
_0800B170: .4byte gUnknown_0807A9CC
_0800B174: .4byte gUnknown_03000460
_0800B178:
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	bl sub_800D8B0
	ldr r0, _0800B1AC
	movs r1, #2
	str r1, [r0]
	ldr r0, _0800B1AC
	movs r1, #0xd
	str r1, [r0, #4]
	ldr r0, _0800B1B0
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800B1B8
	ldr r2, _0800B1B4
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _0800B1C2
	.align 2, 0
_0800B1AC: .4byte gUnknown_03001B40
_0800B1B0: .4byte gUnknown_0300045C
_0800B1B4: .4byte gUnknown_0807A9E4
_0800B1B8:
	ldr r2, _0800B1C4
	movs r0, #0
	movs r1, #1
	bl DrawString
_0800B1C2:
	b _0800B132
	.align 2, 0
_0800B1C4: .4byte gUnknown_0807A9FC
_0800B1C8:
	ldr r1, _0800B1E8
	adds r0, r1, #0
	ldr r4, _0800B1EC
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x14
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	add sp, #0x28
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1E8: .4byte gUnknown_03001B40
_0800B1EC: .4byte 0x0000100C

	THUMB_FUNC_START sub_800B1F0
sub_800B1F0: @ 0x0800B1F0
	push {r7, lr}
	sub sp, #0x58
	add r7, sp, #4
	movs r0, #0
	str r0, [r7, #0x4c]
	ldr r0, _0800B278
	movs r1, #8
	str r1, [r0]
	ldr r0, _0800B278
	movs r1, #9
	str r1, [r0, #4]
	ldr r2, _0800B27C
	movs r0, #0
	movs r1, #4
	bl DrawString
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	ldr r0, _0800B280
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x50]
	ldr r1, _0800B284
	str r1, [r0]
	ldr r1, [r7, #0x50]
	adds r0, r1, #4
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r1, [r7, #0x50]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800B288
	str r1, [r0]
	ldr r0, [r7, #0x50]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r0, r7, #0
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0, #0x28]
	adds r0, r7, #0
	adds r1, r0, #0
	adds r0, #0x4b
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_8011534
_0800B268:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_8011F08
	cmp r0, #0
	beq _0800B28C
	b _0800B2E0
	.align 2, 0
_0800B278: .4byte gUnknown_03001B40
_0800B27C: .4byte gUnknown_0807AA4C
_0800B280: .4byte 0x040000D4
_0800B284: .4byte gUnknown_0807AA6C
_0800B288: .4byte 0x84002157
_0800B28C:
	ldr r0, [r7, #0x4c]
	adds r1, r0, #1
	str r1, [r7, #0x4c]
	ldr r0, [r7, #0x4c]
	cmp r0, #0x78
	ble _0800B29C
	movs r0, #1
	b _0800B2E4
_0800B29C:
	movs r0, #1
	bl sub_800D640
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_80115C0
	adds r0, r7, #0
	ldrb r1, [r0, #0x1e]
	movs r2, #0xe
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _0800B2D6
	adds r0, r7, #0
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _0800B2D6
	adds r0, r7, #0
	ldr r1, _0800B2D8
	ldr r2, _0800B2DC
	movs r3, #1
	str r3, [sp]
	movs r3, #0
	bl sub_8011DC0
_0800B2D6:
	b _0800B268
	.align 2, 0
_0800B2D8: .4byte gUnknown_020000C0
_0800B2DC: .4byte 0x0000849C
_0800B2E0:
	movs r0, #0
	b _0800B2E4
_0800B2E4:
	add sp, #0x58
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B2EC
sub_800B2EC: @ 0x0800B2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0xa
	strh r0, [r1]
	ldr r0, _0800B324
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800B328
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B32C
	movs r1, #0xe0
	lsls r1, r1, #7
	mov r8, r1
	b _0800B332
	.align 2, 0
_0800B324: .4byte 0x04000134
_0800B328: .4byte 0x04000128
_0800B32C:
	movs r2, #0xc0
	lsls r2, r2, #6
	mov r8, r2
_0800B332:
	mov r6, r8
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x14
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B346
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r6, r1
_0800B346:
	adds r5, r6, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B35A
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r5, r1
_0800B35A:
	adds r4, r5, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B36C
	movs r1, #0x80
	orrs r4, r1
_0800B36C:
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B398
	movs r2, #8
	mov r1, sb
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800B39E
_0800B398:
	mov r2, sb
	orrs r2, r4
	adds r1, r2, #0
_0800B39E:
	strh r1, [r0]
	ldr r0, _0800B4F0
	movs r1, #0x80
	strh r1, [r0]
	bl sub_800EC94
	ldr r0, _0800B4F4
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #5
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	bl sub_800EC94
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	lsrs r1, r2, #5
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	lsrs r1, r2, #6
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	lsls r3, r2, #0x18
	ldr r1, [r1]
	adds r2, r1, #0
	orrs r2, r3
	str r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, [r0]
	cmp r1, #0
	beq _0800B4A8
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	lsls r3, r2, #0x10
	ldr r1, [r1]
	adds r2, r1, #0
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	lsls r3, r2, #8
	ldr r1, [r1]
	adds r2, r1, #0
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	ldr r1, [r1]
	orrs r2, r1
	str r2, [r0]
_0800B4A8:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #5
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800B4F0
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #7
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	movs r0, #0
	b _0800B4FC
	.align 2, 0
_0800B4F0: .4byte 0x04000202
_0800B4F4: .4byte 0x04000128
_0800B4F8: .4byte 0x0400012A
_0800B4FC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B50C
sub_800B50C: @ 0x0800B50C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B544
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800B548
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B54C
	movs r1, #0xe0
	lsls r1, r1, #7
	mov r8, r1
	b _0800B552
	.align 2, 0
_0800B544: .4byte 0x04000134
_0800B548: .4byte 0x04000128
_0800B54C:
	movs r2, #0xc0
	lsls r2, r2, #6
	mov r8, r2
_0800B552:
	mov r6, r8
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x14
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B566
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r6, r1
_0800B566:
	adds r5, r6, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B57A
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r5, r1
_0800B57A:
	adds r4, r5, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B58C
	movs r1, #0x80
	orrs r4, r1
_0800B58C:
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B5B8
	movs r2, #8
	mov r1, sb
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800B5BE
_0800B5B8:
	mov r2, sb
	orrs r2, r4
	adds r1, r2, #0
_0800B5BE:
	strh r1, [r0]
	ldr r0, _0800B650
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800B654
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, [r0]
	cmp r1, #0
	beq _0800B65C
	ldr r0, _0800B658
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #8
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #0xff
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	b _0800B68C
	.align 2, 0
_0800B650: .4byte 0x04000202
_0800B654: .4byte 0x04000128
_0800B658: .4byte 0x0400012A
_0800B65C:
	ldr r0, _0800B708
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B708
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800B68C:
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B70C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	bl sub_800EC94
	ldr r0, _0800B70C
	ldr r1, _0800B70C
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800B70C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B710
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #7
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	movs r0, #0
	b _0800B714
	.align 2, 0
_0800B708: .4byte 0x0400012A
_0800B70C: .4byte 0x04000128
_0800B710: .4byte 0x04000202
_0800B714:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    