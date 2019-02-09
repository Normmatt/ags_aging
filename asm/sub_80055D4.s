.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_80055D4
sub_80055D4: @ 0x080055D4
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08005604
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, _08005608
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _0800560C
	ldr r0, _08005604
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
	b _0800568C
	.align 2, 0
_08005604: .4byte gUnknown_080195A0
_08005608: .4byte gUnknown_03001730
_0800560C:
	bl sub_800465C
	ldr r0, _0800562C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #4
	beq _0800564C
	cmp r0, #4
	bgt _08005630
	cmp r0, #3
	beq _0800563A
	b _0800567C
	.align 2, 0
_0800562C: .4byte gUnknown_080195A0
_08005630:
	cmp r0, #5
	beq _0800565C
	cmp r0, #0xa
	beq _0800566C
	b _0800567C
_0800563A:
	bl sub_8005998
	ldr r0, _08005648
	movs r1, #3
	str r1, [r0]
	b _0800567C
	.align 2, 0
_08005648: .4byte gUnknown_03001730
_0800564C:
	bl sub_8005D58
	ldr r0, _08005658
	movs r1, #4
	str r1, [r0]
	b _0800567C
	.align 2, 0
_08005658: .4byte gUnknown_03001730
_0800565C:
	bl sub_80064BC
	ldr r0, _08005668
	movs r1, #5
	str r1, [r0]
	b _0800567C
	.align 2, 0
_08005668: .4byte gUnknown_03001730
_0800566C:
	bl sub_800661C
	ldr r0, _08005678
	movs r1, #0xa
	str r1, [r0]
	b _0800567C
	.align 2, 0
_08005678: .4byte gUnknown_03001730
_0800567C:
	ldr r0, _08005694
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
_0800568C:
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005694: .4byte gUnknown_080195A0

	THUMB_FUNC_START sub_8005698
sub_8005698: @ 0x08005698
	push {r7, lr}
	mov r7, sp
	ldr r0, _080056B8
	ldr r1, _080056BC
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _080056C0
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080056B8: .4byte gUnknown_03000354
_080056BC: .4byte 0x04000020
_080056C0: .4byte 0x00001F01

	THUMB_FUNC_START sub_80056C4
sub_80056C4: @ 0x080056C4
	push {r7, lr}
	mov r7, sp
	ldr r0, _080056E4
	ldr r1, _080056E8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _080056EC
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080056E4: .4byte gUnknown_03000368
_080056E8: .4byte 0x04000020
_080056EC: .4byte 0x00001F01

	THUMB_FUNC_START sub_80056F0
sub_80056F0: @ 0x080056F0
	push {r7, lr}
	mov r7, sp
	ldr r0, _08005710
	ldr r1, _08005714
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08005718
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005710: .4byte gUnknown_0300037C
_08005714: .4byte 0x04000020
_08005718: .4byte 0x00001F01

	THUMB_FUNC_START sub_800571C
sub_800571C: @ 0x0800571C
	push {r7, lr}
	mov r7, sp
	ldr r0, _08005748
	movs r1, #5
	strb r1, [r0]
	ldr r0, _0800574C
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _08005750
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08005754
	movs r1, #0x10
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08005758
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005748: .4byte 0x04000048
_0800574C: .4byte 0x04000049
_08005750: .4byte 0x0400004A
_08005754: .4byte 0x0400004B
_08005758: .4byte 0x0000FF01

	THUMB_FUNC_START sub_800575C
sub_800575C: @ 0x0800575C
	push {r7, lr}
	mov r7, sp
	ldr r0, _08005788
	movs r1, #0x25
	strb r1, [r0]
	ldr r0, _0800578C
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _08005790
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08005794
	movs r1, #0x10
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08005798
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005788: .4byte 0x04000048
_0800578C: .4byte 0x04000049
_08005790: .4byte 0x0400004A
_08005794: .4byte 0x0400004B
_08005798: .4byte 0x0000FF01

	THUMB_FUNC_START sub_800579C
