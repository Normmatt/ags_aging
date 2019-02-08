.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_80020E8
sub_80020E8: @ 0x080020E8
	push {r4, r5, r7, lr}
	sub sp, #0xc
	add r7, sp, #4
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x81
	lsls r1, r1, #0x12
	ldr r2, [r7]
	adds r3, r2, #4
	str r3, [sp]
	movs r2, #0x55
	ldr r3, [r7]
	bl sub_800CE6C
	cmp r0, #0
	beq _08002116
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #4]
_08002116:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x81
	lsls r1, r1, #0x12
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #8
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0xc
	bl sub_800CED8
	cmp r0, #0
	beq _0800213A
	ldr r0, [r7, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #4]
_0800213A:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x81
	lsls r1, r1, #0x12
	ldr r2, _080021BC
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0x10
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x14
	str r5, [sp]
	bl sub_800CF2C
	cmp r0, #0
	beq _08002162
	ldr r0, [r7, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #4]
_08002162:
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r1, #0
	movs r1, #2
	bl sub_800CF8C
	cmp r0, #0
	beq _0800217A
	ldr r0, [r7, #4]
	movs r1, #8
	orrs r0, r1
	str r0, [r7, #4]
_0800217A:
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r1, #0
	movs r1, #2
	movs r2, #0x10
	bl sub_800D118
	cmp r0, #0
	beq _08002194
	ldr r0, [r7, #4]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r7, #4]
_08002194:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080021C0
	movs r1, #0x23
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrh r1, [r0]
	ldr r0, _080021C4
	cmp r1, r0
	beq _080021B6
	ldr r0, [r7, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #4]
_080021B6:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _080021C8
	.align 2, 0
_080021BC: .4byte 0xAAAAAAAA
_080021C0: .4byte gUnknown_02000001
_080021C4: .4byte 0x00002301
_080021C8:
	add sp, #0xc
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80021D0
sub_80021D0: @ 0x080021D0
	push {r7, lr}
	sub sp, #0x20
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_80020E8
	adds r1, r0, #0
	adds r0, r1, #0
	b _080021E4
_080021E4:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80021EC
sub_80021EC: @ 0x080021EC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_80020E8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08002204
_08002204:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800220C
sub_800220C: @ 0x0800220C
	push {r7, lr}
	sub sp, #0x50
	mov r7, sp
	str r0, [r7]
	adds r1, r7, #4
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	ldr r1, _08002260
	movs r0, #1
	bl sub_800D68C
	ldr r0, _08002264
	movs r1, #0
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _08002268
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08002268
	movs r1, #8
	strh r1, [r0]
	movs r0, #1
	bl SetIE
	movs r0, #1
	bl SetIME
_0800224A:
	ldr r0, _08002264
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800226C
	b _0800226E
	.align 2, 0
_08002260: .4byte sub_8002304+1
_08002264: .4byte gUnknown_03007FF8
_08002268: .4byte 0x04000004
_0800226C:
	b _0800224A
_0800226E:
	ldr r0, _0800228C
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_800D854
	movs r0, #0
	str r0, [r7, #0x4c]
_08002284:
	ldr r0, [r7, #0x4c]
	cmp r0, #5
	ble _08002290
	b _080022B4
	.align 2, 0
_0800228C: .4byte 0x04000004
_08002290:
	ldr r0, [r7, #0x4c]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, _080022B0
	ldr r2, [r7, #0x4c]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, [r7, #0x4c]
	adds r1, r0, #1
	str r1, [r7, #0x4c]
	b _08002284
	.align 2, 0
_080022B0: .4byte gUnknown_03001088
_080022B4:
	ldr r0, _080022BC
	ldr r1, [r0]
	adds r0, r1, #0
	b _080022C0
	.align 2, 0
_080022BC: .4byte gUnknown_03001080
_080022C0:
	add sp, #0x50
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80022C8
sub_80022C8: @ 0x080022C8
	push {r7, lr}
	sub sp, #0x20
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800220C
	adds r1, r0, #0
	adds r0, r1, #0
	b _080022DC
_080022DC:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80022E4
sub_80022E4: @ 0x080022E4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_800220C
	adds r1, r0, #0
	adds r0, r1, #0
	b _080022FC
_080022FC:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002304
sub_8002304: @ 0x08002304
	push {r4, r5, r7, lr}
	sub sp, #0x28
	add r7, sp, #4
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	ldr r0, _08002348
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800234C
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _08002350
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _08002348
	ldr r1, _08002354
	str r1, [r0]
	ldr r0, _0800234C
	str r0, [r7, #0x20]
_08002334:
	ldr r1, [r7, #0x20]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002358
	b _0800235A
	.align 2, 0
_08002348: .4byte 0x040000DC
_0800234C: .4byte 0x040000D4
_08002350: .4byte 0x040000D8
_08002354: .4byte 0x84001F40
_08002358:
	b _08002334
_0800235A:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r1, _08002428
	adds r3, r7, #4
	adds r2, r7, #4
	adds r4, r2, #4
	str r4, [sp]
	movs r2, #0x55
	bl sub_800CE6C
	cmp r0, #0
	beq _0800237A
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_0800237A:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r1, _08002428
	adds r3, r7, #4
	adds r2, r3, #0
	adds r2, #8
	adds r4, r7, #4
	adds r3, r4, #0
	adds r3, #0xc
	bl sub_800CED8
	cmp r0, #0
	beq _0800239C
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0800239C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r1, _08002428
	ldr r2, _0800242C
	adds r4, r7, #4
	adds r3, r4, #0
	adds r3, #0x10
	adds r4, r7, #4
	adds r5, r4, #0
	adds r5, #0x14
	str r5, [sp]
	bl sub_800CF2C
	cmp r0, #0
	beq _080023C2
	ldr r0, [r7]
	movs r1, #4
	orrs r0, r1
	str r0, [r7]
_080023C2:
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r1, #0
	movs r1, #0
	bl sub_800CF8C
	cmp r0, #0
	beq _080023DA
	ldr r0, [r7]
	movs r1, #8
	orrs r0, r1
	str r0, [r7]
_080023DA:
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_800D118
	cmp r0, #0
	beq _080023F4
	ldr r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r7]
_080023F4:
	ldr r0, _08002430
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002434
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _08002438
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _08002430
	ldr r1, _0800243C
	str r1, [r0]
	ldr r0, _08002434
	str r0, [r7, #0x20]
_08002414:
	ldr r1, [r7, #0x20]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002440
	b _08002442
	.align 2, 0
_08002428: .4byte gUnknown_03007D00
_0800242C: .4byte 0xAAAAAAAA
_08002430: .4byte 0x040000DC
_08002434: .4byte 0x040000D4
_08002438: .4byte 0x040000D8
_0800243C: .4byte 0x84001F40
_08002440:
	b _08002414
_08002442:
	movs r0, #0
	str r0, [r7, #0x1c]
_08002446:
	ldr r0, [r7, #0x1c]
	cmp r0, #5
	ble _0800244E
	b _08002474
_0800244E:
	ldr r0, _08002470
	ldr r1, [r7, #0x1c]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	adds r1, r7, #4
	ldr r2, [r7, #0x1c]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, [r7, #0x1c]
	adds r1, r0, #1
	str r1, [r7, #0x1c]
	b _08002446
	.align 2, 0
_08002470: .4byte gUnknown_03001088
_08002474:
	ldr r0, _08002484
	ldr r1, [r7]
	str r1, [r0]
	add sp, #0x28
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002484: .4byte gUnknown_03001080

	THUMB_FUNC_START sub_8002488
sub_8002488: @ 0x08002488
	push {r4, r5, r7, lr}
	sub sp, #0x14
	add r7, sp, #4
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _080024E8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080024EC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _080024F0
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _080024E8
	ldr r1, _080024F4
	str r1, [r0]
	ldr r0, _080024EC
	str r0, [r7, #0xc]
_080024D4:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _080024F8
	b _080024FA
	.align 2, 0
_080024E8: .4byte 0x040000DC
_080024EC: .4byte 0x040000D4
_080024F0: .4byte 0x040000D8
_080024F4: .4byte 0x84000100
_080024F8:
	b _080024D4
_080024FA:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _080025C8
	ldr r2, _080025CC
	ldr r3, [r7]
	adds r4, r3, #4
	str r4, [sp]
	ldr r3, [r7]
	bl sub_800CF2C
	cmp r0, #0
	beq _0800251A
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #4]
_0800251A:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _080025C8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #8
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0xc
	bl sub_800CED8
	cmp r0, #0
	beq _0800253C
	ldr r0, [r7, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #4]
_0800253C:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _080025C8
	ldr r2, _080025D0
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0x10
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x14
	str r5, [sp]
	bl sub_800CF2C
	cmp r0, #0
	beq _08002562
	ldr r0, [r7, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #4]
_08002562:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r1, #0
	movs r1, #0
	bl sub_800CF8C
	cmp r0, #0
	beq _0800257A
	ldr r0, [r7, #4]
	movs r1, #8
	orrs r0, r1
	str r0, [r7, #4]
_0800257A:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_800D118
	cmp r0, #0
	beq _08002594
	ldr r0, [r7, #4]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r7, #4]
_08002594:
	ldr r0, _080025D4
	movs r1, #0
	str r1, [r0]
	ldr r0, _080025D8
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _080025DC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _080025D4
	ldr r1, _080025E0
	str r1, [r0]
	ldr r0, _080025D8
	str r0, [r7, #0xc]
_080025B4:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _080025E4
	b _080025E6
	.align 2, 0
_080025C8: .4byte 0x05000400
_080025CC: .4byte 0x55555555
_080025D0: .4byte 0xAAAAAAAA
_080025D4: .4byte 0x040000DC
_080025D8: .4byte 0x040000D4
_080025DC: .4byte 0x040000D8
_080025E0: .4byte 0x84000100
_080025E4:
	b _080025B4
_080025E6:
	movs r0, #0x80
	lsls r0, r0, #0x13
	adds r1, r7, #0
	adds r1, #0xa
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08002604
_08002604:
	add sp, #0x14
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800260C
sub_800260C: @ 0x0800260C
	push {r7, lr}
	sub sp, #0x20
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_8002488
	adds r1, r0, #0
	adds r0, r1, #0
	b _08002620
_08002620:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002628
sub_8002628: @ 0x08002628
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8002488
	adds r1, r0, #0
	adds r0, r1, #0
	b _08002640
_08002640:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002648
sub_8002648: @ 0x08002648
	push {r4, r5, r7, lr}
	sub sp, #0x14
	add r7, sp, #4
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _080026A8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080026AC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _080026B0
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _080026A8
	ldr r1, _080026B4
	str r1, [r0]
	ldr r0, _080026AC
	str r0, [r7, #0xc]
_08002694:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _080026B8
	b _080026BA
	.align 2, 0
_080026A8: .4byte 0x040000DC
_080026AC: .4byte 0x040000D4
_080026B0: .4byte 0x040000D8
_080026B4: .4byte 0x84006000
_080026B8:
	b _08002694
_080026BA:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _08002788
	ldr r2, _0800278C
	ldr r3, [r7]
	adds r4, r3, #4
	str r4, [sp]
	ldr r3, [r7]
	bl sub_800CF2C
	cmp r0, #0
	beq _080026DA
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #4]
_080026DA:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _08002788
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #8
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0xc
	bl sub_800CED8
	cmp r0, #0
	beq _080026FC
	ldr r0, [r7, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #4]
_080026FC:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _08002788
	ldr r2, _08002790
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0x10
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x14
	str r5, [sp]
	bl sub_800CF2C
	cmp r0, #0
	beq _08002722
	ldr r0, [r7, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #4]
_08002722:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r1, #0
	movs r1, #0
	bl sub_800CF8C
	cmp r0, #0
	beq _0800273A
	ldr r0, [r7, #4]
	movs r1, #8
	orrs r0, r1
	str r0, [r7, #4]
_0800273A:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_800D118
	cmp r0, #0
	beq _08002754
	ldr r0, [r7, #4]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r7, #4]
_08002754:
	ldr r0, _08002794
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002798
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _0800279C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _08002794
	ldr r1, _080027A0
	str r1, [r0]
	ldr r0, _08002798
	str r0, [r7, #0xc]
_08002774:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _080027A4
	b _080027A6
	.align 2, 0
_08002788: .4byte 0x06018000
_0800278C: .4byte 0x55555555
_08002790: .4byte 0xAAAAAAAA
_08002794: .4byte 0x040000DC
_08002798: .4byte 0x040000D4
_0800279C: .4byte 0x040000D8
_080027A0: .4byte 0x84006000
_080027A4:
	b _08002774
_080027A6:
	movs r0, #0x80
	lsls r0, r0, #0x13
	adds r1, r7, #0
	adds r1, #0xa
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _080027C4
_080027C4:
	add sp, #0x14
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80027CC
sub_80027CC: @ 0x080027CC
	push {r4, r5, r7, lr}
	sub sp, #0x38
	add r7, sp, #4
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x1c
	ldr r1, _080028B4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, _080028B8
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, _080028BC
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, _080028C0
	ldrh r2, [r0, #4]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #4]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, _080028C4
	ldrh r2, [r0, #6]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #6]
	ldr r0, _080028C8
	ldr r1, [r0]
	str r1, [r7, #0x14]
	ldr r0, _080028CC
	ldr r1, [r0]
	str r1, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x1c
	ldr r1, _080028B8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r4, _080028D0
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _080028D4
	movs r1, #0
	str r1, [r0]
	ldr r0, _080028D8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _080028DC
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _080028D4
	ldr r1, _080028E0
	str r1, [r0]
	ldr r0, _080028D8
	str r0, [r7, #0x30]
_080028A0:
	ldr r1, [r7, #0x30]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _080028E4
	b _080028E6
	.align 2, 0
_080028B4: .4byte gUnknown_080190D8
_080028B8: .4byte 0x04000020
_080028BC: .4byte 0x04000022
_080028C0: .4byte 0x04000024
_080028C4: .4byte 0x04000026
_080028C8: .4byte 0x04000028
_080028CC: .4byte 0x0400002C
_080028D0: .4byte 0x00000403
_080028D4: .4byte 0x040000DC
_080028D8: .4byte 0x040000D4
_080028DC: .4byte 0x040000D8
_080028E0: .4byte 0x84006000
_080028E4:
	b _080028A0
_080028E6:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _080029F8
	ldr r2, _080029FC
	ldr r3, [r7]
	adds r4, r3, #4
	str r4, [sp]
	ldr r3, [r7]
	bl sub_800CF2C
	cmp r0, #0
	beq _08002906
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #4]
_08002906:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _080029F8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #8
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0xc
	bl sub_800CED8
	cmp r0, #0
	beq _08002928
	ldr r0, [r7, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #4]
_08002928:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _080029F8
	ldr r2, _08002A00
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0x10
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x14
	str r5, [sp]
	bl sub_800CF2C
	cmp r0, #0
	beq _0800294E
	ldr r0, [r7, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #4]
_0800294E:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _080029F8
	ldr r2, [r7]
	adds r3, r2, #0
	adds r3, #0x18
	ldr r2, [r7]
	adds r4, r2, #0
	adds r4, #0x1c
	str r4, [sp]
	movs r2, #0
	bl sub_800CF2C
	cmp r0, #0
	beq _08002974
	ldr r0, [r7, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #4]
_08002974:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _080029F8
	movs r2, #1
	rsbs r2, r2, #0
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0x18
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x1c
	str r5, [sp]
	bl sub_800CF2C
	cmp r0, #0
	beq _0800299C
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0800299C:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, _080029F8
	ldr r2, _08002A04
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0x18
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x1c
	str r5, [sp]
	bl sub_800D52C
	cmp r0, #0
	beq _080029C4
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r7, #4]
_080029C4:
	ldr r0, _08002A08
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002A0C
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _08002A10
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _08002A08
	ldr r1, _08002A14
	str r1, [r0]
	ldr r0, _08002A0C
	str r0, [r7, #0x30]
_080029E4:
	ldr r1, [r7, #0x30]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002A18
	b _08002A1A
	.align 2, 0
_080029F8: .4byte 0x06018000
_080029FC: .4byte 0x55555555
_08002A00: .4byte 0xAAAAAAAA
_08002A04: .4byte 0x0A1B2C3D
_08002A08: .4byte 0x040000DC
_08002A0C: .4byte 0x040000D4
_08002A10: .4byte 0x040000D8
_08002A14: .4byte 0x84006000
_08002A18:
	b _080029E4
_08002A1A:
	ldr r0, _08002A6C
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08002A70
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1, #2]
	strh r2, [r0]
	ldr r0, _08002A74
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1, #4]
	strh r2, [r0]
	ldr r0, _08002A78
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1, #6]
	strh r2, [r0]
	ldr r0, _08002A7C
	ldr r1, [r7, #0x14]
	str r1, [r0]
	ldr r0, _08002A80
	ldr r1, [r7, #0x18]
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	adds r1, r7, #0
	adds r1, #0xa
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08002A84
	.align 2, 0
_08002A6C: .4byte 0x04000020
_08002A70: .4byte 0x04000022
_08002A74: .4byte 0x04000024
_08002A78: .4byte 0x04000026
_08002A7C: .4byte 0x04000028
_08002A80: .4byte 0x0400002C
_08002A84:
	add sp, #0x38
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002A8C
sub_8002A8C: @ 0x08002A8C
	push {r4, r7, lr}
	sub sp, #0x20
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_8002648
	adds r4, r0, #0
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_80027CC
	adds r1, r4, #0
	orrs r1, r0
	adds r0, r1, #0
	b _08002AAC
_08002AAC:
	add sp, #0x20
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002AB4
sub_8002AB4: @ 0x08002AB4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #1
	bne _08002AD6
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_80027CC
	adds r1, r0, #0
	adds r0, r1, #0
	b _08002AE4
	.byte 0x06, 0xE0
_08002AD6:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8002648
	adds r1, r0, #0
	adds r0, r1, #0
	b _08002AE4
_08002AE4:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002AEC
sub_8002AEC: @ 0x08002AEC
	push {r4, r5, r7, lr}
	sub sp, #0x14
	add r7, sp, #4
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _08002B4C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002B50
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _08002B54
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _08002B4C
	ldr r1, _08002B58
	str r1, [r0]
	ldr r0, _08002B50
	str r0, [r7, #0xc]
_08002B38:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002B5C
	b _08002B5E
	.align 2, 0
_08002B4C: .4byte 0x040000DC
_08002B50: .4byte 0x040000D4
_08002B54: .4byte 0x040000D8
_08002B58: .4byte 0x84000100
_08002B5C:
	b _08002B38
_08002B5E:
	movs r0, #0xe0
	lsls r0, r0, #0x13
	ldr r1, _08002C2C
	ldr r2, _08002C30
	ldr r3, [r7]
	adds r4, r3, #4
	str r4, [sp]
	ldr r3, [r7]
	bl sub_800CF2C
	cmp r0, #0
	beq _08002B7E
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #4]
_08002B7E:
	movs r0, #0xe0
	lsls r0, r0, #0x13
	ldr r1, _08002C2C
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #8
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0xc
	bl sub_800CED8
	cmp r0, #0
	beq _08002BA0
	ldr r0, [r7, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #4]
_08002BA0:
	movs r0, #0xe0
	lsls r0, r0, #0x13
	ldr r1, _08002C2C
	ldr r2, _08002C34
	ldr r4, [r7]
	adds r3, r4, #0
	adds r3, #0x10
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x14
	str r5, [sp]
	bl sub_800CF2C
	cmp r0, #0
	beq _08002BC6
	ldr r0, [r7, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #4]
_08002BC6:
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r0, r1, #0
	movs r1, #0
	bl sub_800CF8C
	cmp r0, #0
	beq _08002BDE
	ldr r0, [r7, #4]
	movs r1, #8
	orrs r0, r1
	str r0, [r7, #4]
_08002BDE:
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_800D118
	cmp r0, #0
	beq _08002BF8
	ldr r0, [r7, #4]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r7, #4]
_08002BF8:
	ldr r0, _08002C38
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002C3C
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, _08002C40
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r0, _08002C38
	ldr r1, _08002C44
	str r1, [r0]
	ldr r0, _08002C3C
	str r0, [r7, #0xc]
_08002C18:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002C48
	b _08002C4A
	.align 2, 0
_08002C2C: .4byte 0x07000400
_08002C30: .4byte 0x55555555
_08002C34: .4byte 0xAAAAAAAA
_08002C38: .4byte 0x040000DC
_08002C3C: .4byte 0x040000D4
_08002C40: .4byte 0x040000D8
_08002C44: .4byte 0x84000100
_08002C48:
	b _08002C18
_08002C4A:
	movs r0, #0x80
	lsls r0, r0, #0x13
	adds r1, r7, #0
	adds r1, #0xa
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08002C68
_08002C68:
	add sp, #0x14
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002C70
sub_8002C70: @ 0x08002C70
	push {r7, lr}
	sub sp, #0x20
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_8002AEC
	adds r1, r0, #0
	adds r0, r1, #0
	b _08002C84
_08002C84:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002C8C
sub_8002C8C: @ 0x08002C8C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8002AEC
	adds r1, r0, #0
	adds r0, r1, #0
	b _08002CA4
_08002CA4:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002CAC
sub_8002CAC: @ 0x08002CAC
	push {r4, r7, lr}
	sub sp, #0x1c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #0x10]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, _08002E00
	ldr r1, _08002E04
	str r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, _08002E00
	ldrb r2, [r1]
	lsls r3, r2, #0x18
	lsrs r1, r3, #0x18
	ldr r2, _08002E08
	ldrb r3, [r2]
	lsls r4, r3, #0x18
	lsrs r2, r4, #0x18
	lsls r3, r2, #8
	orrs r1, r3
	ldr r2, _08002E0C
	ldrb r3, [r2]
	lsls r4, r3, #0x18
	lsrs r2, r4, #0x18
	lsls r3, r2, #0x10
	orrs r1, r3
	ldr r2, _08002E10
	ldrb r3, [r2]
	lsls r4, r3, #0x18
	lsrs r2, r4, #0x18
	lsls r3, r2, #0x18
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r0]
	ldr r0, _08002E04
	cmp r1, r0
	beq _08002D0E
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
_08002D0E:
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _08002E00
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	ldr r2, _08002E0C
	ldrh r3, [r2]
	lsls r4, r3, #0x10
	lsrs r2, r4, #0x10
	lsls r3, r2, #0x10
	orrs r1, r3
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, [r0]
	ldr r0, _08002E04
	cmp r1, r0
	beq _08002D3C
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_08002D3C:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08002E00
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	ldr r0, _08002E04
	cmp r1, r0
	beq _08002D5E
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_08002D5E:
	ldr r0, _08002E00
	movs r2, #0xc1
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08002E0C
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _08002E00
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	ldr r2, _08002E0C
	ldrh r3, [r2]
	lsls r4, r3, #0x10
	lsrs r2, r4, #0x10
	lsls r3, r2, #0x10
	orrs r1, r3
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r0, _08002E14
	cmp r1, r0
	beq _08002DA4
	ldr r0, [r7, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r7, #0x10]
_08002DA4:
	ldr r0, _08002E00
	ldr r1, _08002E18
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _08002E00
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, [r0]
	ldr r0, _08002E18
	cmp r1, r0
	beq _08002DCC
	ldr r0, [r7, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r7, #0x10]
_08002DCC:
	ldr r0, _08002E1C
	str r0, [r7, #8]
	ldr r0, _08002E20
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002E24
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r0, _08002E28
	ldr r1, _08002E00
	str r1, [r0]
	ldr r0, _08002E20
	ldr r1, _08002E2C
	str r1, [r0]
	ldr r0, _08002E24
	str r0, [r7, #0x18]
_08002DEE:
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002E30
	b _08002E32
	.align 2, 0
_08002E00: .4byte 0x09FFFFF0
_08002E04: .4byte 0x01234567
_08002E08: .4byte 0x09FFFFF1
_08002E0C: .4byte 0x09FFFFF2
_08002E10: .4byte 0x09FFFFF3
_08002E14: .4byte 0x01020304
_08002E18: .4byte 0x04030201
_08002E1C: .4byte 0x10203040
_08002E20: .4byte 0x040000DC
_08002E24: .4byte 0x040000D4
_08002E28: .4byte 0x040000D8
_08002E2C: .4byte 0x80000002
_08002E30:
	b _08002DEE
_08002E32:
	ldr r0, _08002E64
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002E68
	ldr r1, _08002E6C
	str r1, [r0]
	ldr r0, _08002E70
	adds r1, r7, #0
	adds r1, #8
	adds r2, r1, #4
	str r2, [r0]
	ldr r0, _08002E64
	ldr r1, _08002E74
	str r1, [r0]
	ldr r0, _08002E68
	str r0, [r7, #0x18]
_08002E52:
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002E78
	b _08002E7A
	.align 2, 0
_08002E64: .4byte 0x040000DC
_08002E68: .4byte 0x040000D4
_08002E6C: .4byte 0x09FFFFF0
_08002E70: .4byte 0x040000D8
_08002E74: .4byte 0x80000002
_08002E78:
	b _08002E52
_08002E7A:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	cmp r0, r1
	beq _08002E8A
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #0x10]
_08002E8A:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r0, _08002EC8
	str r0, [r7, #8]
	ldr r0, _08002ECC
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002ED0
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r0, _08002ED4
	ldr r1, _08002ED8
	str r1, [r0]
	ldr r0, _08002ECC
	ldr r1, _08002EDC
	str r1, [r0]
	ldr r0, _08002ED0
	str r0, [r7, #0x18]
_08002EB6:
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002EE0
	b _08002EE2
	.align 2, 0
_08002EC8: .4byte 0x40302010
_08002ECC: .4byte 0x040000DC
_08002ED0: .4byte 0x040000D4
_08002ED4: .4byte 0x040000D8
_08002ED8: .4byte 0x09FFFFF0
_08002EDC: .4byte 0x84000001
_08002EE0:
	b _08002EB6
_08002EE2:
	ldr r0, _08002F14
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002F18
	ldr r1, _08002F1C
	str r1, [r0]
	ldr r0, _08002F20
	adds r1, r7, #0
	adds r1, #8
	adds r2, r1, #4
	str r2, [r0]
	ldr r0, _08002F14
	ldr r1, _08002F24
	str r1, [r0]
	ldr r0, _08002F18
	str r0, [r7, #0x18]
_08002F02:
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08002F28
	b _08002F2A
	.align 2, 0
_08002F14: .4byte 0x040000DC
_08002F18: .4byte 0x040000D4
_08002F1C: .4byte 0x09FFFFF0
_08002F20: .4byte 0x040000D8
_08002F24: .4byte 0x84000001
_08002F28:
	b _08002F02
_08002F2A:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	cmp r0, r1
	beq _08002F3A
	ldr r0, [r7, #0x10]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #0x10]
_08002F3A:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, [r7, #0xc]
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _08002F56
_08002F56:
	add sp, #0x1c
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8002F60
sub_8002F60: @ 0x08002F60
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	ldr r0, _08002FA8
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _08002FA8
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xaa
	beq _08002F88
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #8]
_08002F88:
	ldr r0, _08002FAC
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _08002FAC
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0x55
	beq _08002FA2
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #8]
_08002FA2:
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _08002FB0
	.align 2, 0
_08002FA8: .4byte 0x0E000AAA
_08002FAC: .4byte 0x0E001555
_08002FB0:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002FB8
sub_8002FB8: @ 0x08002FB8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7, #4]
	ldr r0, _08002FE8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	str r0, [r7]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08002FE0
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #4]
_08002FE0:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08002FEC
	.align 2, 0
_08002FE8: .4byte 0x04000204
_08002FEC:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8002FF4
sub_8002FF4: @ 0x08002FF4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8002FB8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003008
_08003008:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003010
sub_8003010: @ 0x08003010
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #4
	ldr r1, _0800307C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800307C
	ldr r2, _08003080
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_800326C
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0x18
	beq _08003048
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_08003048:
	ldr r0, _0800307C
	movs r1, #0x14
	strh r1, [r0]
	bl sub_800326C
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0x33
	beq _08003062
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_08003062:
	ldr r0, _0800307C
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _08003084
	.align 2, 0
_0800307C: .4byte 0x04000204
_08003080: .4byte 0x00004014
_08003084:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800308C
sub_800308C: @ 0x0800308C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003010
	adds r1, r0, #0
	adds r0, r1, #0
	b _080030A0
_080030A0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80030A8
sub_80030A8: @ 0x080030A8
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _080030DC
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _080030DC
	ldr r1, [r7]
	ldr r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #0xb
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_800EC94
	ldr r0, _080030DC
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0
	b _080030E0
	.align 2, 0
_080030DC: .4byte 0x04000204
_080030E0:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80030E8
sub_80030E8: @ 0x080030E8
	push {r7, lr}
	sub sp, #0x78
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, _0800311C
	movs r2, #0x60
	bl memcpy
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7]
_08003112:
	ldr r0, [r7]
	cmp r0, #2
	bls _08003120
	b _08003180
	.align 2, 0
_0800311C: .4byte gUnknown_080190F0
_08003120:
	movs r0, #0
	str r0, [r7, #4]
_08003124:
	ldr r0, [r7, #4]
	cmp r0, #7
	bls _0800312C
	b _08003178
_0800312C:
	ldr r0, _08003170
	ldr r1, _08003174
	ldr r3, [r7, #4]
	ldr r2, [r7]
	bl sub_800F150
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #5
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r1, [r7, #8]
	ldr r0, [r0]
	cmp r1, r0
	beq _08003162
	movs r0, #1
	ldr r1, [r7, #0xc]
	lsls r0, r1
	ldr r1, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
_08003162:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08003124
	.align 2, 0
_08003170: .4byte sub_800329C
_08003174: .4byte sub_8003310
_08003178:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08003112
_08003180:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _08003192
_08003192:
	add sp, #0x78
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    