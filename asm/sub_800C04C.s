.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800C04C
sub_800C04C: @ 0x0800C04C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _0800C068
	ldr r1, [r0, #4]
	adds r0, r1, #0
	bl sub_800BBAC
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C06C
	.align 2, 0
_0800C068: .4byte gUnknown_03002BB0
_0800C06C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C074
sub_800C074: @ 0x0800C074
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800C090
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	mvns r1, r0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	cmp r0, #0
	bne _0800C096
	movs r0, #0
	b _0800C09C
	.align 2, 0
_0800C090: .4byte 0x04000130
	.byte 0x02, 0xE0
_0800C096:
	movs r0, #0x80
	lsls r0, r0, #0x18
	b _0800C09C
_0800C09C:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C0A4
sub_800C0A4: @ 0x0800C0A4
	push {r7, lr}
	mov r7, sp
	bl sub_800C074
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C0B2
_0800C0B2:
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C0B8
sub_800C0B8: @ 0x0800C0B8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C074
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C0CC
_0800C0CC:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C0D4
sub_800C0D4: @ 0x0800C0D4
	push {r4, r5, r7, lr}
	sub sp, #0x78
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _0800C0FC
	movs r2, #0x70
	bl memcpy
	ldr r2, _0800C100
	movs r0, #0
	movs r1, #0
	bl DrawString
	movs r0, #0
	str r0, [r7, #0x74]
_0800C0F4:
	ldr r0, [r7, #0x74]
	cmp r0, #5
	ble _0800C104
	b _0800C1AC
	.align 2, 0
_0800C0FC: .4byte gUnknown_08083088
_0800C100: .4byte gUnknown_080830F8
_0800C104:
	ldr r0, _0800C19C
	adds r1, r7, #4
	ldr r2, [r7, #0x74]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #3
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _0800C19C
	adds r1, r7, #4
	ldr r2, [r7, #0x74]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #3
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0, #4]
	ldr r2, _0800C1A0
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C19C
	adds r1, r7, #4
	ldr r2, [r7, #0x74]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #3
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, _0800C1A4
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C19C
	adds r1, r7, #4
	ldr r2, [r7, #0x74]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #3
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, _0800C1A8
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, [r7, #0x74]
	adds r1, r0, #1
	str r1, [r7, #0x74]
	b _0800C0F4
	.align 2, 0
_0800C19C: .4byte gUnknown_03001B40
_0800C1A0: .4byte gUnknown_080830FC
_0800C1A4: .4byte gUnknown_08083104
_0800C1A8: .4byte gUnknown_0808310C
_0800C1AC:
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x30
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x34
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0, #4]
	ldr r2, _0800C2B0
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x30
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r2, _0800C2B4
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x30
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r2, _0800C2B8
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x30
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r2, _0800C2BC
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x30
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r2, _0800C2C0
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x30
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r2, _0800C2B4
	movs r0, #2
	movs r1, #4
	bl DrawString
	ldr r0, _0800C2AC
	adds r1, r7, #4
	ldr r2, [r7]
	adds r4, r2, #0
	lsls r3, r4, #3
	subs r3, r3, r2
	lsls r2, r3, #3
	adds r1, #0x30
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r2, _0800C2C4
	movs r0, #2
	movs r1, #4
	bl DrawString
	add sp, #0x78
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C2AC: .4byte gUnknown_03001B40
_0800C2B0: .4byte gUnknown_08083110
_0800C2B4: .4byte gUnknown_08083118
_0800C2B8: .4byte gUnknown_08083120
_0800C2BC: .4byte gUnknown_0808312C
_0800C2C0: .4byte gUnknown_08083138
_0800C2C4: .4byte gUnknown_08083144