sub_800579C: @ 0x0800579C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08005824
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005828
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800582C
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005824
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005830
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005834
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005838
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005824
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800583C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005840
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08005844
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005824: .4byte 0x040000D4
_08005828: .4byte gUnknown_080C2F00
_0800582C: .4byte 0x84000080
_08005830: .4byte gUnknown_080C3100
_08005834: .4byte 0x06008000
_08005838: .4byte 0x840000B0
_0800583C: .4byte gUnknown_080C33C0
_08005840: .4byte 0x84000200
_08005844: .4byte 0x00001141

	THUMB_FUNC_START sub_8005848
sub_8005848: @ 0x08005848
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _080058D0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _080058D4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080058D8
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _080058D0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _080058DC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _080058E0
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080058E4
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _080058D0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _080058E8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080058EC
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _080058F0
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080058D0: .4byte 0x040000D4
_080058D4: .4byte gUnknown_080C3BC0
_080058D8: .4byte 0x84000080
_080058DC: .4byte gUnknown_080C3DC0
_080058E0: .4byte 0x06008000
_080058E4: .4byte 0x840000B0
_080058E8: .4byte gUnknown_080C4080
_080058EC: .4byte 0x84000200
_080058F0: .4byte 0x00001161

	THUMB_FUNC_START sub_80058F4
sub_80058F4: @ 0x080058F4
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	adds r0, r7, #0
	movs r1, #0x81
	strh r1, [r0]
	adds r0, r7, #2
	movs r1, #0x81
	strh r1, [r0]
	ldr r0, _0800592C
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08005930
	adds r1, r7, #2
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08005934
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	str r0, [r7, #4]
_08005924:
	ldr r0, [r7, #4]
	cmp r0, #0xff
	ble _08005938
	b _08005990
	.align 2, 0
_0800592C: .4byte 0x04000012
_08005930: .4byte 0x04000014
_08005934: .4byte 0x00000301
_08005938:
	ldr r0, _08005968
	adds r1, r7, #0
	ldrh r2, [r1]
	subs r3, r2, #1
	adds r4, r3, #0
	strh r4, [r1]
	strh r2, [r0]
	ldr r0, _0800596C
	adds r1, r7, #2
	ldrh r2, [r1]
	subs r3, r2, #1
	adds r4, r3, #0
	strh r4, [r1]
	strh r2, [r0]
	ldr r1, _08005970
	ldr r0, [r1]
	cmp r0, #2
	beq _0800597A
	cmp r0, #2
	bgt _08005974
	cmp r0, #1
	beq _0800597E
	b _08005982
	.align 2, 0
_08005968: .4byte 0x04000012
_0800596C: .4byte 0x04000014
_08005970: .4byte gUnknown_03001734
_08005974:
	cmp r0, #5
	bgt _08005982
	b _0800597E
_0800597A:
	bl sub_8008118
_0800597E:
	bl m4aSoundMain
_08005982:
	movs r0, #1
	bl WaitForInterrupt
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08005924
_08005990:
	add sp, #8
	pop {r4, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8005998
sub_8005998: @ 0x08005998
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08005CC4
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _08005CC8
	bl sub_800F35C
	ldr r0, _08005CC4
	ldr r1, _08005CCC
	ldr r2, [r1]
	ldr r3, [r1, #4]
	str r2, [r0]
	str r3, [r0, #4]
	ldr r0, _08005CC4
	ldrh r1, [r0, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #4]
	ldr r0, _08005CC4
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08005CC4
	ldrh r1, [r0, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _08005CC4
	ldr r1, _08005CD0
	ldr r2, [r1]
	ldr r3, [r1, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	ldr r0, _08005CC4
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0xa]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	ldr r0, _08005CC4
	ldr r1, _08005CD4
	ldr r2, [r1]
	ldr r3, [r1, #4]
	str r2, [r0, #0x10]
	str r3, [r0, #0x14]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0x14]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xc
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x14]
	ldr r0, _08005CC4
	ldrb r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x10]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0x12]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x30
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x12]
	ldr r0, _08005CC4
	ldr r1, _08005CD0
	ldr r2, [r1]
	ldr r3, [r1, #4]
	str r2, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0x1c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x88
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x1c]
	ldr r0, _08005CC4
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x7a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0x1a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x1a]
	ldr r0, _08005CC4
	ldr r1, _08005CD4
	ldr r2, [r1]
	ldr r3, [r1, #4]
	str r2, [r0, #0x20]
	str r3, [r0, #0x24]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0x24]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x8c
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x24]
	ldr r0, _08005CC4
	adds r1, r0, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x7a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08005CC4
	ldrh r1, [r0, #0x22]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x30
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x22]
	bl sub_8004630
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005CDC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005CE0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005CDC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005CE4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005CE8
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005CEC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005CF0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005CF4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005CF8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005CF0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005CFC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005D00
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005D04
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005D08
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005D0C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005D10
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005D14
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005D18
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005D04
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005CF4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005D1C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005CF0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08005CD8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005CC4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005D20
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08005D24
	ldr r2, _08005D28
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005D2C
	ldr r2, _08005D30
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005D34
	ldr r2, _08005D38
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005D3C
	ldr r2, _08005D40
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005D44
	ldr r2, _08005D30
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005D48
	ldr r2, _08005D4C
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005D50
	ldr r2, _08005D54
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_8004630
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005CC4: .4byte gUnknown_03001740
_08005CC8: .4byte gUnknown_0807746C
_08005CCC: .4byte gUnknown_08077474
_08005CD0: .4byte gUnknown_0807747C
_08005CD4: .4byte gUnknown_08077484
_08005CD8: .4byte 0x040000D4
_08005CDC: .4byte gUnknown_081007F4
_08005CE0: .4byte 0x80000100
_08005CE4: .4byte 0x05000200
_08005CE8: .4byte 0x84000080
_08005CEC: .4byte gUnknown_080DD6AC
_08005CF0: .4byte 0x84002000
_08005CF4: .4byte gUnknown_080D527C
_08005CF8: .4byte 0x06004000
_08005CFC: .4byte gUnknown_080F6BD8
_08005D00: .4byte 0x0600C000
_08005D04: .4byte 0x84000200
_08005D08: .4byte gUnknown_080F74AC
_08005D0C: .4byte 0x0600C800
_08005D10: .4byte 0x84000800
_08005D14: .4byte gUnknown_080F6A6C
_08005D18: .4byte 0x0600E800
_08005D1C: .4byte 0x06010000
_08005D20: .4byte 0x84000100
_08005D24: .4byte 0x04000008
_08005D28: .4byte 0x00001802
_08005D2C: .4byte 0x04000010
_08005D30: .4byte 0x0000FFEC
_08005D34: .4byte 0x04000012
_08005D38: .4byte 0x0000FFF6
_08005D3C: .4byte 0x0400000A
_08005D40: .4byte 0x0000D985
_08005D44: .4byte 0x04000014
_08005D48: .4byte 0x04000016
_08005D4C: .4byte 0x0000FFC4
_08005D50: .4byte 0x0400000C
_08005D54: .4byte 0x00001D84

	THUMB_FUNC_START sub_8005D58
sub_8005D58: @ 0x08005D58
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	ldr r0, _08006144
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _08006148
	bl sub_800F35C
	ldr r0, _08006144
	ldrh r1, [r0, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	ldr r0, _08006144
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006144
	ldrh r1, [r0, #0xa]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	ldr r0, _08006144
	ldrb r1, [r0, #0xd]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xd]
	ldr r0, _08006144
	ldrh r1, [r0, #0x14]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x18
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x14]
	ldr r0, _08006144
	ldrb r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x10]
	ldr r0, _08006144
	ldrh r1, [r0, #0x12]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x60
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x12]
	ldr r0, _08006144
	ldrb r1, [r0, #0x15]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x15]
	ldr r0, _08006144
	ldrh r1, [r0, #0x1c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x18
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x1c]
	ldr r0, _08006144
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x60
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, _08006144
	ldrh r1, [r0, #0x1a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x1a]
	ldr r0, _08006144
	ldrb r1, [r0, #0x1d]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1d]
	ldr r0, _08006144
	ldrh r1, [r0, #0x24]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x18
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x24]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x60
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	ldrh r1, [r0, #0x22]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x60
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x22]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x25
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	ldrh r1, [r0, #0x2c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x2c]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	ldrh r1, [r0, #0x2a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x60
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x2a]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	ldrh r1, [r0, #0x34]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x34]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x60
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	ldrh r1, [r0, #0x32]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x32]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x35
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	ldrh r1, [r0, #0x3c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x3c]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x60
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	ldrh r1, [r0, #0x3a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xa0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x3a]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x44
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x42
	ldrh r1, [r0]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x49
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x4d
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x54
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x50
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x51
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x55
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x5a
	ldrh r1, [r0]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006144
	adds r1, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #0xf3
	b _0800614C
	.align 2, 0
_08006144: .4byte gUnknown_03001740
_08006148: .4byte gUnknown_0807746C
_0800614C:
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006420
	adds r1, r0, #0
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006420
	adds r1, r0, #0
	adds r0, #0x64
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006420
	adds r1, r0, #0
	adds r0, #0x60
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x10
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08006420
	adds r1, r0, #0
	adds r0, #0x62
	ldrh r1, [r0]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x10
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08006420
	adds r1, r0, #0
	adds r0, #0x65
	ldrb r1, [r0]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r0]
	adds r0, r7, #0
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r0, #4]
	adds r0, r7, #0
	ldrh r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #8]
	adds r0, r7, #0
	ldrh r1, [r0, #0xa]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	adds r0, r7, #0
	ldrh r1, [r0, #0xc]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	adds r0, r7, #0
	ldrh r1, [r0, #0xe]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xe]
	adds r0, r7, #0
	ldrh r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0x10]
	bl sub_8004630
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08006428
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800642C
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08006428
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08006430
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800642C
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08006434
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006438
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _0800643C
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08006440
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006438
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08006444
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08006448
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800644C
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08006450
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08006454
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800644C
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08006458
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _0800645C
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800644C
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _0800643C
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08006460
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006438
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08006424
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08006420
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006464
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08006468
	ldr r2, _0800646C
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08006470
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08006474
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08006478
	ldr r2, _0800647C
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08006480
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08006484
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08006488
	ldr r2, _0800648C
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	ldr r1, _08006490
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006494
	ldr r2, _08006498
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800649C
	ldr r2, _08006498
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080064A0
	movs r2, #0x81
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080064A4
	movs r2, #0x81
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080064A8
	ldr r2, _080064AC
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080064B0
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _080064B4
	ldr r2, _080064B8
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_8004630
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006420: .4byte gUnknown_03001740
_08006424: .4byte 0x040000D4
_08006428: .4byte gUnknown_081009F4
_0800642C: .4byte 0x84000080
_08006430: .4byte 0x05000200
_08006434: .4byte gUnknown_080C4A20
_08006438: .4byte 0x84002000
_0800643C: .4byte gUnknown_080E5ADC
_08006440: .4byte 0x06004000
_08006444: .4byte gUnknown_080FDF44
_08006448: .4byte 0x0600C000
_0800644C: .4byte 0x84000200
_08006450: .4byte gUnknown_080FE814
_08006454: .4byte 0x0600C800
_08006458: .4byte gUnknown_080FF0E4
_0800645C: .4byte 0x0600D000
_08006460: .4byte 0x06010000
_08006464: .4byte 0x84000100
_08006468: .4byte 0x04000008
_0800646C: .4byte 0x00001802
_08006470: .4byte 0x04000010
_08006474: .4byte 0x04000012
_08006478: .4byte 0x0400000A
_0800647C: .4byte 0x00001901
_08006480: .4byte 0x04000014
_08006484: .4byte 0x04000016
_08006488: .4byte 0x0400000C
_0800648C: .4byte 0x00001A84
_08006490: .4byte 0x04000020
_08006494: .4byte 0x04000040
_08006498: .4byte 0x00002060
_0800649C: .4byte 0x04000044
_080064A0: .4byte 0x04000042
_080064A4: .4byte 0x04000046
_080064A8: .4byte 0x04000050
_080064AC: .4byte 0x00002747
_080064B0: .4byte 0x04000054
_080064B4: .4byte 0x04000052
_080064B8: .4byte 0x00000C0C

	THUMB_FUNC_START sub_80064BC
sub_80064BC: @ 0x080064BC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	ldr r0, _080064DC
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _080064E0
	bl sub_800F35C
	movs r0, #0
	str r0, [r7]
_080064D2:
	ldr r0, [r7]
	cmp r0, #0x12
	ble _080064E4
	b _08006550
	.align 2, 0
_080064DC: .4byte gUnknown_03001740
_080064E0: .4byte gUnknown_08077464
_080064E4:
	ldr r0, _0800654C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #4]
	ldr r0, _0800654C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x30
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _0800654C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	movs r1, #0x13
	ldr r2, [r7]
	subs r1, r1, r2
	adds r3, r1, #0
	lsls r2, r3, #3
	adds r2, r2, r1
	adds r1, r2, #0
	lsls r2, r1, #0x17
	lsrs r1, r2, #0x17
	ldrh r2, [r0, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _080064D2
	.align 2, 0
_0800654C: .4byte gUnknown_03001740
_08006550:
	bl sub_8004630
	ldr r0, _080065EC
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _080065F0
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _080065F4
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080065F8
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _080065EC
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _080065FC
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _08006600
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006604
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _080065EC
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08006608
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800660C
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08006610
	movs r1, #0x8b
	strh r1, [r0]
	ldr r0, _08006614
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08006618
	movs r1, #0
	strh r1, [r0]
	bl sub_8004630
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080065EC: .4byte 0x040000D4
_080065F0: .4byte gUnknown_080BDF80
_080065F4: .4byte 0x05000200
_080065F8: .4byte 0x84000080
_080065FC: .4byte gUnknown_080BE180
_08006600: .4byte 0x06010000
_08006604: .4byte 0x84000400
_08006608: .4byte gUnknown_03001740
_0800660C: .4byte 0x84000100
_08006610: .4byte 0x04000008
_08006614: .4byte 0x04000010
_08006618: .4byte 0x04000012

	THUMB_FUNC_START sub_800661C
sub_800661C: @ 0x0800661C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006708
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800670C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006710
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08006708
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006714
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006718
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08006708
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800671C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08006720
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006724
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006708
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006728
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800672C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006724
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r1, _08006730
	adds r0, r1, #0
	bl sub_80045B8
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08006734
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08006738
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800673C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08006740
	ldr r2, _08006744
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08006748
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800674C
	movs r1, #0
	strh r1, [r0]
	bl sub_8004630
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006708: .4byte 0x040000D4
_0800670C: .4byte gUnknown_081003F4
_08006710: .4byte 0x84000080
_08006714: .4byte gUnknown_080C4A20
_08006718: .4byte 0x84002000
_0800671C: .4byte gUnknown_080FF254
_08006720: .4byte 0x0600C000
_08006724: .4byte 0x84000200
_08006728: .4byte gUnknown_080FFB24
_0800672C: .4byte 0x0600C800
_08006730: .4byte 0x06010000
_08006734: .4byte 0x04000008
_08006738: .4byte 0x04000010
_0800673C: .4byte 0x04000012
_08006740: .4byte 0x0400000A
_08006744: .4byte 0x00001901
_08006748: .4byte 0x04000014
_0800674C: .4byte 0x04000016
