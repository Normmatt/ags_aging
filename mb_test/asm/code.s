	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_020001FC
sub_020001FC: @ 0x020001FC
	push {r7, lr}
	sub sp, #0x80
	mov r7, sp
	bl sub_02000278
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_02000534
	ldr r0, _0200025C @ =gUnk_03000970
	movs r1, #1
	str r1, [r0]
	ldr r0, _0200025C @ =gUnk_03000970
	movs r1, #1
	str r1, [r0, #4]
	adds r0, r7, #0
	ldr r1, _02000260 @ =gUnk_02006E10
	ldr r3, _02000264 @ =0x020000C5
	ldrb r2, [r3]
	bl sprintf
	adds r2, r7, #0
	movs r0, #0
	movs r1, #0
	bl sub_02000B08
	bl sub_02000A98
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _02000268 @ =0x0000FF7F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_02000258:
	b _0200026E
	.align 2, 0
_0200025C: .4byte gUnk_03000970
_02000260: .4byte gUnk_02006E10
_02000264: .4byte 0x020000C5
_02000268: .4byte 0x0000FF7F
_0200026C:
	b _02000270
_0200026E:
	b _02000258
_02000270:
	add sp, #0x80
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02000278
sub_02000278: @ 0x02000278
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _020002B0 @ =0x040000D4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _020002B4 @ =sub_020011F8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _020002B8 @ =gUnk_03000790
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020002BC @ =0x84000041
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020002C0 @ =0x03007FFC
	ldr r1, _020002B8 @ =gUnk_03000790
	str r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_020002B0: .4byte 0x040000D4
_020002B4: .4byte sub_020011F8
_020002B8: .4byte gUnk_03000790
_020002BC: .4byte 0x84000041
_020002C0: .4byte 0x03007FFC

	thumb_func_start sub_020002C4
sub_020002C4: @ 0x020002C4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	ldr r0, _02000300 @ =0x03007FF8
	ldr r1, _02000300 @ =0x03007FF8
	adds r2, r7, #0
	ldrh r3, [r2]
	mvns r2, r3
	ldrh r1, [r1]
	adds r3, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_020002E2:
	ldr r0, _02000300 @ =0x03007FF8
	adds r1, r7, #0
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r2, r1, #0
	adds r1, r0, #0
	ands r1, r2
	adds r0, r7, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bne _02000304
	b _02000306
	.align 2, 0
_02000300: .4byte 0x03007FF8
_02000304:
	b _020002E2
_02000306:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02000310
sub_02000310: @ 0x02000310
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
_02000320:
	ldr r0, [r7, #8]
	cmp r0, #0xf
	bgt _0200033C
	adds r0, r7, #0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0200033C
	b _0200033E
_0200033C:
	b _02000352
_0200033E:
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	adds r0, r7, #0
	adds r1, r7, #0
	ldrh r2, [r1]
	lsrs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _02000320
_02000352:
	ldr r0, _02000374 @ =gUnk_03000000
	ldr r1, [r7, #8]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r7, #0xc]
	ldr r0, _02000374 @ =gUnk_03000000
	ldr r1, [r7, #8]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _02000378
	.align 2, 0
_02000374: .4byte gUnk_03000000
_02000378:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02000380
sub_02000380: @ 0x02000380
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_0200038A:
	ldr r0, [r7]
	cmp r0, #0xf
	ble _02000392
	b _020003AC
_02000392:
	ldr r0, _020003A8 @ =gUnk_03000000
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0200038A
	.align 2, 0
_020003A8: .4byte gUnk_03000000
_020003AC:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start sub_020003B4
sub_020003B4: @ 0x020003B4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #2
	ldr r1, _020003D8 @ =0x04000208
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _020003D8 @ =0x04000208
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	adds r0, r1, #0
	b _020003DC
	.align 2, 0
_020003D8: .4byte 0x04000208
_020003DC:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_020003E4
sub_020003E4: @ 0x020003E4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #2
	ldr r1, _02000408 @ =0x04000200
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _02000408 @ =0x04000200
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0200040C
	.align 2, 0
_02000408: .4byte 0x04000200
_0200040C:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02000414
sub_02000414: @ 0x02000414
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	adds r0, r2, #0
	adds r2, r7, #4
	strh r1, [r2]
	adds r1, r7, #6
	strh r0, [r1]
	movs r0, #0
	bl sub_020003B4
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl sub_020003E4
	adds r1, r7, #0
	adds r1, #0xa
	strh r0, [r1]
	ldr r0, [r7]
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	adds r1, r7, #0
	adds r1, #0xa
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	movs r0, #0
	str r0, [r7, #0xc]
_02000476:
	ldr r0, [r7, #0xc]
	cmp r0, #0xf
	ble _0200047E
	b _020004B4
_0200047E:
	ldr r0, [r7]
	ldr r1, [r7, #0xc]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r0, #4
	adds r0, r2, r1
	ldr r1, _020004B0 @ =gUnk_03000000
	ldr r2, [r7, #0xc]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _020004B0 @ =gUnk_03000000
	ldr r1, [r7, #0xc]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _02000476
	.align 2, 0
_020004B0: .4byte gUnk_03000000
_020004B4:
	ldr r0, _020004D0 @ =0x04000202
	ldr r2, _020004D4 @ =0x00003FFF
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #4
	ldrh r1, [r0]
	adds r0, r1, #0
	bl sub_020003B4
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_020004D0: .4byte 0x04000202
_020004D4: .4byte 0x00003FFF

	thumb_func_start sub_020004D8
sub_020004D8: @ 0x020004D8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	movs r0, #0
	bl sub_020003B4
	movs r0, #0
	str r0, [r7, #4]
_020004EA:
	ldr r0, [r7, #4]
	cmp r0, #0xf
	ble _020004F2
	b _02000518
_020004F2:
	ldr r0, _02000514 @ =gUnk_03000000
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	ldr r2, [r7, #4]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _020004EA
	.align 2, 0
_02000514: .4byte gUnk_03000000
_02000518:
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	adds r0, r1, #0
	bl sub_020003E4
	ldr r0, [r7]
	ldrh r1, [r0]
	adds r0, r1, #0
	bl sub_020003B4
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02000534
sub_02000534: @ 0x02000534
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _020006D0 @ =0x04000008
	movs r3, #0xe0
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _020006D4 @ =0x0400000A
	ldr r4, _020006D8 @ =0x00001D01
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _020006DC @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020006E0 @ =0x04000012
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020006E4 @ =0x04000014
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020006E8 @ =0x04000016
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020006EC @ =0x0400000C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020006F0 @ =0x0400000E
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020006F4 @ =0x0400004C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020006F8 @ =0x04000028
	movs r1, #0
	str r1, [r0]
	ldr r0, _020006FC @ =0x0400002C
	movs r1, #0
	str r1, [r0]
	ldr r0, _02000700 @ =0x04000038
	movs r1, #0
	str r1, [r0]
	ldr r0, _02000704 @ =0x0400003C
	movs r1, #0
	str r1, [r0]
	ldr r0, _02000708 @ =0x04000020
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0200070C @ =0x04000022
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000710 @ =0x04000024
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000714 @ =0x04000026
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _02000718 @ =0x04000030
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _0200071C @ =0x04000032
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000720 @ =0x04000034
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000724 @ =0x04000036
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _02000728 @ =0x04000018
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0200072C @ =0x0400001A
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000730 @ =0x0400001C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000734 @ =0x0400001E
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000738 @ =0x04000040
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0200073C @ =0x04000044
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000740 @ =0x04000042
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000744 @ =0x04000046
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000748 @ =0x04000048
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0200074C @ =0x0400004A
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000750 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000754 @ =0x04000052
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000758 @ =0x04000054
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0200075C @ =gUnk_03000970
	movs r1, #0
	str r1, [r0]
	ldr r0, _0200075C @ =gUnk_03000970
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0
	str r0, [r7, #4]
	ldr r0, _02000760 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #4
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _02000764 @ =gUnk_03000978
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02000768 @ =0x85000200
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
	ldr r0, _02000760 @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0200076C @ =gUnk_03001178
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02000768 @ =0x85000200
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0200075C @ =gUnk_03000970
	adds r1, r0, #0
	ldr r3, _02000770 @ =0x00001008
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _0200075C @ =gUnk_03000970
	adds r0, r1, #0
	ldr r4, _02000774 @ =0x0000100C
	adds r1, r1, r4
	ldr r2, _02000778 @ =gUnk_02006E48
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r0, _0200075C @ =gUnk_03000970
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
_020006C6:
	ldr r0, [r7]
	cmp r0, #7
	ble _0200077C
	b _020007C4
	.align 2, 0
_020006D0: .4byte 0x04000008
_020006D4: .4byte 0x0400000A
_020006D8: .4byte 0x00001D01
_020006DC: .4byte 0x04000010
_020006E0: .4byte 0x04000012
_020006E4: .4byte 0x04000014
_020006E8: .4byte 0x04000016
_020006EC: .4byte 0x0400000C
_020006F0: .4byte 0x0400000E
_020006F4: .4byte 0x0400004C
_020006F8: .4byte 0x04000028
_020006FC: .4byte 0x0400002C
_02000700: .4byte 0x04000038
_02000704: .4byte 0x0400003C
_02000708: .4byte 0x04000020
_0200070C: .4byte 0x04000022
_02000710: .4byte 0x04000024
_02000714: .4byte 0x04000026
_02000718: .4byte 0x04000030
_0200071C: .4byte 0x04000032
_02000720: .4byte 0x04000034
_02000724: .4byte 0x04000036
_02000728: .4byte 0x04000018
_0200072C: .4byte 0x0400001A
_02000730: .4byte 0x0400001C
_02000734: .4byte 0x0400001E
_02000738: .4byte 0x04000040
_0200073C: .4byte 0x04000044
_02000740: .4byte 0x04000042
_02000744: .4byte 0x04000046
_02000748: .4byte 0x04000048
_0200074C: .4byte 0x0400004A
_02000750: .4byte 0x04000050
_02000754: .4byte 0x04000052
_02000758: .4byte 0x04000054
_0200075C: .4byte gUnk_03000970
_02000760: .4byte 0x040000D4
_02000764: .4byte gUnk_03000978
_02000768: .4byte 0x85000200
_0200076C: .4byte gUnk_03001178
_02000770: .4byte 0x00001008
_02000774: .4byte 0x0000100C
_02000778: .4byte gUnk_02006E48
_0200077C:
	ldr r0, _020007B4 @ =gUnk_03000970
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _020007B8 @ =0x00001024
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, _020007BC @ =sub_02000D0C
	str r0, [r1]
	ldr r0, _020007B4 @ =gUnk_03000970
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	adds r1, r0, #0
	ldr r3, _020007C0 @ =0x00001028
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _020006C6
	.align 2, 0
_020007B4: .4byte gUnk_03000970
_020007B8: .4byte 0x00001024
_020007BC: .4byte sub_02000D0C
_020007C0: .4byte 0x00001028
_020007C4:
	bl sub_02000A98
	movs r0, #0
	movs r1, #0
	bl sub_02000920
	movs r0, #1
	movs r1, #0x1f
	bl sub_02000920
	ldr r1, _02000820 @ =0x00001683
	movs r0, #2
	bl sub_02000920
	ldr r1, _02000824 @ =0x000003FF
	movs r0, #3
	bl sub_02000920
	ldr r1, _02000828 @ =0x00005863
	movs r0, #4
	bl sub_02000920
	ldr r1, _0200082C @ =0x00005CBF
	movs r0, #5
	bl sub_02000920
	ldr r1, _02000830 @ =0x000073A5
	movs r0, #6
	bl sub_02000920
	ldr r1, _02000834 @ =0x00007FFF
	movs r0, #7
	bl sub_02000920
	movs r0, #0
	bl sub_020011D0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r4, _02000834 @ =0x00007FFF
	adds r1, r4, #0
	strh r1, [r0]
	add sp, #0xc
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02000820: .4byte 0x00001683
_02000824: .4byte 0x000003FF
_02000828: .4byte 0x00005863
_0200082C: .4byte 0x00005CBF
_02000830: .4byte 0x000073A5
_02000834: .4byte 0x00007FFF

	thumb_func_start sub_02000838
sub_02000838: @ 0x02000838
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	ldr r0, _02000910 @ =gUnk_03000970
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, _02000910 @ =gUnk_03000970
	adds r2, r1, #0
	movs r2, #0x81
	lsls r2, r2, #5
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r3, _02000914 @ =0x00001028
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
	ldr r0, _02000910 @ =gUnk_03000970
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _02000918 @ =0x00001024
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, _0200091C @ =0x040000D4
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _02000910 @ =gUnk_03000970
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r3, r1, r2
	adds r1, r3, #0
	ldr r1, _02000914 @ =0x00001028
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
	bge _020008C2
	adds r1, #3
_020008C2:
	asrs r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _02000910 @ =gUnk_03000970
	ldr r1, _02000910 @ =gUnk_03000970
	adds r2, r1, #0
	movs r2, #0x81
	lsls r2, r2, #5
	adds r1, r1, r2
	ldr r3, [r7, #8]
	adds r2, r3, #0
	cmp r2, #0
	bge _020008EA
	adds r2, #0x1f
_020008EA:
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
_02000910: .4byte gUnk_03000970
_02000914: .4byte 0x00001028
_02000918: .4byte 0x00001024
_0200091C: .4byte 0x040000D4

	thumb_func_start sub_02000920
sub_02000920: @ 0x02000920
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
	ldr r3, _02000A0C @ =0x00001683
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _02000A10 @ =0x000003FF
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _02000A14 @ =0x00005863
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _02000A18 @ =0x00005CBF
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _02000A1C @ =0x000073A5
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _02000A20 @ =0x00007FFF
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
_02000A02:
	ldr r0, [r7, #0x10]
	cmp r0, #7
	ble _02000A24
	b _02000A88
	.align 2, 0
_02000A0C: .4byte 0x00001683
_02000A10: .4byte 0x000003FF
_02000A14: .4byte 0x00005863
_02000A18: .4byte 0x00005CBF
_02000A1C: .4byte 0x000073A5
_02000A20: .4byte 0x00007FFF
_02000A24:
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
	bge _02000A42
	adds r3, #7
_02000A42:
	asrs r2, r3, #3
	adds r1, r2, #0
	adds r2, r7, #0
	adds r2, #8
	ldrh r3, [r2]
	ldr r2, [r7, #0x10]
	muls r3, r2, r3
	adds r2, r3, #0
	cmp r2, #0
	bge _02000A58
	adds r2, #7
_02000A58:
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
	bge _02000A74
	adds r2, #7
_02000A74:
	asrs r2, r2, #3
	adds r3, r2, #0
	lsls r2, r3, #0xa
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _02000A02
_02000A88:
	ldr r0, [r7, #0xc]
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02000A98
sub_02000A98: @ 0x02000A98
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _02000AF0 @ =0x040000D4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _02000AF4 @ =gUnk_03000978
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _02000AF8 @ =0x0600E000
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02000AFC @ =0x84000200
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _02000AF0 @ =0x040000D4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _02000B00 @ =gUnk_03001178
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _02000B04 @ =0x0600E800
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02000AFC @ =0x84000200
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
_02000AF0: .4byte 0x040000D4
_02000AF4: .4byte gUnk_03000978
_02000AF8: .4byte 0x0600E000
_02000AFC: .4byte 0x84000200
_02000B00: .4byte gUnk_03001178
_02000B04: .4byte 0x0600E800

	thumb_func_start sub_02000B08
sub_02000B08: @ 0x02000B08
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
_02000B18:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _02000B26
	b _02000D04
_02000B26:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _02000B5C @ =gUnk_02007AB1
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _02000BA4
	ldr r0, [r7, #8]
	ldr r2, [r7, #0xc]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xc
	beq _02000B72
	cmp r0, #0xc
	bgt _02000B60
	cmp r0, #0xa
	beq _02000B66
	b _02000B9C
	.align 2, 0
_02000B5C: .4byte gUnk_02007AB1
_02000B60:
	cmp r0, #0x1b
	beq _02000B7E
	b _02000B9C
_02000B66:
	bl sub_02000FD0
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _02000BA2
_02000B72:
	bl sub_02000FF0
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _02000BA2
_02000B7E:
	adds r1, r7, #4
	ldr r0, [r7, #8]
	ldr r2, [r7, #0xc]
	adds r0, r0, r2
	adds r2, r0, #1
	adds r0, r7, #0
	bl sub_020010D8
	ldr r1, [r7, #0xc]
	adds r0, r1, r0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _02000BA2
_02000B9C:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
_02000BA2:
	b _02000D02
_02000BA4:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _02000BB4
	b _02000CFC
_02000BB4:
	bl sub_02000D40
	ldr r0, _02000BF8 @ =gUnk_03000970
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _02000BFC @ =0x00001024
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
	ldr r0, _02000C00 @ =0x0000FFFF
	cmp r1, r0
	bne _02000C04
	adds r0, r7, #0
	adds r0, #0x10
	movs r1, #0
	strh r1, [r0]
	b _02000C3E
	.align 2, 0
_02000BF8: .4byte gUnk_03000970
_02000BFC: .4byte 0x00001024
_02000C00: .4byte 0x0000FFFF
_02000C04:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	ldr r2, _02000CE4 @ =gUnk_03000970
	ldr r3, [r7]
	adds r4, r3, #0
	lsls r3, r4, #3
	adds r4, r2, r3
	adds r2, r4, #0
	ldr r2, _02000CE8 @ =0x00001028
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
_02000C3E:
	ldr r0, _02000CE4 @ =gUnk_03000970
	ldr r2, _02000CE4 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000CEC @ =0x0000100C
	adds r2, r2, r1
	ldr r1, _02000CE4 @ =gUnk_03000970
	ldr r2, [r2]
	ldr r3, [r1]
	adds r1, r2, r3
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r3, _02000CE4 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000CF0 @ =0x00001010
	adds r3, r3, r2
	ldr r2, _02000CE4 @ =gUnk_03000970
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
	ldr r0, _02000CE4 @ =gUnk_03000970
	ldr r2, _02000CE4 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000CEC @ =0x0000100C
	adds r2, r2, r1
	ldr r1, _02000CE4 @ =gUnk_03000970
	ldr r2, [r2]
	ldr r3, [r1]
	adds r1, r2, r3
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r3, _02000CE4 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000CF0 @ =0x00001010
	adds r3, r3, r2
	ldr r2, _02000CE4 @ =gUnk_03000970
	ldr r3, [r3]
	ldr r4, [r2, #4]
	adds r2, r3, r4
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r2, _02000CF4 @ =0x00000808
	adds r3, r0, r2
	adds r0, r3, r1
	ldr r1, _02000CE4 @ =gUnk_03000970
	adds r2, r1, #0
	ldr r2, _02000CF8 @ =0x00001008
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
	ldr r1, _02000CE4 @ =gUnk_03000970
	ldr r0, _02000CE4 @ =gUnk_03000970
	ldr r1, _02000CE4 @ =gUnk_03000970
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	b _02000D02
	.align 2, 0
_02000CE4: .4byte gUnk_03000970
_02000CE8: .4byte 0x00001028
_02000CEC: .4byte 0x0000100C
_02000CF0: .4byte 0x00001010
_02000CF4: .4byte 0x00000808
_02000CF8: .4byte 0x00001008
_02000CFC:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
_02000D02:
	b _02000B18
_02000D04:
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02000D0C
sub_02000D0C: @ 0x02000D0C
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
	b _02000D36
_02000D36:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02000D40
sub_02000D40: @ 0x02000D40
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	ldr r0, _02000DA8 @ =gUnk_03000970
	ldr r2, _02000DA8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000DAC @ =0x00001014
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	blt _02000D5C
	bl sub_02000FD0
_02000D5C:
	ldr r0, _02000DA8 @ =gUnk_03000970
	ldr r2, _02000DA8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000DB0 @ =0x00001018
	adds r2, r2, r1
	ldr r0, [r0, #4]
	ldr r1, [r2]
	cmp r0, r1
	bge _02000D70
	b _02000FA8
_02000D70:
	ldr r0, _02000DA8 @ =gUnk_03000970
	ldr r2, _02000DA8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000DB0 @ =0x00001018
	adds r2, r2, r1
	ldr r1, [r2]
	subs r2, r1, #1
	str r2, [r0, #4]
	ldr r1, _02000DA8 @ =gUnk_03000970
	adds r0, r1, #0
	ldr r2, _02000DB4 @ =0x0000101C
	adds r1, r1, r2
	ldr r0, [r1]
	cmp r0, #1
	beq _02000D90
	b _02000FA8
_02000D90:
	movs r0, #0
	str r0, [r7]
_02000D94:
	ldr r1, _02000DA8 @ =gUnk_03000970
	adds r0, r1, #0
	ldr r0, _02000DB0 @ =0x00001018
	adds r1, r1, r0
	ldr r2, [r1]
	subs r0, r2, #1
	ldr r1, [r7]
	cmp r1, r0
	blt _02000DB8
	b _02000ED8
	.align 2, 0
_02000DA8: .4byte gUnk_03000970
_02000DAC: .4byte 0x00001014
_02000DB0: .4byte 0x00001018
_02000DB4: .4byte 0x0000101C
_02000DB8:
	ldr r0, _02000EB4 @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r2, _02000EB8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000EBC @ =0x00001010
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _02000EB8 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000EC0 @ =0x0000100C
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _02000EC4 @ =gUnk_030009B8
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r2, _02000EB8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000EBC @ =0x00001010
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _02000EB8 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000EC0 @ =0x0000100C
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _02000EC8 @ =gUnk_03000978
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _02000EB8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000ECC @ =0x00001014
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
	ldr r0, _02000EB4 @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r2, _02000EB8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000EBC @ =0x00001010
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _02000EB8 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000EC0 @ =0x0000100C
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _02000ED0 @ =gUnk_030011B8
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r2, _02000EB8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000EBC @ =0x00001010
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _02000EB8 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000EC0 @ =0x0000100C
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _02000ED4 @ =gUnk_03001178
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _02000EB8 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000ECC @ =0x00001014
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
	b _02000D94
	.align 2, 0
_02000EB4: .4byte 0x040000D4
_02000EB8: .4byte gUnk_03000970
_02000EBC: .4byte 0x00001010
_02000EC0: .4byte 0x0000100C
_02000EC4: .4byte gUnk_030009B8
_02000EC8: .4byte gUnk_03000978
_02000ECC: .4byte 0x00001014
_02000ED0: .4byte gUnk_030011B8
_02000ED4: .4byte gUnk_03001178
_02000ED8:
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02000FB0 @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _02000FB4 @ =gUnk_03000970
	adds r2, r1, #0
	ldr r2, _02000FB8 @ =0x00001010
	adds r1, r1, r2
	ldr r3, _02000FB4 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000FBC @ =0x00001018
	adds r3, r3, r2
	ldr r1, [r1]
	ldr r2, [r3]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _02000FB4 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000FC0 @ =0x0000100C
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _02000FC4 @ =gUnk_03000938
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _02000FB4 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000FC8 @ =0x00001014
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
	ldr r0, _02000FB0 @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _02000FB4 @ =gUnk_03000970
	adds r2, r1, #0
	ldr r2, _02000FB8 @ =0x00001010
	adds r1, r1, r2
	ldr r3, _02000FB4 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000FBC @ =0x00001018
	adds r3, r3, r2
	ldr r1, [r1]
	ldr r2, [r3]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _02000FB4 @ =gUnk_03000970
	adds r2, r3, #0
	ldr r2, _02000FC0 @ =0x0000100C
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _02000FCC @ =gUnk_03001138
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _02000FB4 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02000FC8 @ =0x00001014
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
_02000FA8:
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_02000FB0: .4byte 0x040000D4
_02000FB4: .4byte gUnk_03000970
_02000FB8: .4byte 0x00001010
_02000FBC: .4byte 0x00001018
_02000FC0: .4byte 0x0000100C
_02000FC4: .4byte gUnk_03000938
_02000FC8: .4byte 0x00001014
_02000FCC: .4byte gUnk_03001138

	thumb_func_start sub_02000FD0
sub_02000FD0: @ 0x02000FD0
	push {r7, lr}
	mov r7, sp
	ldr r0, _02000FEC @ =gUnk_03000970
	movs r1, #0
	str r1, [r0]
	ldr r1, _02000FEC @ =gUnk_03000970
	ldr r0, _02000FEC @ =gUnk_03000970
	ldr r1, _02000FEC @ =gUnk_03000970
	ldr r2, [r1, #4]
	adds r1, r2, #1
	str r1, [r0, #4]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_02000FEC: .4byte gUnk_03000970

	thumb_func_start sub_02000FF0
sub_02000FF0: @ 0x02000FF0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	ldr r1, _02001020 @ =gUnk_03000970
	adds r0, r1, #0
	ldr r0, _02001024 @ =0x00001010
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r7]
_02001002:
	ldr r0, _02001020 @ =gUnk_03000970
	adds r1, r0, #0
	ldr r1, _02001024 @ =0x00001010
	adds r0, r0, r1
	ldr r2, _02001020 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02001028 @ =0x00001018
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [r7]
	cmp r1, r0
	blt _0200102C
	b _020010C0
	.align 2, 0
_02001020: .4byte gUnk_03000970
_02001024: .4byte 0x00001010
_02001028: .4byte 0x00001018
_0200102C:
	ldr r1, _02001058 @ =gUnk_03000970
	adds r0, r1, #0
	ldr r2, _0200105C @ =0x0000100C
	adds r1, r1, r2
	ldr r0, [r1]
	str r0, [r7, #4]
_02001038:
	ldr r0, _02001058 @ =gUnk_03000970
	adds r1, r0, #0
	ldr r1, _0200105C @ =0x0000100C
	adds r0, r0, r1
	ldr r2, _02001058 @ =gUnk_03000970
	adds r1, r2, #0
	ldr r1, _02001060 @ =0x00001014
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [r7, #4]
	cmp r1, r0
	blt _02001064
	b _020010B8
	.align 2, 0
_02001058: .4byte gUnk_03000970
_0200105C: .4byte 0x0000100C
_02001060: .4byte 0x00001014
_02001064:
	ldr r0, _020010B0 @ =gUnk_03000970
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
	ldr r0, _020010B0 @ =gUnk_03000970
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r2, _020010B4 @ =0x00000808
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
	b _02001038
	.align 2, 0
_020010B0: .4byte gUnk_03000970
_020010B4: .4byte 0x00000808
_020010B8:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _02001002
_020010C0:
	ldr r0, _020010D4 @ =gUnk_03000970
	movs r1, #0
	str r1, [r0]
	ldr r0, _020010D4 @ =gUnk_03000970
	movs r1, #0
	str r1, [r0, #4]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_020010D4: .4byte gUnk_03000970

	thumb_func_start sub_020010D8
sub_020010D8: @ 0x020010D8
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
	beq _020010F8
	movs r0, #0
	b _02001134
_020010F8:
	adds r1, r7, #0
	adds r1, #8
	ldr r2, [r1]
	ldrb r0, [r2]
	adds r2, #1
	str r2, [r1]
	cmp r0, #0x46
	beq _0200110E
	cmp r0, #0x50
	beq _0200111E
	b _02001130
_0200110E:
	ldr r0, [r7, #8]
	ldrb r1, [r0]
	ldr r0, [r7]
	bl sub_0200113C
	adds r1, r0, #0
	adds r0, r1, #0
	b _02001134
_0200111E:
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldrb r2, [r1]
	adds r1, r2, #0
	bl sub_02001178
	adds r1, r0, #0
	adds r0, r1, #0
	b _02001134
_02001130:
	movs r0, #0
	b _02001134
_02001134:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0200113C
sub_0200113C: @ 0x0200113C
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
	blt _0200116C
	ldr r0, [r7, #8]
	cmp r0, #7
	bgt _0200116C
	ldr r0, [r7]
	ldr r1, [r7, #8]
	str r1, [r0]
	movs r0, #3
	b _02001170
_0200116A:
	.byte 0x01, 0xE0
_0200116C:
	movs r0, #0
	b _02001170
_02001170:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02001178
sub_02001178: @ 0x02001178
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
	bls _020011AA
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #0x46
	bhi _020011AA
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x37
	str r0, [r7, #8]
_020011AA:
	ldr r0, [r7, #8]
	cmp r0, #0
	blt _020011C2
	ldr r0, [r7, #8]
	cmp r0, #0xf
	bgt _020011C2
	ldr r0, [r7]
	ldr r1, [r7, #8]
	str r1, [r0]
	movs r0, #3
	b _020011C6
_020011C0:
	.byte 0x01, 0xE0
_020011C2:
	movs r0, #0
	b _020011C6
_020011C6:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020011D0
sub_020011D0: @ 0x020011D0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _020011F0 @ =gUnk_02006EA8
	movs r2, #0xc0
	lsls r2, r2, #4
	ldr r3, _020011F4 @ =sub_02000D0C
	ldr r0, [r7]
	bl sub_02000838
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_020011F0: .4byte gUnk_02006EA8
_020011F4: .4byte sub_02000D0C

	arm_func_start sub_020011F8
sub_020011F8: @ 0x020011F8
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
	ldr r1, _020012F8 @ =gUnk_03000000
	add r1, r1, r2
	ldr r0, [r1]
	tst r0, r0
	bxne r0
	bx lr
	.align 2, 0
_020012EC: .4byte 0x04000200
_020012F0: .4byte gUnk_03000040
_020012F4: .4byte 0x03007FF8
_020012F8: .4byte gUnk_03000000

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x020012FC
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x02001300
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x02001304
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x02001308
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x0200130C
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x02001310
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x02001314
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x02001318
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x0200131C
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x02001320
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x02001324
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x02001328
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x0200132C
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x02001330
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x02001334
	bx lr
	nop

	thumb_func_start _sprintf_r
_sprintf_r: @ 0x02001338
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _02001370 @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl vfprintf
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_02001370: .4byte 0x7FFFFFFF

	thumb_func_start sprintf
sprintf: @ 0x02001374
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _020013AC @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _020013B0 @ =gUnk_03000330
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl vfprintf
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_020013AC: .4byte 0x7FFFFFFF
_020013B0: .4byte gUnk_03000330

	thumb_func_start __sprint
__sprint: @ 0x020013B4
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020013CC
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _020013D0
_020013CC:
	str r1, [r4, #4]
	movs r0, #0
_020013D0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __sbprintf
__sbprintf: @ 0x020013D4
	push {r4, r5, lr}
	ldr r4, _02001444 @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl vfprintf
	adds r4, r0, #0
	cmp r4, #0
	blt _02001424
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _02001424
	movs r4, #1
	rsbs r4, r4, #0
_02001424:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _02001438
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_02001438:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_02001444: .4byte 0xFFFFFBA8

	thumb_func_start vfprintf
vfprintf: @ 0x02001448
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vfprintf_r
	pop {r4, r5, pc}

	thumb_func_start _vfprintf_r
_vfprintf_r: @ 0x0200145C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _020014C4 @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl localeconv
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _0200148E
	ldr r0, _020014C8 @ =gUnk_03000330
	ldr r0, [r0]
	str r0, [r1, #0x54]
_0200148E:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _0200149E
	adds r0, r1, #0
	bl __sinit
_0200149E:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _020014B2
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _020014CC
_020014B2:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _020014CC
	movs r0, #1
	rsbs r0, r0, #0
	bl _020023AC
	.align 2, 0
_020014C4: .4byte 0xFFFFFDE0
_020014C8: .4byte gUnk_03000330
_020014CC:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _020014F0
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _020014F0
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl _020023AC
_020014F0:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_02001514:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_02001518:
	ldr r0, _020015C4 @ =gUnk_03000330
	ldr r0, [r0]
	ldr r1, _020015C8 @ =gUnk_03000334
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _02001546
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _02001518
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_02001546:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _0200157E
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _02001578
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _02001576
	bl _02002398
_02001576:
	add r5, sp, #0x28
_02001578:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_0200157E:
	cmp r4, #0
	bgt _02001586
	bl _02002380
_02001586:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _020015CC @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_020015A2:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_020015AE:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _020015B8
	b _02001C6A
_020015B8:
	lsls r0, r0, #2
	ldr r1, _020015D0 @ =_020015D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_020015C4: .4byte gUnk_03000330
_020015C8: .4byte gUnk_03000334
_020015CC: .4byte 0x000001C9
_020015D0: .4byte _020015D4
_020015D4: @ jump table
	.4byte _02001738 @ case 0
	.4byte _02001C6A @ case 1
	.4byte _02001C6A @ case 2
	.4byte _02001750 @ case 3
	.4byte _02001C6A @ case 4
	.4byte _02001C6A @ case 5
	.4byte _02001C6A @ case 6
	.4byte _02001C6A @ case 7
	.4byte _02001C6A @ case 8
	.4byte _02001C6A @ case 9
	.4byte _02001754 @ case 10
	.4byte _0200176E @ case 11
	.4byte _02001C6A @ case 12
	.4byte _0200176A @ case 13
	.4byte _0200177C @ case 14
	.4byte _02001C6A @ case 15
	.4byte _020017DC @ case 16
	.4byte _020017E0 @ case 17
	.4byte _020017E0 @ case 18
	.4byte _020017E0 @ case 19
	.4byte _020017E0 @ case 20
	.4byte _020017E0 @ case 21
	.4byte _020017E0 @ case 22
	.4byte _020017E0 @ case 23
	.4byte _020017E0 @ case 24
	.4byte _020017E0 @ case 25
	.4byte _02001C6A @ case 26
	.4byte _02001C6A @ case 27
	.4byte _02001C6A @ case 28
	.4byte _02001C6A @ case 29
	.4byte _02001C6A @ case 30
	.4byte _02001C6A @ case 31
	.4byte _02001C6A @ case 32
	.4byte _02001C6A @ case 33
	.4byte _02001C6A @ case 34
	.4byte _02001C6A @ case 35
	.4byte _0200184A @ case 36
	.4byte _0200189C @ case 37
	.4byte _02001C6A @ case 38
	.4byte _0200189C @ case 39
	.4byte _02001C6A @ case 40
	.4byte _02001C6A @ case 41
	.4byte _02001C6A @ case 42
	.4byte _02001C6A @ case 43
	.4byte _02001804 @ case 44
	.4byte _02001C6A @ case 45
	.4byte _02001C6A @ case 46
	.4byte _02001A52 @ case 47
	.4byte _02001C6A @ case 48
	.4byte _02001C6A @ case 49
	.4byte _02001C6A @ case 50
	.4byte _02001C6A @ case 51
	.4byte _02001C6A @ case 52
	.4byte _02001AEA @ case 53
	.4byte _02001C6A @ case 54
	.4byte _02001C6A @ case 55
	.4byte _02001B26 @ case 56
	.4byte _02001C6A @ case 57
	.4byte _02001C6A @ case 58
	.4byte _02001C6A @ case 59
	.4byte _02001C6A @ case 60
	.4byte _02001C6A @ case 61
	.4byte _02001C6A @ case 62
	.4byte _02001C6A @ case 63
	.4byte _02001C6A @ case 64
	.4byte _02001C6A @ case 65
	.4byte _02001C6A @ case 66
	.4byte _02001838 @ case 67
	.4byte _02001852 @ case 68
	.4byte _0200189C @ case 69
	.4byte _0200189C @ case 70
	.4byte _0200189C @ case 71
	.4byte _02001808 @ case 72
	.4byte _02001852 @ case 73
	.4byte _02001C6A @ case 74
	.4byte _02001C6A @ case 75
	.4byte _0200180C @ case 76
	.4byte _02001C6A @ case 77
	.4byte _02001A0C @ case 78
	.4byte _02001A5A @ case 79
	.4byte _02001A88 @ case 80
	.4byte _0200182E @ case 81
	.4byte _02001C6A @ case 82
	.4byte _02001AA8 @ case 83
	.4byte _02001C6A @ case 84
	.4byte _02001AF2 @ case 85
	.4byte _02001C6A @ case 86
	.4byte _02001C6A @ case 87
	.4byte _02001B30 @ case 88
_02001738:
	ldr r1, _0200174C @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _02001744
	b _020015A2
_02001744:
	movs r0, #0x20
	strb r0, [r1]
	b _020015A2
	.align 2, 0
_0200174C: .4byte 0x000001C9
_02001750:
	movs r0, #1
	b _0200181C
_02001754:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _02001766
	b _020015A2
_02001766:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_0200176A:
	movs r0, #4
	b _02001830
_0200176E:
	ldr r1, _02001778 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _020015A2
	.align 2, 0
_02001778: .4byte 0x000001C9
_0200177C:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _020017A6
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _020017A2
	b _020015A2
_020017A2:
	adds r6, r0, #0
	b _020015A2
_020017A6:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _020017C6
_020017AC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_020017C6:
	subs r0, #0x30
	cmp r0, #9
	bls _020017AC
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _020017D8
	b _020015AE
_020017D8:
	adds r6, r0, #0
	b _020015AE
_020017DC:
	movs r0, #0x80
	b _02001830
_020017E0:
	movs r4, #0
_020017E2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _020017E2
	str r4, [sp, #0x1f4]
	b _020015AE
_02001804:
	movs r0, #8
	b _0200181C
_02001808:
	movs r0, #0x40
	b _02001826
_0200180C:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _02001824
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_0200181C:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _020015A2
_02001824:
	movs r0, #0x10
_02001826:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _020015A2
_0200182E:
	movs r0, #0x20
_02001830:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _020015A2
_02001838:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _02001C78
_0200184A:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_02001852:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _02001862
	movs r4, #4
	add sl, r4
	b _0200187E
_02001862:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0200187A
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _02001884
_0200187A:
	movs r2, #4
	add sl, r2
_0200187E:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_02001884:
	cmp r4, #0
	bge _02001892
	rsbs r4, r4, #0
	ldr r1, _02001898 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_02001892:
	movs r2, #1
	b _02001B7E
	.align 2, 0
_02001898: .4byte 0x000001C9
_0200189C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _020018A8
	movs r6, #6
	b _020018B8
_020018A8:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _020018B2
	cmp r4, #0x47
	bne _020018B8
_020018B2:
	cmp r6, #0
	bne _020018B8
	movs r6, #1
_020018B8:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isinf
	cmp r0, #0
	beq _0200190C
	ldr r3, _02001900 @ =0x00000000
	ldr r2, _020018FC @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __ltdf2
	cmp r0, #0
	bge _020018F2
	ldr r1, _02001904 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_020018F2:
	ldr r2, _02001908 @ =gUnk_02007BD4
	mov r8, r2
	movs r3, #3
	b _02001C82
	.align 2, 0
_020018FC: .4byte 0x00000000
_02001900: .4byte 0x00000000
_02001904: .4byte 0x000001C9
_02001908: .4byte gUnk_02007BD4
_0200190C:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _02001924
	ldr r4, _02001920 @ =gUnk_02007BD8
	mov r8, r4
	movs r3, #3
	b _02001C82
	.align 2, 0
_02001920: .4byte gUnk_02007BD8
_02001924:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl cvt
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _02001958
	cmp r4, #0x47
	bne _0200197A
_02001958:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _02001968
	cmp r1, r6
	ble _02001976
_02001968:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _02001972
	movs r0, #0x65
_02001972:
	str r0, [sp, #0x1e8]
	b _0200197A
_02001976:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_0200197A:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _020019A0
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl exponent
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _020019E0
	b _020019D6
_020019A0:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _020019C8
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _020019C4
	adds r3, r0, #0
	cmp r6, #0
	bne _020019BE
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _020019F0
_020019BE:
	adds r0, r3, #1
	adds r3, r0, r6
	b _020019F0
_020019C4:
	adds r3, r6, #2
	b _020019F0
_020019C8:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _020019E4
	adds r3, r1, #0
_020019D6:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _020019F0
_020019E0:
	adds r3, #1
	b _020019F0
_020019E4:
	cmp r1, #0
	bgt _020019EE
	adds r0, #2
	subs r3, r0, r1
	b _020019F0
_020019EE:
	adds r3, r0, #1
_020019F0:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _020019FE
	b _02001C86
_020019FE:
	ldr r1, _02001A08 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _02001C86
	.align 2, 0
_02001A08: .4byte 0x000001C9
_02001A0C:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _02001A26
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _02001514
_02001A26:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _02001A42
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _02001514
_02001A42:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _02001514
_02001A52:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_02001A5A:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _02001A7A
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _02001A7A
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _02001A84
_02001A7A:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_02001A84:
	movs r2, #0
	b _02001B76
_02001A88:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _02001AA4 @ =gUnk_02007BDC
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _02001B76
	.align 2, 0
_02001AA4: .4byte gUnk_02007BDC
_02001AA8:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _02001ABC
	ldr r4, _02001ADC @ =gUnk_02007BF0
	mov r8, r4
_02001ABC:
	cmp r6, #0
	blt _02001AE0
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _02001AD8
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _02001AD8
	b _02001C7A
_02001AD8:
	adds r3, r6, #0
	b _02001C7A
	.align 2, 0
_02001ADC: .4byte gUnk_02007BF0
_02001AE0:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _02001C7A
_02001AEA:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_02001AF2:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _02001B02
	movs r0, #4
	add sl, r0
	b _02001B1C
_02001B02:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _02001B18
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _02001B22
_02001B18:
	movs r4, #4
	add sl, r4
_02001B1C:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_02001B22:
	movs r2, #1
	b _02001B76
_02001B26:
	ldr r0, _02001B2C @ =gUnk_02007BF8
	str r0, [sp, #0x210]
	b _02001B34
	.align 2, 0
_02001B2C: .4byte gUnk_02007BF8
_02001B30:
	ldr r1, _02001B54 @ =gUnk_02007BDC
	str r1, [sp, #0x210]
_02001B34:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _02001B58
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _02001B58
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _02001B62
	.align 2, 0
_02001B54: .4byte gUnk_02007BDC
_02001B58:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_02001B62:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _02001B76
	cmp r4, #0
	beq _02001B76
	orrs r1, r2
	str r1, [sp, #0x1ec]
_02001B76:
	ldr r1, _02001BC0 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_02001B7E:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _02001B8E
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_02001B8E:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _02001BA4
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _02001C5C
_02001BA4:
	cmp r2, #1
	beq _02001C02
	cmp r2, #1
	blo _02001BC8
	cmp r2, #2
	beq _02001C3C
	ldr r2, _02001BC4 @ =gUnk_02007C0C
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _02001C82
	.align 2, 0
_02001BC0: .4byte 0x000001C9
_02001BC4: .4byte gUnk_02007C0C
_02001BC8:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_02001BCE:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _02001BCE
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _02001C5C
	cmp r1, #0x30
	beq _02001C5C
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _02001C5C
_02001C02:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _02001C2C
_02001C0A:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #9
	bhi _02001C0A
_02001C2C:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _02001C5C
_02001C3C:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_02001C42:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _02001C42
_02001C5C:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _02001C86
_02001C6A:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _02001C72
	b _02002380
_02001C72:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_02001C78:
	movs r3, #1
_02001C7A:
	ldr r1, _02001CA4 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_02001C82:
	adds r7, r5, #0
	adds r7, #8
_02001C86:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _02001C90
	str r2, [sp, #0x20c]
_02001C90:
	ldr r0, _02001CA4 @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _02001CA8
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _02001CB8
	.align 2, 0
_02001CA4: .4byte 0x000001C9
_02001CA8:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _02001CB8
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_02001CB8:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _02001D38
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _02001D38
	ldr r1, _02001D64 @ =gUnk_02007BB4
	cmp r4, #0x10
	ble _02001D0C
	mov r6, sb
_02001CD4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _02001D02
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _02001CFE
	b _02002398
_02001CFE:
	add r5, sp, #0x28
	ldr r1, _02001D64 @ =gUnk_02007BB4
_02001D02:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _02001CD4
_02001D0C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _02001D38
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _02001D36
	b _02002398
_02001D36:
	add r5, sp, #0x28
_02001D38:
	ldr r1, _02001D68 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _02001D6C
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _02001DAC
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _02001D9C
	.align 2, 0
_02001D64: .4byte gUnk_02007BB4
_02001D68: .4byte 0x000001C9
_02001D6C:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _02001DAC
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _02001DAC
	ldr r0, [sp, #0x1e0]
_02001D9C:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _02001DAA
	b _02002398
_02001DAA:
	add r5, sp, #0x28
_02001DAC:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _02001E28
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _02001E28
	ldr r1, _02001EC4 @ =gUnk_02007BC4
	cmp r4, #0x10
	ble _02001DFC
	mov r6, sb
_02001DC8:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _02001DF6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _02001DF2
	b _02002398
_02001DF2:
	add r5, sp, #0x28
	ldr r1, _02001EC4 @ =gUnk_02007BC4
_02001DF6:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _02001DC8
_02001DFC:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _02001E28
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _02001E26
	b _02002398
_02001E26:
	add r5, sp, #0x28
_02001E28:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _02001E96
	ldr r1, _02001EC4 @ =gUnk_02007BC4
	cmp r4, #0x10
	ble _02001E6C
	mov r6, sb
_02001E38:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _02001E66
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _02001E62
	b _02002398
_02001E62:
	add r5, sp, #0x28
	ldr r1, _02001EC4 @ =gUnk_02007BC4
_02001E66:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _02001E38
_02001E6C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _02001E96
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _02001E94
	b _02002398
_02001E94:
	add r5, sp, #0x28
_02001E96:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _02001EC8
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _02001EBE
	b _020022DE
_02001EBE:
	ldr r0, [sp, #0x1e0]
	b _020022D4
	.align 2, 0
_02001EC4: .4byte gUnk_02007BC4
_02001EC8:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _02001ED0
	b _020021B4
_02001ED0:
	ldr r3, _02001F9C @ =0x00000000
	ldr r2, _02001F98 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __eqdf2
	cmp r0, #0
	bne _02001FA8
	ldr r0, _02001FA0 @ =gUnk_02007C28
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _02001F0C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _02001F0A
	b _02002398
_02001F0A:
	add r5, sp, #0x28
_02001F0C:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _02001F22
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _02001F22
	b _020022DE
_02001F22:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _02001F4A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _02001F48
	b _02002398
_02001F48:
	add r5, sp, #0x28
_02001F4A:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _02001F54
	b _020022DE
_02001F54:
	ldr r1, _02001FA4 @ =gUnk_02007BC4
	cmp r4, #0x10
	ble _02001F8C
	mov r6, sb
_02001F5C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _02001F86
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _02001F82
	b _02002398
_02001F82:
	add r5, sp, #0x28
	ldr r1, _02001FA4 @ =gUnk_02007BC4
_02001F86:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _02001F5C
_02001F8C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _020022C2
	.align 2, 0
_02001F98: .4byte 0x00000000
_02001F9C: .4byte 0x00000000
_02001FA0: .4byte gUnk_02007C28
_02001FA4: .4byte gUnk_02007BC4
_02001FA8:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _02002090
	ldr r0, _02002088 @ =gUnk_02007C28
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _02001FDA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _02001FD8
	b _02002398
_02001FD8:
	add r5, sp, #0x28
_02001FDA:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _02002004
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _02002002
	b _02002398
_02002002:
	add r5, sp, #0x28
_02002004:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _0200206A
	ldr r1, _0200208C @ =gUnk_02007BC4
	cmp r4, #0x10
	ble _02002044
	mov r6, sb
_02002014:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0200203E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0200203A
	b _02002398
_0200203A:
	add r5, sp, #0x28
	ldr r1, _0200208C @ =gUnk_02007BC4
_0200203E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _02002014
_02002044:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0200206A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _02002068
	b _02002398
_02002068:
	add r5, sp, #0x28
_0200206A:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _020022CC
	.align 2, 0
_02002088: .4byte gUnk_02007C28
_0200208C: .4byte gUnk_02007BC4
_02002090:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _0200214C
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _020020C2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _020020C0
	b _02002398
_020020C0:
	add r5, sp, #0x28
_020020C2:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _0200212A
	ldr r1, _02002144 @ =gUnk_02007BC4
	cmp r4, #0x10
	ble _02002104
	mov r6, sb
_020020D4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _020020FE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _020020FA
	b _02002398
_020020FA:
	add r5, sp, #0x28
	ldr r1, _02002144 @ =gUnk_02007BC4
_020020FE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _020020D4
_02002104:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0200212A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _02002128
	b _02002398
_02002128:
	add r5, sp, #0x28
_0200212A:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _02002136
	b _020022DE
_02002136:
	ldr r0, _02002148 @ =gUnk_02007C2C
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _020022C2
	.align 2, 0
_02002144: .4byte gUnk_02007BC4
_02002148: .4byte gUnk_02007C2C
_0200214C:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _02002174
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _02002172
	b _02002398
_02002172:
	add r5, sp, #0x28
_02002174:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _020021B0 @ =gUnk_02007C2C
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _020021A4
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _020021A2
	b _02002398
_020021A2:
	add r5, sp, #0x28
_020021A4:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _020022BA
	.align 2, 0
_020021B0: .4byte gUnk_02007C2C
_020021B4:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _020021C6
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0200228C
_020021C6:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _020021FE
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _020021FC
	b _02002398
_020021FC:
	add r5, sp, #0x28
_020021FE:
	ldr r3, _02002228 @ =0x00000000
	ldr r2, _02002224 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __nedf2
	cmp r0, #0
	beq _0200222C
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _02002298
	.align 2, 0
_02002224: .4byte 0x00000000
_02002228: .4byte 0x00000000
_0200222C:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _020022B4
	ldr r1, _02002288 @ =gUnk_02007BC4
	cmp r4, #0x10
	ble _0200226C
	mov r6, sb
_0200223C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _02002266
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _02002262
	b _02002398
_02002262:
	add r5, sp, #0x28
	ldr r1, _02002288 @ =gUnk_02007BC4
_02002266:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0200223C
_0200226C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _020022B4
	ldr r0, [sp, #0x1e0]
	b _020022AA
	.align 2, 0
_02002288: .4byte gUnk_02007BC4
_0200228C:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_02002298:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _020022B4
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_020022AA:
	bl __sprint
	cmp r0, #0
	bne _02002398
	add r5, sp, #0x28
_020022B4:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_020022BA:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_020022C2:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_020022CC:
	cmp r0, #7
	ble _020022DE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_020022D4:
	bl __sprint
	cmp r0, #0
	bne _02002398
	add r5, sp, #0x28
_020022DE:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _0200234A
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0200234A
	ldr r1, _0200237C @ =gUnk_02007BB4
	cmp r4, #0x10
	ble _02002328
	mov r6, sb
_020022FA:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _02002322
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _02002398
	add r5, sp, #0x28
	ldr r1, _0200237C @ =gUnk_02007BB4
_02002322:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _020022FA
_02002328:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0200234A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _02002398
_0200234A:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _02002354
	adds r0, r4, #0
_02002354:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0200236E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _02002398
_0200236E:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _02001514
	.align 2, 0
_0200237C: .4byte gUnk_02007BB4
_02002380:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02002392
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _02002398
_02002392:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_02002398:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _020023AA
	ldr r1, [sp, #0x1f0]
_020023AA:
	adds r0, r1, #0
_020023AC:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start cvt
cvt: @ 0x020023BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _020023E2
	movs r7, #3
	b _020023F2
_020023E2:
	mov r0, sb
	cmp r0, #0x65
	beq _020023EC
	cmp r0, #0x45
	bne _020023F0
_020023EC:
	movs r1, #1
	add r8, r1
_020023F0:
	movs r7, #2
_020023F2:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _02002408
	adds r1, r5, #0
	adds r0, r4, #0
	bl __negdf2
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_02002408:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl _dtoa_r
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _02002434
	cmp r1, #0x47
	bne _0200243C
_02002434:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _02002490
_0200243C:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _0200246C
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _02002466
	ldr r3, _020024AC @ =0x00000000
	ldr r2, _020024A8 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _02002466
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_02002466:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_0200246C:
	ldr r3, _020024AC @ =0x00000000
	ldr r2, _020024A8 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __eqdf2
	cmp r0, #0
	bne _0200247E
	str r6, [sp, #0x14]
_0200247E:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _02002490
	movs r1, #0x30
_02002486:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _02002486
_02002490:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020024A8: .4byte 0x00000000
_020024AC: .4byte 0x00000000

	thumb_func_start exponent
exponent: @ 0x020024B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _020024C6
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _020024C8
_020024C6:
	movs r0, #0x2b
_020024C8:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _0200250A
_020024D2:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt _020024D2
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _02002518
	adds r1, r0, #0
_020024FC:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _020024FC
	b _02002518
_0200250A:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_02002518:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __swsetup
__swsetup: @ 0x02002520
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _02002530
	ldr r0, _0200255C @ =gUnk_03000330
	ldr r0, [r0]
	str r0, [r4, #0x54]
_02002530:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _0200253E
	adds r0, r1, #0
	bl __sinit
_0200253E:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _02002598
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _02002560
	movs r0, #1
	rsbs r0, r0, #0
	b _020025CA
	.align 2, 0
_0200255C: .4byte gUnk_03000330
_02002560:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02002590
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _0200257E
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _0200257C
	ldr r0, [r4, #0x54]
	bl _free_r
_0200257C:
	str r5, [r4, #0x30]
_0200257E:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_02002590:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_02002598:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _020025A4
	adds r0, r4, #0
	bl __smakebuf
_020025A4:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _020025BA
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _020025C8
_020025BA:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _020025C6
	ldr r1, [r4, #0x14]
_020025C6:
	str r1, [r4, #8]
_020025C8:
	movs r0, #0
_020025CA:
	pop {r4, r5, pc}

	thumb_func_start quorem
quorem: @ 0x020025CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _020025E8
	movs r0, #0
	b _0200271C
_020025E8:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl __udivsi3
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _02002692
	movs r6, #0
	mov sb, r6
	ldr r0, _0200267C @ =0x0000FFFF
	mov ip, r0
_02002620:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _02002620
	mov r2, sl
	cmp r2, #0
	bne _02002692
	ldr r4, [sp, #0x10]
	b _02002682
	.align 2, 0
_0200267C: .4byte 0x0000FFFF
_02002680:
	subs r7, #1
_02002682:
	subs r5, #4
	cmp r5, r4
	bls _0200268E
	ldr r0, [r5]
	cmp r0, #0
	beq _02002680
_0200268E:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_02002692:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __mcmp
	cmp r0, #0
	blt _0200271A
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _02002704 @ =0x0000FFFF
_020026B4:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _020026B4
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _0200271A
	b _0200270A
	.align 2, 0
_02002704: .4byte 0x0000FFFF
_02002708:
	subs r7, #1
_0200270A:
	subs r5, #4
	cmp r5, r4
	bls _02002716
	ldr r0, [r5]
	cmp r0, #0
	beq _02002708
_02002716:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_0200271A:
	ldr r0, [sp, #8]
_0200271C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _dtoa_r
_dtoa_r: @ 0x02002728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _02002760
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl _Bfree
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_02002760:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _0200277C
	movs r0, #1
	str r0, [r4]
	ldr r0, _02002778 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _0200277E
	.align 2, 0
_02002778: .4byte 0x7FFFFFFF
_0200277C:
	str r0, [r4]
_0200277E:
	ldr r1, _020027C0 @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _020027D4
	ldr r0, _020027C4 @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _020027C8 @ =gUnk_02007C3C
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _020027A6
	ldr r0, _020027CC @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _020027A6
	ldr r2, _020027D0 @ =gUnk_02007C30
	mov sb, r2
_020027A6:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _020027F8
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _020027B8
	adds r1, #5
_020027B8:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _020027F8
	.align 2, 0
_020027C0: .4byte 0x7FF00000
_020027C4: .4byte 0x0000270F
_020027C8: .4byte gUnk_02007C3C
_020027CC: .4byte 0x000FFFFF
_020027D0: .4byte gUnk_02007C30
_020027D4:
	ldr r3, _02002804 @ =0x00000000
	ldr r2, _02002800 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __eqdf2
	cmp r0, #0
	bne _0200280C
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _02002808 @ =gUnk_02007C40
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _020027F8
	adds r0, #1
	str r0, [r1]
_020027F8:
	mov r0, sb
	bl _02003412
	.align 2, 0
_02002800: .4byte 0x00000000
_02002804: .4byte 0x00000000
_02002808: .4byte gUnk_02007C40
_0200280C:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl _d2b
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _0200285C
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _02002850 @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _02002854 @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _02002858 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _020028BC
	.align 2, 0
_02002850: .4byte 0x000FFFFF
_02002854: .4byte 0x3FF00000
_02002858: .4byte 0xFFFFFC01
_0200285C:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _02002884 @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _0200288C
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _02002888 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _02002896
	.align 2, 0
_02002884: .4byte 0x00000432
_02002888: .4byte 0x00000412
_0200288C:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_02002896:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _020028A8
	ldr r3, _0200296C @ =0x00000000
	ldr r2, _02002968 @ =0x41F00000
	bl __adddf3
_020028A8:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _02002970 @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _02002974 @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_020028BC:
	ldr r2, _02002978 @ =0x3FF80000
	ldr r3, _0200297C @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl __subdf3
	ldr r2, _02002980 @ =0x3FD287A7
	ldr r3, _02002984 @ =0x636F4361
	bl __muldf3
	ldr r2, _02002988 @ =0x3FC68A28
	ldr r3, _0200298C @ =0x8B60C8B3
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _02002990 @ =0x3FD34413
	ldr r3, _02002994 @ =0x509F79FB
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl __fixdfsi
	str r0, [sp, #0x24]
	ldr r2, _02002998 @ =0x00000000
	ldr r3, _0200299C @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __ltdf2
	cmp r0, #0
	bge _0200292C
	ldr r0, [sp, #0x24]
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __nedf2
	cmp r0, #0
	beq _0200292C
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_0200292C:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _02002956
	ldr r1, _020029A0 @ =gUnk_02007C90
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _02002952
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_02002952:
	movs r0, #0
	str r0, [sp, #0x2c]
_02002956:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _020029A4
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _020029AC
	.align 2, 0
_02002968: .4byte 0x41F00000
_0200296C: .4byte 0x00000000
_02002970: .4byte 0xFE100000
_02002974: .4byte 0xFFFFFBCD
_02002978: .4byte 0x3FF80000
_0200297C: .4byte 0x00000000
_02002980: .4byte 0x3FD287A7
_02002984: .4byte 0x636F4361
_02002988: .4byte 0x3FC68A28
_0200298C: .4byte 0x8B60C8B3
_02002990: .4byte 0x3FD34413
_02002994: .4byte 0x509F79FB
_02002998: .4byte 0x00000000
_0200299C: .4byte 0x00000000
_020029A0: .4byte gUnk_02007C90
_020029A4:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_020029AC:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _020029C0
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _020029D0
_020029C0:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_020029D0:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _020029DA
	movs r0, #0
	str r0, [sp, #0xc]
_020029DA:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _020029E8
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_020029E8:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _02002A62
	lsls r0, r3, #2
	ldr r1, _020029FC @ =_02002A00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_020029FC: .4byte _02002A00
_02002A00: @ jump table
	.4byte _02002A18 @ case 0
	.4byte _02002A18 @ case 1
	.4byte _02002A2A @ case 2
	.4byte _02002A46 @ case 3
	.4byte _02002A2E @ case 4
	.4byte _02002A4A @ case 5
_02002A18:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _02002A62
_02002A2A:
	movs r3, #0
	str r3, [sp, #0x30]
_02002A2E:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _02002A38
	movs r1, #1
	str r1, [sp, #0xa4]
_02002A38:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _02002A62
_02002A46:
	movs r1, #0
	str r1, [sp, #0x30]
_02002A4A:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _02002A62
	movs r3, #1
	mov r8, r3
_02002A62:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _02002A82
	movs r1, #0
_02002A72:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _02002A72
	mov r3, sl
	str r1, [r3, #0x44]
_02002A82:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _02002A9A
	b _02002E0C
_02002A9A:
	cmp r5, #0
	bne _02002AA0
	b _02002E0C
_02002AA0:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _02002B30
	ldr r0, _02002B28 @ =gUnk_02007C90
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _02002AEC
	ands r4, r2
	ldr r0, _02002B2C @ =gUnk_02007D58
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_02002AEC:
	cmp r4, #0
	beq _02002B14
	ldr r5, _02002B2C @ =gUnk_02007D58
_02002AF2:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02002B0C
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_02002B0C:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _02002AF2
_02002B14:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _02002B7C
	.align 2, 0
_02002B28: .4byte gUnk_02007C90
_02002B2C: .4byte gUnk_02007D58
_02002B30:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _02002B7C
	ldr r1, _02002C24 @ =gUnk_02007C90
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _02002B7C
	ldr r5, _02002C28 @ =gUnk_02007D58
_02002B5A:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02002B74
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_02002B74:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _02002B5A
_02002B7C:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _02002BBA
	ldr r2, _02002C2C @ =0x3FF00000
	ldr r3, _02002C30 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _02002BBA
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _02002BBA
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _02002BA0
	b _02002DF8
_02002BA0:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _02002C34 @ =0x40240000
	ldr r1, _02002C38 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_02002BBA:
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	ldr r2, _02002C3C @ =0x401C0000
	ldr r3, _02002C40 @ =0x00000000
	bl __adddf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _02002C44 @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _02002C50
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _02002C48 @ =0x40140000
	ldr r3, _02002C4C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __gtdf2
	cmp r0, #0
	ble _02002C08
	b _02003182
_02002C08:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl __negdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _02002C22
	b _0200317A
_02002C22:
	b _02002DF8
	.align 2, 0
_02002C24: .4byte gUnk_02007C90
_02002C28: .4byte gUnk_02007D58
_02002C2C: .4byte 0x3FF00000
_02002C30: .4byte 0x00000000
_02002C34: .4byte 0x40240000
_02002C38: .4byte 0x00000000
_02002C3C: .4byte 0x401C0000
_02002C40: .4byte 0x00000000
_02002C44: .4byte 0xFCC00000
_02002C48: .4byte 0x40140000
_02002C4C: .4byte 0x00000000
_02002C50:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _02002D20
	ldr r1, _02002C80 @ =gUnk_02007C90
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _02002C84 @ =0x3FE00000
	ldr r1, _02002C88 @ =0x00000000
	bl __divdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _02002CAC
	.align 2, 0
_02002C80: .4byte gUnk_02007C90
_02002C84: .4byte 0x3FE00000
_02002C88: .4byte 0x00000000
_02002C8C:
	ldr r1, _02002D14 @ =0x00000000
	ldr r0, _02002D10 @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _02002D14 @ =0x00000000
	ldr r0, _02002D10 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_02002CAC:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _02002CE8
	b _020033F2
_02002CE8:
	ldr r0, _02002D18 @ =0x3FF00000
	ldr r1, _02002D1C @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _02002D02
	b _02002F0C
_02002D02:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _02002C8C
	b _02002DF8
	.align 2, 0
_02002D10: .4byte 0x40240000
_02002D14: .4byte 0x00000000
_02002D18: .4byte 0x3FF00000
_02002D1C: .4byte 0x00000000
_02002D20:
	ldr r1, _02002D40 @ =gUnk_02007C90
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _02002D58
	.align 2, 0
_02002D40: .4byte gUnk_02007C90
_02002D44:
	movs r3, #1
	add r8, r3
	ldr r1, _02002DEC @ =0x00000000
	ldr r0, _02002DE8 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_02002D58:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _02002D44
	ldr r6, _02002DF0 @ =0x3FE00000
	ldr r7, _02002DF4 @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __gtdf2
	cmp r0, #0
	ble _02002DAA
	b _02002F0C
_02002DAA:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _02002DF8
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _02002DD6
	b _02002F32
_02002DD6:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _02002DD6
	b _02002F32
	.align 2, 0
_02002DE8: .4byte 0x40240000
_02002DEC: .4byte 0x00000000
_02002DF0: .4byte 0x3FE00000
_02002DF4: .4byte 0x00000000
_02002DF8:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_02002E0C:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _02002E14
	b _02002F48
_02002E14:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _02002E1C
	b _02002F48
_02002E1C:
	ldr r1, _02002E68 @ =gUnk_02007C90
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _02002E74
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _02002E74
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _02002E46
	b _0200317A
_02002E46:
	ldr r2, _02002E6C @ =0x40140000
	ldr r3, _02002E70 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ledf2
	cmp r0, #0
	bgt _02002E64
	b _0200317A
_02002E64:
	b _02003182
	.align 2, 0
_02002E68: .4byte gUnk_02007C90
_02002E6C: .4byte 0x40140000
_02002E70: .4byte 0x00000000
_02002E74:
	movs r2, #1
	mov r8, r2
	b _02002E98
_02002E7A:
	ldr r1, _02002F3C @ =0x00000000
	ldr r0, _02002F38 @ =0x40240000
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _02002F40 @ =0x00000000
	ldr r3, _02002F44 @ =0x00000000
	bl __eqdf2
	cmp r0, #0
	bne _02002E94
	b _020033F2
_02002E94:
	movs r3, #1
	add r8, r3
_02002E98:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _02002E7A
	adds r1, r3, #0
	adds r0, r2, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __gtdf2
	cmp r0, #0
	bgt _02002F0C
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __eqdf2
	cmp r0, #0
	beq _02002F02
	b _020033F2
_02002F02:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _02002F0C
	b _020033F2
_02002F0C:
	movs r0, #0x30
_02002F0E:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _02002F2A
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _02002F0E
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_02002F2A:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_02002F32:
	movs r0, #1
	add sb, r0
	b _020033F2
	.align 2, 0
_02002F38: .4byte 0x40240000
_02002F3C: .4byte 0x00000000
_02002F40: .4byte 0x00000000
_02002F44: .4byte 0x00000000
_02002F48:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _02002FBE
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _02002F7C
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _02002F74
	ldr r3, _02002F70 @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _02002FA8
	.align 2, 0
_02002F70: .4byte 0x00000433
_02002F74:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _02002FA6
_02002F7C:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _02002F8A
	subs r6, r0, r4
	b _02002F9A
_02002F8A:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_02002F9A:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _02002FA8
	subs r5, r5, r3
	movs r0, #0
_02002FA6:
	mov r8, r0
_02002FA8:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x64]
_02002FBE:
	cmp r5, #0
	ble _02002FE0
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _02002FE0
	mov r8, r3
	cmp r8, r5
	ble _02002FD0
	mov r8, r5
_02002FD0:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_02002FE0:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _0200302E
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _02003022
	cmp r6, #0
	ble _02003012
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl _pow5mult
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl _multiply
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	str r4, [sp, #0x5c]
_02003012:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _0200302E
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _02003028
_02003022:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_02003028:
	bl _pow5mult
	str r0, [sp, #0x5c]
_0200302E:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _02003048
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_02003048:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _02003084
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _02003080
	ldr r0, _02003078 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _02003080
	ldr r0, _0200307C @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _02003080
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _02003084
	.align 2, 0
_02003078: .4byte 0x000FFFFF
_0200307C: .4byte 0x7FF00000
_02003080:
	movs r0, #0
	str r0, [sp, #0x3c]
_02003084:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _020030B0
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl _hi0bits
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _020030BE
_020030B0:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_020030BE:
	mov r2, r8
	cmp r2, #0
	beq _020030CA
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_020030CA:
	mov r3, r8
	cmp r3, #4
	ble _020030D6
	movs r0, #4
	rsbs r0, r0, #0
	b _020030DE
_020030D6:
	mov r3, r8
	cmp r3, #3
	bgt _020030EE
	movs r0, #0x1c
_020030DE:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_020030EE:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _02003100
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_02003100:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _02003112
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_02003112:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _02003150
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bge _02003150
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _0200314C
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_0200314C:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_02003150:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _02003194
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _02003194
	cmp r1, #0
	blt _0200317A
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bgt _02003182
_0200317A:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _020033CA
_02003182:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _020033CA
_02003194:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _0200319C
	b _02003312
_0200319C:
	cmp r5, #0
	ble _020031AC
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_020031AC:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _020031DE
	ldr r1, [r1, #4]
	mov r0, sl
	bl _Balloc
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x64]
_020031DE:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _02003234
_020031EC:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _02003214
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _02003230
_02003214:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_02003230:
	movs r1, #1
	add r8, r1
_02003234:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl __mcmp
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl __mdiff
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02003268
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl __mcmp
	adds r6, r0, #0
	b _0200326A
_02003268:
	movs r6, #1
_0200326A:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _02003296
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _02003296
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _02003296
	cmp r7, #0x39
	beq _020032E8
	cmp r4, #0
	ble _0200328C
	adds r7, #1
_0200328C:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _020033CA
_02003296:
	cmp r4, #0
	blt _020032AA
	cmp r4, #0
	bne _020032E0
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _020032E0
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _020032E0
_020032AA:
	cmp r6, #0
	ble _020032DA
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _020032D4
	cmp r6, #0
	bne _020032DA
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _020032DA
_020032D4:
	adds r7, #1
	cmp r7, #0x3a
	beq _020032E8
_020032DA:
	mov r2, sb
	strb r7, [r2]
	b _02003392
_020032E0:
	cmp r6, #0
	ble _02003300
	cmp r7, #0x39
	bne _020032F4
_020032E8:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _02003368
_020032F4:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _020033CA
_02003300:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _02003310
	b _020031EC
_02003310:
	b _02003344
_02003312:
	movs r0, #1
	mov r8, r0
	b _0200332A
_02003318:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_0200332A:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _02003318
_02003344:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _02003368
	cmp r4, #0
	bne _020033AA
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _020033AA
_02003368:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _0200338A
_02003376:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _02003398
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _02003376
_0200338A:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_02003392:
	movs r3, #1
	add sb, r3
	b _020033CA
_02003398:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _020033CA
_020033AA:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _020033C6
_020033B8:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _020033B8
_020033C6:
	movs r2, #1
	add sb, r2
_020033CA:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _020033F2
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _020033EA
	cmp r0, r3
	beq _020033EA
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_020033EA:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_020033F2:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _02003410
	str r1, [r3]
_02003410:
	ldr r0, [sp, #0x74]
_02003412:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start fflush
fflush: @ 0x02003420
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0200343C
	ldr r0, _02003434 @ =gUnk_03000330
	ldr r0, [r0]
	ldr r1, _02003438 @ =fflush
	bl _fwalk
	b _020034B2
	.align 2, 0
_02003434: .4byte gUnk_03000330
_02003438: .4byte fflush
_0200343C:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _02003448
	ldr r0, _0200347C @ =gUnk_03000330
	ldr r0, [r0]
	str r0, [r4, #0x54]
_02003448:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _02003456
	adds r0, r1, #0
	bl __sinit
_02003456:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _020034B0
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _020034B0
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0200348E
	ldr r0, [r4, #0x14]
	b _02003490
	.align 2, 0
_0200347C: .4byte gUnk_03000330
_02003480:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _020034B2
_0200348E:
	movs r0, #0
_02003490:
	str r0, [r4, #8]
	cmp r5, #0
	ble _020034B0
_02003496:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _02003480
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _02003496
_020034B0:
	movs r0, #0
_020034B2:
	pop {r4, r5, r6, pc}

	thumb_func_start std
std: @ 0x020034B4
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _020034DC @ =__sread
	str r1, [r0, #0x20]
	ldr r1, _020034E0 @ =__swrite
	str r1, [r0, #0x24]
	ldr r1, _020034E4 @ =__sseek
	str r1, [r0, #0x28]
	ldr r1, _020034E8 @ =__sclose
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_020034DC: .4byte __sread
_020034E0: .4byte __swrite
_020034E4: .4byte __sseek
_020034E8: .4byte __sclose

	thumb_func_start __sfmoreglue
__sfmoreglue: @ 0x020034EC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	beq _02003518
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _0200351A
_02003518:
	movs r0, #0
_0200351A:
	pop {r4, r5, r6, pc}

	thumb_func_start __sfp
__sfp: @ 0x0200351C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0200352C
	adds r0, r5, #0
	bl __sinit
_0200352C:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _02003536
_02003534:
	ldr r4, [r4]
_02003536:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _02003546
_0200353C:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _02003568
	adds r2, #0x58
_02003546:
	subs r0, #1
	cmp r0, #0
	bge _0200353C
	ldr r0, [r4]
	cmp r0, #0
	bne _02003534
	adds r0, r5, #0
	movs r1, #4
	bl __sfmoreglue
	str r0, [r4]
	cmp r0, #0
	bne _02003534
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _02003588
_02003568:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _0200358C @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_02003588:
	pop {r4, r5, pc}
	.align 2, 0
_0200358C: .4byte 0x0000FFFF

	thumb_func_start _cleanup_r
_cleanup_r: @ 0x02003590
	push {lr}
	ldr r1, _0200359C @ =fflush
	bl _fwalk
	pop {pc}
	.align 2, 0
_0200359C: .4byte fflush

	thumb_func_start _cleanup
_cleanup: @ 0x020035A0
	push {lr}
	ldr r0, _020035AC @ =gUnk_03000330
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_020035AC: .4byte gUnk_03000330

	thumb_func_start __sinit
__sinit: @ 0x020035B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0200360C @ =_cleanup_r
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl std
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl std
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl std
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_0200360C: .4byte _cleanup_r

	thumb_func_start _free_r
_free_r: @ 0x02003610
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _02003622
	b _020037C6
_02003622:
	bl __malloc_lock
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _02003684 @ =gUnk_03000348
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _02003690
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _0200365E
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_0200365E:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _02003688 @ =gUnk_03000750
	ldr r0, [r0]
	cmp r6, r0
	blo _0200367A
	ldr r0, _0200368C @ =gUnk_03000754
	ldr r1, [r0]
	mov r0, sb
	bl _malloc_trim_r
_0200367A:
	mov r0, sb
	bl __malloc_unlock
	b _020037C6
	.align 2, 0
_02003684: .4byte gUnk_03000348
_02003688: .4byte gUnk_03000750
_0200368C: .4byte gUnk_03000754
_02003690:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _020036BC
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _020036B4
	movs r2, #1
	mov r8, r2
	b _020036BC
_020036B4:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_020036BC:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _020036F4
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _020036EC
	ldr r0, _020036E8 @ =gUnk_03000350
	cmp r1, r0
	bne _020036EC
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _020036F4
	.align 2, 0
_020036E8: .4byte gUnk_03000350
_020036EC:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_020036F4:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _020037C0
	ldr r0, _02003724 @ =0x000001FF
	cmp r6, r0
	bhi _0200372C
	lsrs r4, r6, #3
	ldr r2, _02003728 @ =gUnk_03000348
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _020037B8
	.align 2, 0
_02003724: .4byte 0x000001FF
_02003728: .4byte gUnk_03000348
_0200372C:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _02003736
	lsrs r4, r6, #3
	b _0200377E
_02003736:
	cmp r1, #4
	bhi _02003742
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _0200377E
_02003742:
	cmp r1, #0x14
	bhi _0200374C
	adds r4, r1, #0
	adds r4, #0x5b
	b _0200377E
_0200374C:
	cmp r1, #0x54
	bhi _02003758
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _0200377E
_02003758:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _02003768
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _0200377E
_02003768:
	ldr r0, _02003778 @ =0x00000554
	cmp r1, r0
	bhi _0200377C
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _0200377E
	.align 2, 0
_02003778: .4byte 0x00000554
_0200377C:
	movs r4, #0x7e
_0200377E:
	lsls r0, r4, #3
	ldr r7, _0200379C @ =gUnk_03000348
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _020037A0
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _020037B8
	.align 2, 0
_0200379C: .4byte gUnk_03000348
_020037A0:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _020037B0
_020037A8:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _020037B6
	ldr r0, [r2, #4]
_020037B0:
	ands r0, r1
	cmp r6, r0
	blo _020037A8
_020037B6:
	ldr r3, [r2, #0xc]
_020037B8:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_020037C0:
	mov r0, sb
	bl __malloc_unlock
_020037C6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _malloc_trim_r
_malloc_trim_r: @ 0x020037D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl __malloc_lock
	ldr r0, _02003858 @ =gUnk_03000348
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _0200385C @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _0200384E
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _0200384E
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _02003868
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _0200384E
	ldr r1, _02003860 @ =gUnk_03000764
	ldr r0, _02003864 @ =gUnk_03000758
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_0200384E:
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #0
	b _02003884
	.align 2, 0
_02003858: .4byte gUnk_03000348
_0200385C: .4byte 0x00000FEF
_02003860: .4byte gUnk_03000764
_02003864: .4byte gUnk_03000758
_02003868:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _0200388C @ =gUnk_03000764
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #1
_02003884:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200388C: .4byte gUnk_03000764

	thumb_func_start __sfvwrite
__sfvwrite: @ 0x02003890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _020038A8
	b _02003A9E
_020038A8:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _020038B8
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _020038C4
_020038B8:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _020038C4
	b _02003AAA
_020038C4:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02003918
_020038D6:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _020038EC
_020038DE:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _020038DE
_020038EC:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _020038F8
	adds r2, r1, #0
_020038F8:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _02003906
	b _02003AA2
_02003906:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _020038D6
	b _02003A9E
_02003918:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _020039D2
_02003920:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _02003938
_0200392A:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0200392A
_02003938:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _02003966
	cmp r6, r4
	bhs _0200394C
	adds r4, r6, #0
_0200394C:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _020039C0
_02003966:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _0200398E
	cmp r6, r4
	bls _0200398E
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	beq _0200398C
	b _02003AA2
_0200398C:
	b _020039C0
_0200398E:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _020039A8
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _02003AA2
	b _020039C0
_020039A8:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_020039C0:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _02003920
	b _02003A9E
_020039D2:
	movs r2, #0
	str r2, [sp]
_020039D6:
	cmp r6, #0
	bne _020039EC
	movs r0, #0
	str r0, [sp]
_020039DE:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _020039DE
_020039EC:
	ldr r0, [sp]
	cmp r0, #0
	bne _02003A10
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _02003A08
	subs r0, r7, #1
	subs r1, r1, r0
	b _02003A0A
_02003A08:
	adds r1, r6, #1
_02003A0A:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_02003A10:
	mov r2, sb
	cmp sb, r6
	bls _02003A18
	adds r2, r6, #0
_02003A18:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _02003A46
	cmp r2, r4
	ble _02003A46
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _02003AA2
	b _02003A76
_02003A46:
	adds r4, r1, #0
	cmp r2, r4
	blt _02003A60
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _02003AA2
	b _02003A76
_02003A60:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_02003A76:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _02003A8E
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _02003AA2
	movs r1, #0
	str r1, [sp]
_02003A8E:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _020039D6
_02003A9E:
	movs r0, #0
	b _02003AAE
_02003AA2:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_02003AAA:
	movs r0, #1
	rsbs r0, r0, #0
_02003AAE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _fwalk
_fwalk: @ 0x02003ABC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _02003AF4
_02003AD0:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _02003AE8
_02003AD6:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _02003AE6
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_02003AE6:
	adds r5, #0x58
_02003AE8:
	subs r4, #1
	cmp r4, #0
	bge _02003AD6
	ldr r6, [r6]
	cmp r6, #0
	bne _02003AD0
_02003AF4:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _setlocale_r
_setlocale_r: @ 0x02003AFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _02003B30
	ldr r1, _02003B24 @ =gUnk_02007C80
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _02003B2C
	ldr r1, _02003B28 @ =gUnk_02007C78
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _02003B2C
	movs r0, #0
	b _02003B32
	.align 2, 0
_02003B24: .4byte gUnk_02007C80
_02003B28: .4byte gUnk_02007C78
_02003B2C:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_02003B30:
	ldr r0, _02003B34 @ =gUnk_02007C80
_02003B32:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02003B34: .4byte gUnk_02007C80

	thumb_func_start _localeconv_r
_localeconv_r: @ 0x02003B38
	ldr r0, _02003B3C @ =gUnk_02007C48
	bx lr
	.align 2, 0
_02003B3C: .4byte gUnk_02007C48

	thumb_func_start setlocale
setlocale: @ 0x02003B40
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _02003B54 @ =gUnk_03000330
	ldr r0, [r0]
	adds r1, r3, #0
	bl _setlocale_r
	pop {pc}
	.align 2, 0
_02003B54: .4byte gUnk_03000330

	thumb_func_start localeconv
localeconv: @ 0x02003B58
	push {lr}
	ldr r0, _02003B64 @ =gUnk_03000330
	ldr r0, [r0]
	bl _localeconv_r
	pop {pc}
	.align 2, 0
_02003B64: .4byte gUnk_03000330

	thumb_func_start __smakebuf
__smakebuf: @ 0x02003B68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _02003BFE
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _02003B90
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl _fstat_r
	cmp r0, #0
	bge _02003BA2
_02003B90:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _02003BE6
_02003BA2:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _02003BB6
	movs r7, #1
_02003BB6:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _02003BDC
	ldr r1, [r4, #0x28]
	ldr r0, _02003BD8 @ =__sseek
	cmp r1, r0
	bne _02003BDC
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _02003BE8
	.align 2, 0
_02003BD8: .4byte __sseek
_02003BDC:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_02003BE6:
	strh r0, [r4, #0xc]
_02003BE8:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl _malloc_r
	adds r2, r0, #0
	cmp r2, #0
	bne _02003C0C
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_02003BFE:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _02003C3A
_02003C0C:
	ldr r1, [r4, #0x54]
	ldr r0, _02003C40 @ =_cleanup_r
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _02003C3A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _02003C3A
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_02003C3A:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02003C40: .4byte _cleanup_r

	thumb_func_start malloc_extend_top
malloc_extend_top: @ 0x02003C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _02003CB8 @ =gUnk_03000348
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _02003CBC @ =gUnk_03000754
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _02003CC0 @ =gUnk_03000758
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _02003C86
	ldr r3, _02003CC4 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _02003CC8 @ =0xFFFFF000
	ands r6, r0
_02003C86:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _02003D88
	cmp r5, r4
	bhs _02003C9E
	ldr r0, _02003CB8 @ =gUnk_03000348
	cmp r8, r0
	bne _02003D88
_02003C9E:
	ldr r1, _02003CCC @ =gUnk_03000764
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _02003CD0
	adds r2, r6, r7
	ldr r3, _02003CB8 @ =gUnk_03000348
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _02003D70
	.align 2, 0
_02003CB8: .4byte gUnk_03000348
_02003CBC: .4byte gUnk_03000754
_02003CC0: .4byte gUnk_03000758
_02003CC4: .4byte 0x0000100F
_02003CC8: .4byte 0xFFFFF000
_02003CCC: .4byte gUnk_03000764
_02003CD0:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _02003CDC
	str r5, [r3]
	b _02003CE2
_02003CDC:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_02003CE2:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _02003CF6
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _02003CF8
_02003CF6:
	movs r4, #0
_02003CF8:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _02003D88
	ldr r1, _02003D40 @ =gUnk_03000764
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _02003D44 @ =gUnk_03000348
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _02003D70
	cmp r7, #0xf
	bhi _02003D48
	str r3, [r5, #4]
	b _02003D88
	.align 2, 0
_02003D40: .4byte gUnk_03000764
_02003D44: .4byte gUnk_03000348
_02003D48:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _02003D70
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_02003D70:
	ldr r0, _02003D94 @ =gUnk_03000764
	ldr r2, _02003D98 @ =gUnk_0300075C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _02003D7E
	str r1, [r2]
_02003D7E:
	ldr r2, _02003D9C @ =gUnk_03000760
	ldr r0, [r2]
	cmp r1, r0
	bls _02003D88
	str r1, [r2]
_02003D88:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02003D94: .4byte gUnk_03000764
_02003D98: .4byte gUnk_0300075C
_02003D9C: .4byte gUnk_03000760

	thumb_func_start _malloc_r
_malloc_r: @ 0x02003DA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _02003DC2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _02003DC6
_02003DC2:
	movs r3, #0x10
	mov r8, r3
_02003DC6:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _02003E0C @ =0x000001F7
	cmp r8, r0
	bhi _02003E1A
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _02003E10 @ =gUnk_03000348
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _02003DEE
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _02003E14
_02003DEE:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _02004146
	.align 2, 0
_02003E0C: .4byte 0x000001F7
_02003E10: .4byte gUnk_03000348
_02003E14:
	movs r0, #2
	add ip, r0
	b _02003EC6
_02003E1A:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _02003E26
	lsrs r2, r2, #3
	b _02003E76
_02003E26:
	cmp r1, #4
	bhi _02003E34
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _02003E78
_02003E34:
	cmp r1, #0x14
	bhi _02003E3E
	adds r1, #0x5b
	mov ip, r1
	b _02003E78
_02003E3E:
	cmp r1, #0x54
	bhi _02003E4C
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _02003E78
_02003E4C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _02003E5E
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _02003E78
_02003E5E:
	ldr r0, _02003E70 @ =0x00000554
	cmp r1, r0
	bhi _02003E74
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _02003E78
	.align 2, 0
_02003E70: .4byte 0x00000554
_02003E74:
	movs r2, #0x7e
_02003E76:
	mov ip, r2
_02003E78:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _02003E9C @ =gUnk_03000348
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _02003EC2
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _02003EA0
	adds r0, #3
	add ip, r0
	b _02003EC2
	.align 2, 0
_02003E9C: .4byte gUnk_03000348
_02003EA0:
	cmp r3, #0
	blt _02003EA6
	b _020040E0
_02003EA6:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _02003EC2
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _02003EA0
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_02003EC2:
	movs r4, #1
	add ip, r4
_02003EC6:
	ldr r0, _02003F04 @ =gUnk_03000350
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _02003ED2
	b _02003FD4
_02003ED2:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _02003F08
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _02004146
	.align 2, 0
_02003F04: .4byte gUnk_03000350
_02003F08:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _02003F1E
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _02004146
_02003F1E:
	ldr r0, _02003F40 @ =0x000001FF
	cmp r1, r0
	bhi _02003F44
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _02003FCC
	.align 2, 0
_02003F40: .4byte 0x000001FF
_02003F44:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _02003F4E
	lsrs r2, r1, #3
	b _02003F92
_02003F4E:
	cmp r2, #4
	bhi _02003F5A
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _02003F92
_02003F5A:
	cmp r2, #0x14
	bhi _02003F62
	adds r2, #0x5b
	b _02003F92
_02003F62:
	cmp r2, #0x54
	bhi _02003F6E
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _02003F92
_02003F6E:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _02003F7E
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _02003F92
_02003F7E:
	ldr r0, _02003F8C @ =0x00000554
	cmp r2, r0
	bhi _02003F90
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _02003F92
	.align 2, 0
_02003F8C: .4byte 0x00000554
_02003F90:
	movs r2, #0x7e
_02003F92:
	lsls r0, r2, #3
	ldr r3, _02003FB0 @ =gUnk_03000348
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _02003FB4
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _02003FB0 @ =gUnk_03000348
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _02003FCC
	.align 2, 0
_02003FB0: .4byte gUnk_03000348
_02003FB4:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _02003FC4
_02003FBC:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _02003FCA
	ldr r0, [r4, #4]
_02003FC4:
	ands r0, r2
	cmp r1, r0
	blo _02003FBC
_02003FCA:
	ldr r6, [r4, #0xc]
_02003FCC:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_02003FD4:
	mov r0, ip
	cmp r0, #0
	bge _02003FDC
	adds r0, #3
_02003FDC:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _02004000 @ =gUnk_03000348
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _0200409E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _02004012
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _02004008
	.align 2, 0
_02004000: .4byte gUnk_03000348
_02004004:
	movs r3, #4
	add ip, r3
_02004008:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _02004004
_02004012:
	ldr r4, _02004090 @ =gUnk_03000348
	mov sb, r4
_02004016:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_02004024:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _02004044
	movs r0, #4
	rsbs r0, r0, #0
_0200402E:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _020040F4
	cmp r3, #0
	bge _0200411C
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _0200402E
_02004044:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _02004024
_02004054:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _02004094
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _02004054
_0200406A:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _0200409E
	cmp r6, #0
	beq _0200409E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _02004016
_02004080:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _02004080
	b _02004016
	.align 2, 0
_02004090: .4byte gUnk_03000348
_02004094:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _0200406A
_0200409E:
	ldr r2, _020040DC @ =gUnk_03000348
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _020040B6
	cmp r3, #0xf
	bgt _02004130
_020040B6:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _020040DC @ =gUnk_03000348
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _020040D2
	cmp r3, #0xf
	bgt _02004130
_020040D2:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _02004150
	.align 2, 0
_020040DC: .4byte gUnk_03000348
_020040E0:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _02004146
_020040F4:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _02004146
_0200411C:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _02004146
_02004130:
	ldr r2, _0200415C @ =gUnk_03000348
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_02004146:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_02004150:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200415C: .4byte gUnk_03000348

	thumb_func_start _mbtowc_r
_mbtowc_r: @ 0x02004160
	sub sp, #4
	cmp r1, #0
	bne _02004168
	mov r1, sp
_02004168:
	cmp r2, #0
	beq _02004184
	cmp r3, #0
	bne _02004176
	movs r0, #1
	rsbs r0, r0, #0
	b _02004186
_02004176:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _02004184
	movs r0, #1
	b _02004186
_02004184:
	movs r0, #0
_02004186:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start memchr
memchr: @ 0x0200418C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _02004200
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _02004200
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_020041A8:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _020041A8
	cmp r2, #3
	bls _020041E6
	ldr r0, _020041EC @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _020041F0 @ =0x80808080
_020041BC:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _020041DE
	adds r1, r4, #0
	movs r3, #0
_020041D0:
	ldrb r0, [r1]
	cmp r0, r5
	beq _020041FA
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _020041D0
_020041DE:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _020041BC
_020041E6:
	adds r1, r4, #0
	b _02004200
	.align 2, 0
_020041EC: .4byte 0xFEFEFEFF
_020041F0: .4byte 0x80808080
_020041F4:
	ldrb r0, [r1]
	cmp r0, r5
	bne _020041FE
_020041FA:
	adds r0, r1, #0
	b _0200420A
_020041FE:
	adds r1, #1
_02004200:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _020041F4
	movs r0, #0
_0200420A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start memcpy
memcpy: @ 0x0200420C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0200424C
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0200424C
	adds r1, r5, #0
_02004226:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _02004226
	cmp r2, #3
	bls _0200424A
_02004240:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _02004240
_0200424A:
	adds r4, r1, #0
_0200424C:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _02004266
	adds r1, r0, #0
_02004258:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _02004258
_02004266:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start memmove
memmove: @ 0x0200426C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _0200429E
	adds r0, r3, r2
	cmp r5, r0
	bhs _0200429E
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _020042F0
	adds r1, r0, #0
_0200428E:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _0200428E
	b _020042F0
_0200429E:
	cmp r2, #0xf
	bls _020042D6
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _020042D6
	adds r1, r3, #0
_020042B0:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _020042B0
	cmp r2, #3
	bls _020042D4
_020042CA:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _020042CA
_020042D4:
	adds r3, r1, #0
_020042D6:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _020042F0
	adds r1, r0, #0
_020042E2:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _020042E2
_020042F0:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start memset
memset: @ 0x020042F4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _0200433A
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0200433A
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _0200432E
_0200431A:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0200431A
	b _0200432E
_0200432A:
	stm r1!, {r3}
	subs r2, #4
_0200432E:
	cmp r2, #3
	bhi _0200432A
	adds r3, r1, #0
	b _0200433A
_02004336:
	strb r4, [r3]
	adds r3, #1
_0200433A:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _02004336
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __malloc_lock
__malloc_lock: @ 0x02004348
	bx lr
	.align 2, 0

	thumb_func_start __malloc_unlock
__malloc_unlock: @ 0x0200434C
	bx lr
	.align 2, 0

	thumb_func_start _Balloc
_Balloc: @ 0x02004350
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _0200436C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl _calloc_r
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _02004394
_0200436C:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _0200437E
	ldr r0, [r1]
	str r0, [r2]
	b _0200439C
_0200437E:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl _calloc_r
	adds r1, r0, #0
	cmp r1, #0
	bne _02004398
_02004394:
	movs r0, #0
	b _020043A4
_02004398:
	str r6, [r1, #4]
	str r5, [r1, #8]
_0200439C:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_020043A4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _Bfree
_Bfree: @ 0x020043A8
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _020043BE
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_020043BE:
	bx lr

	thumb_func_start _multadd
_multadd: @ 0x020043C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _02004454 @ =0x0000FFFF
	mov ip, r0
_020043DC:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _020043DC
	mov r2, r8
	cmp r2, #0
	beq _0200444A
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _0200443A
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl _Balloc
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r5, #0
	bl _Bfree
	adds r5, r4, #0
_0200443A:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_0200444A:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02004454: .4byte 0x0000FFFF

	thumb_func_start _s2b
_s2b: @ 0x02004458
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl __divsi3
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _02004480
_02004478:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _02004478
_02004480:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _020044B2
	adds r4, #9
_02004498:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _02004498
	adds r4, #1
	b _020044B4
_020044B2:
	adds r4, #0xa
_020044B4:
	cmp r5, r8
	bge _020044D2
	mov r0, r8
	subs r5, r0, r5
_020044BC:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _020044BC
_020044D2:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _hi0bits
_hi0bits: @ 0x020044DC
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _0200452C @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _020044EC
	movs r2, #0x10
	lsls r1, r1, #0x10
_020044EC:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _020044FA
	adds r2, #8
	lsls r1, r1, #8
_020044FA:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _02004508
	adds r2, #4
	lsls r1, r1, #4
_02004508:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _02004516
	adds r2, #2
	lsls r1, r1, #2
_02004516:
	cmp r1, #0
	blt _02004530
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _02004530
	movs r0, #0x20
	b _02004532
	.align 2, 0
_0200452C: .4byte 0xFFFF0000
_02004530:
	adds r0, r2, #0
_02004532:
	bx lr

	thumb_func_start _lo0bits
_lo0bits: @ 0x02004534
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _02004564
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200454C
	movs r0, #0
	b _020045B4
_0200454C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0200455C
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _020045B4
_0200455C:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _020045B4
_02004564:
	movs r2, #0
	ldr r0, _020045AC @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _02004572
	movs r2, #0x10
	lsrs r1, r1, #0x10
_02004572:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _0200457E
	adds r2, #8
	lsrs r1, r1, #8
_0200457E:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0200458A
	adds r2, #4
	lsrs r1, r1, #4
_0200458A:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _02004596
	adds r2, #2
	lsrs r1, r1, #2
_02004596:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _020045B0
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _020045B0
	movs r0, #0x20
	b _020045B4
	.align 2, 0
_020045AC: .4byte 0x0000FFFF
_020045B0:
	str r1, [r3]
	adds r0, r2, #0
_020045B4:
	bx lr
	.align 2, 0

	thumb_func_start _i2b
_i2b: @ 0x020045B8
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _multiply
_multiply: @ 0x020045CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _020045EC
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_020045EC:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _02004602
	adds r1, #1
_02004602:
	adds r0, r3, #0
	bl _Balloc
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _02004636
	movs r0, #0
_0200462E:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _0200462E
_02004636:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _020046FE
_02004650:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _0200470C @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _020046A8
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_0200466E:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _0200466E
	str r0, [r5]
_020046A8:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _020046F0
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _0200470C @ =0x0000FFFF
_020046BC:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _020046BC
	str r2, [r5]
_020046F0:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _02004650
_020046FE:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _02004722
	b _0200471A
	.align 2, 0
_0200470C: .4byte 0x0000FFFF
_02004710:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _02004722
_0200471A:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _02004710
_02004722:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _pow5mult
_pow5mult: @ 0x02004738
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _02004762
	ldr r0, _02004784 @ =gUnk_02007C84
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_02004762:
	asrs r6, r6, #2
	cmp r6, #0
	beq _020047C8
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _020047A4
	ldr r1, _02004788 @ =0x00000271
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _020047A4
	.align 2, 0
_02004784: .4byte gUnk_02007C84
_02004788: .4byte 0x00000271
_0200478C:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _020047A2
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_020047A2:
	adds r5, r0, #0
_020047A4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _020047C2
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_020047C2:
	asrs r6, r6, #1
	cmp r6, #0
	bne _0200478C
_020047C8:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _lshift
_lshift: @ 0x020047D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _020047FA
_020047F2:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _020047F2
_020047FA:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _0200481A
	movs r1, #0
	adds r2, r6, #0
_02004812:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _02004812
_0200481A:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _0200484C
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_02004832:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _02004832
	str r2, [r4]
	cmp r2, #0
	beq _02004854
	adds r7, #1
	b _02004854
_0200484C:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _0200484C
_02004854:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl _Bfree
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __mcmp
__mcmp: @ 0x02004870
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _020048AC
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_0200488E:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _020048A6
	movs r1, #1
	cmp r0, r2
	bhs _020048A2
	subs r1, #2
_020048A2:
	adds r0, r1, #0
	b _020048AC
_020048A6:
	cmp r3, r4
	bhi _0200488E
	movs r0, #0
_020048AC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __mdiff
__mdiff: @ 0x020048B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bne _020048E2
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _02004992
_020048E2:
	cmp r4, #0
	bge _020048F0
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _020048F2
_020048F0:
	movs r4, #0
_020048F2:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl _Balloc
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _0200497C @ =0x0000FFFF
	mov r8, r0
_02004926:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _02004926
	cmp r6, sl
	bhs _02004986
	ldr r2, _0200497C @ =0x0000FFFF
_02004960:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _02004960
	b _02004986
	.align 2, 0
_0200497C: .4byte 0x0000FFFF
_02004980:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_02004986:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _02004980
	mov r1, sb
	str r1, [r7, #0x10]
_02004992:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _ulp
_ulp: @ 0x020049A0
	push {r4, lr}
	ldr r2, _020049B4 @ =0x7FF00000
	ands r2, r0
	ldr r0, _020049B8 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _020049BC
	adds r3, r2, #0
	movs r4, #0
	b _020049E6
	.align 2, 0
_020049B4: .4byte 0x7FF00000
_020049B8: .4byte 0xFCC00000
_020049BC:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _020049D0
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _020049E6
_020049D0:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _020049E2
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _020049E4
_020049E2:
	movs r1, #1
_020049E4:
	adds r4, r1, #0
_020049E6:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start _b2d
_b2d: @ 0x020049EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl _hi0bits
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _02004A4C
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _02004A34 @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _02004A38
	subs r5, #4
	ldr r1, [r5]
	b _02004A3A
	.align 2, 0
_02004A34: .4byte 0x3FF00000
_02004A38:
	movs r1, #0
_02004A3A:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _02004A98
_02004A4C:
	cmp r5, r8
	bls _02004A56
	subs r5, #4
	ldr r4, [r5]
	b _02004A58
_02004A56:
	movs r4, #0
_02004A58:
	subs r3, #0xb
	cmp r3, #0
	beq _02004A90
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _02004A7C @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _02004A80
	subs r5, #4
	ldr r2, [r5]
	b _02004A82
	.align 2, 0
_02004A7C: .4byte 0x3FF00000
_02004A80:
	movs r2, #0
_02004A82:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _02004A98
_02004A90:
	ldr r0, _02004AA4 @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_02004A98:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02004AA4: .4byte 0x3FF00000

	thumb_func_start _d2b
_d2b: @ 0x02004AA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _02004B10 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _02004B14 @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _02004AE6
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_02004AE6:
	str r5, [sp]
	cmp r5, #0
	beq _02004B30
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _02004B18
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _02004B1C
	.align 2, 0
_02004B10: .4byte 0x000FFFFF
_02004B14: .4byte 0x7FFFFFFF
_02004B18:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_02004B1C:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _02004B2A
	movs r1, #2
_02004B2A:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _02004B44
_02004B30:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_02004B44:
	cmp r7, #0
	beq _02004B60
	ldr r3, _02004B5C @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _02004B7C
	.align 2, 0
_02004B5C: .4byte 0xFFFFFBCD
_02004B60:
	ldr r1, _02004B8C @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl _hi0bits
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_02004B7C:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02004B8C: .4byte 0xFFFFFBCE

	thumb_func_start _ratio
_ratio: @ 0x02004B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl _b2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl _b2d
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _02004BCC
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _02004BD0
_02004BCC:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_02004BD0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __divdf3
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _mprec_log10
_mprec_log10: @ 0x02004BE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _02004BFC @ =0x00000000
	ldr r0, _02004BF8 @ =0x3FF00000
	cmp r4, #0x17
	bgt _02004C04
	ldr r0, _02004C00 @ =gUnk_02007C90
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _02004C16
	.align 2, 0
_02004BF8: .4byte 0x3FF00000
_02004BFC: .4byte 0x00000000
_02004C00: .4byte gUnk_02007C90
_02004C04:
	cmp r4, #0
	ble _02004C16
_02004C08:
	ldr r3, _02004C1C @ =0x00000000
	ldr r2, _02004C18 @ =0x40240000
	bl __muldf3
	subs r4, #1
	cmp r4, #0
	bgt _02004C08
_02004C16:
	pop {r4, pc}
	.align 2, 0
_02004C18: .4byte 0x40240000
_02004C1C: .4byte 0x00000000

	thumb_func_start isinf
isinf: @ 0x02004C20
	ldr r3, _02004C3C @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _02004C40 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_02004C3C: .4byte 0x7FFFFFFF
_02004C40: .4byte 0x7FF00000

	thumb_func_start isnan
isnan: @ 0x02004C44
	ldr r3, _02004C5C @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _02004C60 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_02004C5C: .4byte 0x7FFFFFFF
_02004C60: .4byte 0x7FF00000

	thumb_func_start _sbrk_r
_sbrk_r: @ 0x02004C64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _02004C8C @ =gUnk_030019D4
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02004C86
	ldr r0, [r4]
	cmp r0, #0
	beq _02004C86
	str r0, [r5]
_02004C86:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_02004C8C: .4byte gUnk_030019D4

	thumb_func_start __sread
__sread: @ 0x02004C90
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _read_r
	adds r1, r0, #0
	cmp r1, #0
	blt _02004CB2
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _02004CBA
_02004CB2:
	ldr r0, _02004CC0 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_02004CBA:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_02004CC0: .4byte 0xFFFFEFFF

	thumb_func_start __swrite
__swrite: @ 0x02004CC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _02004CE6
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl _lseek_r
_02004CE6:
	ldr r0, _02004D00 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl _write_r
	pop {r4, r5, r6, pc}
	.align 2, 0
_02004D00: .4byte 0xFFFFEFFF

	thumb_func_start __sseek
__sseek: @ 0x02004D04
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _lseek_r
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02004D30
	ldr r0, _02004D2C @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _02004D3E
	.align 2, 0
_02004D2C: .4byte 0xFFFFEFFF
_02004D30:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_02004D3E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sclose
__sclose: @ 0x02004D44
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl _close_r
	pop {pc}

	thumb_func_start strcmp
strcmp: @ 0x02004D54
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _02004D9A
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _02004D9A
	ldr r5, _02004D80 @ =0xFEFEFEFF
	ldr r4, _02004D84 @ =0x80808080
_02004D70:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _02004D88
	movs r0, #0
	b _02004DAC
	.align 2, 0
_02004D80: .4byte 0xFEFEFEFF
_02004D84: .4byte 0x80808080
_02004D88:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _02004D70
	b _02004D9A
_02004D96:
	adds r2, #1
	adds r3, #1
_02004D9A:
	ldrb r0, [r2]
	cmp r0, #0
	beq _02004DA6
	ldrb r1, [r3]
	cmp r0, r1
	beq _02004D96
_02004DA6:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_02004DAC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start strlen
strlen: @ 0x02004DB0
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _02004DE8
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _02004DCC @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _02004DD0 @ =0x80808080
	b _02004DDC
	.align 2, 0
_02004DCC: .4byte 0xFEFEFEFF
_02004DD0: .4byte 0x80808080
_02004DD4:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_02004DDC:
	ands r0, r3
	cmp r0, #0
	beq _02004DD4
	adds r1, r2, #0
	b _02004DE8
_02004DE6:
	adds r1, #1
_02004DE8:
	ldrb r0, [r1]
	cmp r0, #0
	bne _02004DE6
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start findslot
findslot: @ 0x02004DF4
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _02004DFC @ =gUnk_030008A8
	b _02004E08
	.align 2, 0
_02004DFC: .4byte gUnk_030008A8
_02004E00:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _02004E0E
_02004E08:
	ldr r0, [r2]
	cmp r0, r3
	bne _02004E00
_02004E0E:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start remap_handle
remap_handle: @ 0x02004E14
	adds r2, r0, #0
	ldr r0, _02004E28 @ =gUnk_03000330
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _02004E30
	ldr r0, _02004E2C @ =gUnk_0300089C
	b _02004E56
	.align 2, 0
_02004E28: .4byte gUnk_03000330
_02004E2C: .4byte gUnk_0300089C
_02004E30:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _02004E44
	ldr r0, _02004E40 @ =gUnk_030008A0
	b _02004E56
	.align 2, 0
_02004E40: .4byte gUnk_030008A0
_02004E44:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _02004E54
	adds r0, r2, #0
	subs r0, #0x20
	b _02004E58
_02004E54:
	ldr r0, _02004E5C @ =gUnk_030008A4
_02004E56:
	ldr r0, [r0]
_02004E58:
	bx lr
	.align 2, 0
_02004E5C: .4byte gUnk_030008A4

	thumb_func_start initialise_monitor_handles
initialise_monitor_handles: @ 0x02004E60
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _02004EBC @ =gUnk_02007DA8
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _02004EC0 @ =gUnk_0300089C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _02004EC4 @ =gUnk_030008A0
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _02004EC8 @ =gUnk_030008A4
	str r2, [r0]
	str r2, [r3]
	ldr r2, _02004ECC @ =gUnk_030008A8
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_02004EA2:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _02004EA2
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02004EBC: .4byte gUnk_02007DA8
_02004EC0: .4byte gUnk_0300089C
_02004EC4: .4byte gUnk_030008A0
_02004EC8: .4byte gUnk_030008A4
_02004ECC: .4byte gUnk_030008A8

	thumb_func_start get_errno
get_errno: @ 0x02004ED0
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start error
error: @ 0x02004EE4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl __errno
	adds r4, r0, #0
	bl get_errno
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start wrap
wrap: @ 0x02004EF8
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _02004F08
	adds r0, r1, #0
	b _02004F0E
_02004F08:
	adds r0, r1, #0
	bl error
_02004F0E:
	pop {pc}

	thumb_func_start _swiread
_swiread: @ 0x02004F10
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _read
_read: @ 0x02004F34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl remap_handle
	bl findslot
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _swiread
	cmp r0, #0
	bge _02004F5E
	movs r0, #1
	rsbs r0, r0, #0
	bl error
	b _02004F74
_02004F5E:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _02004F72
	ldr r0, _02004F78 @ =gUnk_030008A8
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_02004F72:
	adds r0, r2, #0
_02004F74:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02004F78: .4byte gUnk_030008A8

	thumb_func_start _swilseek
_swilseek: @ 0x02004F7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl remap_handle
	adds r7, r0, #0
	bl findslot
	adds r6, r0, #0
	cmp r4, #1
	bne _02004FB2
	cmp r6, #0x14
	bne _02004FA4
	movs r0, #1
	rsbs r0, r0, #0
	b _02004FF4
_02004FA4:
	ldr r0, _02004FFC @ =gUnk_030008A8
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_02004FB2:
	cmp r4, #2
	bne _02004FC4
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_02004FC4:
	mov r0, r8
	bl remap_handle
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _02004FEA
	cmp r2, #0
	bne _02004FEA
	ldr r0, _02004FFC @ =gUnk_030008A8
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_02004FEA:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _02004FF4
	adds r0, r5, #0
_02004FF4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02004FFC: .4byte gUnk_030008A8

	thumb_func_start _lseek
_lseek: @ 0x02005000
	push {lr}
	bl _swilseek
	bl wrap
	pop {pc}

	thumb_func_start _swiwrite
_swiwrite: @ 0x0200500C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write
_write: @ 0x02005030
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl remap_handle
	bl findslot
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _swiwrite
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _02005058
	cmp r0, r6
	bne _02005060
_02005058:
	adds r0, r1, #0
	bl error
	b _02005076
_02005060:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _02005074
	ldr r0, _02005078 @ =gUnk_030008A8
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_02005074:
	adds r0, r2, #0
_02005076:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02005078: .4byte gUnk_030008A8

	thumb_func_start _swiopen
_swiopen: @ 0x0200507C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl findslot
	mov r8, r0
	cmp r0, #0x14
	bne _0200509E
	adds r0, r6, #0
	b _02005112
_0200509E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _020050A8
	movs r5, #2
_020050A8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _020050B6
	movs r0, #4
	orrs r5, r0
_020050B6:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _020050C4
	movs r0, #4
	orrs r5, r0
_020050C4:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _020050D4
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_020050D4:
	str r7, [sp]
	adds r0, r7, #0
	bl strlen
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _0200510C
	ldr r0, _02005108 @ =gUnk_030008A8
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _02005112
	.align 2, 0
_02005108: .4byte gUnk_030008A8
_0200510C:
	adds r0, r3, #0
	bl error
_02005112:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _open
_open: @ 0x0200511C
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl _swiopen
	bl wrap
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start _swiclose
_swiclose: @ 0x02005130
	push {lr}
	sub sp, #4
	bl remap_handle
	str r0, [sp]
	bl findslot
	adds r1, r0, #0
	cmp r1, #0x14
	beq _02005150
	ldr r0, _02005160 @ =gUnk_030008A8
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_02005150:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_02005160: .4byte gUnk_030008A8

	thumb_func_start _close
_close: @ 0x02005164
	push {lr}
	bl _swiclose
	bl wrap
	pop {pc}

	thumb_func_start _exit
_exit: @ 0x02005170
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _0200518C @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_0200518C: .4byte 0x00020026

	thumb_func_start _kill
_kill: @ 0x02005190
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _020051AC @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_020051AC: .4byte 0x00020026

	thumb_func_start _getpid
_getpid: @ 0x020051B0
	movs r0, #1
	bx lr

	thumb_func_start _sbrk
_sbrk: @ 0x020051B4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _020051E4 @ =gUnk_03000898
	ldr r0, [r4]
	cmp r0, #0
	bne _020051C4
	ldr r0, _020051E8 @ =gUnk_030019D8
	str r0, [r4]
_020051C4:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _020051DA
	ldr r1, _020051EC @ =gUnk_02007DAC
	movs r0, #1
	movs r2, #0x20
	bl _write
	bl abort
_020051DA:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_020051E4: .4byte gUnk_03000898
_020051E8: .4byte gUnk_030019D8
_020051EC: .4byte gUnk_02007DAC

	thumb_func_start _fstat
_fstat: @ 0x020051F0
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _unlink
_unlink: @ 0x020051FC
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _raise
_raise: @ 0x02005204
	bx lr
	.align 2, 0

	thumb_func_start _gettimeofday
_gettimeofday: @ 0x02005208
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _02005226
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_02005226:
	cmp r3, #0
	beq _02005230
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_02005230:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start _times
_times: @ 0x02005234
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _02005252
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_02005252:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write_r
_write_r: @ 0x02005258
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _02005284 @ =gUnk_030019D4
	movs r3, #0
	str r3, [r4]
	bl _write
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200527E
	ldr r0, [r4]
	cmp r0, #0
	beq _0200527E
	str r0, [r5]
_0200527E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_02005284: .4byte gUnk_030019D4

	thumb_func_start _calloc_r
_calloc_r: @ 0x02005288
	push {r4, lr}
	muls r1, r2, r1
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	bne _0200529A
	movs r0, #0
	b _020052DE
_0200529A:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _020052D4
	adds r1, r4, #0
	cmp r2, #0x13
	bls _020052CA
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _020052CA
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _020052CA
	stm r1!, {r0}
	stm r1!, {r0}
_020052CA:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _020052DC
_020052D4:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_020052DC:
	adds r0, r4, #0
_020052DE:
	pop {r4, pc}

	thumb_func_start _close_r
_close_r: @ 0x020052E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _02005308 @ =gUnk_030019D4
	movs r1, #0
	str r1, [r4]
	bl _close
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02005302
	ldr r0, [r4]
	cmp r0, #0
	beq _02005302
	str r0, [r5]
_02005302:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_02005308: .4byte gUnk_030019D4

	thumb_func_start __errno
__errno: @ 0x0200530C
	ldr r0, _02005314 @ =gUnk_03000330
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02005314: .4byte gUnk_03000330

	thumb_func_start _fstat_r
_fstat_r: @ 0x02005318
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _02005340 @ =gUnk_030019D4
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200533C
	ldr r0, [r4]
	cmp r0, #0
	beq _0200533C
	str r0, [r5]
_0200533C:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_02005340: .4byte gUnk_030019D4

	thumb_func_start abort
abort: @ 0x02005344
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _02005360 @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_02005360: .4byte 0x00020022

	thumb_func_start isatty
isatty: @ 0x02005364
	movs r0, #1
	bx lr

	thumb_func_start alarm
alarm: @ 0x02005368
	bx lr
	.align 2, 0

	thumb_func_start _lseek_r
_lseek_r: @ 0x0200536C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _02005398 @ =gUnk_030019D4
	movs r3, #0
	str r3, [r4]
	bl _lseek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02005392
	ldr r0, [r4]
	cmp r0, #0
	beq _02005392
	str r0, [r5]
_02005392:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_02005398: .4byte gUnk_030019D4

	thumb_func_start _read_r
_read_r: @ 0x0200539C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _020053C8 @ =gUnk_030019D4
	movs r3, #0
	str r3, [r4]
	bl _read
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _020053C2
	ldr r0, [r4]
	cmp r0, #0
	beq _020053C2
	str r0, [r5]
_020053C2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_020053C8: .4byte gUnk_030019D4

	thumb_func_start __divsi3
__divsi3: @ 0x020053CC
	cmp r1, #0
	beq _02005454
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _020053E2
	rsbs r1, r1, #0
_020053E2:
	cmp r0, #0
	bpl _020053E8
	rsbs r0, r0, #0
_020053E8:
	cmp r0, r1
	blo _02005446
	movs r4, #1
	lsls r4, r4, #0x1c
_020053F0:
	cmp r1, r4
	bhs _020053FE
	cmp r1, r0
	bhs _020053FE
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _020053F0
_020053FE:
	lsls r4, r4, #3
_02005400:
	cmp r1, r4
	bhs _0200540E
	cmp r1, r0
	bhs _0200540E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _02005400
_0200540E:
	cmp r0, r1
	blo _02005416
	subs r0, r0, r1
	orrs r2, r3
_02005416:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _02005422
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_02005422:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0200542E
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0200542E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0200543A
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0200543A:
	cmp r0, #0
	beq _02005446
	lsrs r3, r3, #4
	beq _02005446
	lsrs r1, r1, #4
	b _0200540E
_02005446:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _02005450
	rsbs r0, r0, #0
_02005450:
	pop {r4}
	mov pc, lr
_02005454:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_3
nullsub_3: @ 0x02005460
	mov pc, lr
	.align 2, 0

	thumb_func_start __modsi3
__modsi3: @ 0x02005464
	movs r3, #1
	cmp r1, #0
	beq _02005528
	bpl _0200546E
	rsbs r1, r1, #0
_0200546E:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _02005478
	rsbs r0, r0, #0
_02005478:
	cmp r0, r1
	blo _0200551C
	movs r4, #1
	lsls r4, r4, #0x1c
_02005480:
	cmp r1, r4
	bhs _0200548E
	cmp r1, r0
	bhs _0200548E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _02005480
_0200548E:
	lsls r4, r4, #3
_02005490:
	cmp r1, r4
	bhs _0200549E
	cmp r1, r0
	bhs _0200549E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _02005490
_0200549E:
	movs r2, #0
	cmp r0, r1
	blo _020054A6
	subs r0, r0, r1
_020054A6:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _020054B8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_020054B8:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _020054CA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_020054CA:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _020054DC
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_020054DC:
	mov ip, r3
	cmp r0, #0
	beq _020054EA
	lsrs r3, r3, #4
	beq _020054EA
	lsrs r1, r1, #4
	b _0200549E
_020054EA:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _0200551C
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _02005500
	lsrs r4, r1, #3
	adds r0, r0, r4
_02005500:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0200550E
	lsrs r4, r1, #2
	adds r0, r0, r4
_0200550E:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0200551C
	lsrs r4, r1, #1
	adds r0, r0, r4
_0200551C:
	pop {r4}
	cmp r4, #0
	bpl _02005524
	rsbs r0, r0, #0
_02005524:
	pop {r4}
	mov pc, lr
_02005528:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __udivsi3
__udivsi3: @ 0x02005534
	cmp r1, #0
	beq _020055A2
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0200559C
	movs r4, #1
	lsls r4, r4, #0x1c
_02005546:
	cmp r1, r4
	bhs _02005554
	cmp r1, r0
	bhs _02005554
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _02005546
_02005554:
	lsls r4, r4, #3
_02005556:
	cmp r1, r4
	bhs _02005564
	cmp r1, r0
	bhs _02005564
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _02005556
_02005564:
	cmp r0, r1
	blo _0200556C
	subs r0, r0, r1
	orrs r2, r3
_0200556C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _02005578
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_02005578:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _02005584
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_02005584:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _02005590
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_02005590:
	cmp r0, #0
	beq _0200559C
	lsrs r3, r3, #4
	beq _0200559C
	lsrs r1, r1, #4
	b _02005564
_0200559C:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_020055A2:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x020055AC
	cmp r1, #0
	beq _02005662
	movs r3, #1
	cmp r0, r1
	bhs _020055B8
	mov pc, lr
_020055B8:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_020055BE:
	cmp r1, r4
	bhs _020055CC
	cmp r1, r0
	bhs _020055CC
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _020055BE
_020055CC:
	lsls r4, r4, #3
_020055CE:
	cmp r1, r4
	bhs _020055DC
	cmp r1, r0
	bhs _020055DC
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _020055CE
_020055DC:
	movs r2, #0
	cmp r0, r1
	blo _020055E4
	subs r0, r0, r1
_020055E4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _020055F6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_020055F6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _02005608
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_02005608:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0200561A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0200561A:
	mov ip, r3
	cmp r0, #0
	beq _02005628
	lsrs r3, r3, #4
	beq _02005628
	lsrs r1, r1, #4
	b _020055DC
_02005628:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _02005634
	pop {r4}
	mov pc, lr
_02005634:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _02005642
	lsrs r4, r1, #3
	adds r0, r0, r4
_02005642:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _02005650
	lsrs r4, r1, #2
	adds r0, r0, r4
_02005650:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0200565E
	lsrs r4, r1, #1
	adds r0, r0, r4
_0200565E:
	pop {r4}
	mov pc, lr
_02005662:
	push {lr}
	bl nullsub_3
	movs r0, #0
	pop {pc}

	thumb_func_start __pack_d
__pack_d: @ 0x0200566C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _02005684
	movs r2, #1
_02005684:
	cmp r2, #0
	beq _020056A4
	ldr r6, _02005698 @ =0x000007FF
	ldr r2, _0200569C @ =0x00000000
	ldr r3, _020056A0 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _0200575C
	.align 2, 0
_02005698: .4byte 0x000007FF
_0200569C: .4byte 0x00000000
_020056A0: .4byte 0x00080000
_020056A4:
	movs r2, #0
	cmp r0, #4
	bne _020056AC
	movs r2, #1
_020056AC:
	cmp r2, #0
	bne _020056F8
	movs r2, #0
	cmp r0, #2
	bne _020056B8
	movs r2, #1
_020056B8:
	cmp r2, #0
	beq _020056C2
	movs r4, #0
	movs r5, #0
	b _02005760
_020056C2:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _02005760
	ldr r2, [r1, #8]
	ldr r0, _020056E0 @ =0xFFFFFC02
	cmp r2, r0
	bge _020056F2
	subs r2, r0, r2
	cmp r2, #0x38
	ble _020056E4
	movs r4, #0
	movs r5, #0
	b _02005752
	.align 2, 0
_020056E0: .4byte 0xFFFFFC02
_020056E4:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _02005752
_020056F2:
	ldr r0, _02005700 @ =0x000003FF
	cmp r2, r0
	ble _02005708
_020056F8:
	ldr r6, _02005704 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _02005760
	.align 2, 0
_02005700: .4byte 0x000003FF
_02005704: .4byte 0x000007FF
_02005708:
	ldr r0, _02005730 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _02005734
	cmp r2, #0
	bne _02005734
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _0200573C
	movs r0, #0x80
	movs r1, #0
	b _02005738
	.align 2, 0
_02005730: .4byte 0x000003FF
_02005734:
	movs r0, #0x7f
	movs r1, #0
_02005738:
	adds r4, r4, r0
	adcs r5, r1
_0200573C:
	ldr r0, _020057A0 @ =0x1FFFFFFF
	cmp r5, r0
	bls _02005752
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_02005752:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_0200575C:
	adds r5, r1, #0
	adds r4, r0, #0
_02005760:
	str r4, [sp]
	ldr r2, _020057A4 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _020057A8 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _020057AC @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _020057B0 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020057A0: .4byte 0x1FFFFFFF
_020057A4: .4byte 0x000FFFFF
_020057A8: .4byte 0xFFF00000
_020057AC: .4byte 0x000007FF
_020057B0: .4byte 0xFFFF800F

	thumb_func_start __unpack_d
__unpack_d: @ 0x020057B4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _02005828
	orrs r1, r5
	cmp r1, #0
	bne _020057E8
	movs r0, #2
	str r0, [r6]
	b _0200587C
_020057E8:
	ldr r0, _02005820 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _02005824 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _02005858
	adds r7, r0, #0
_02005806:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _02005806
	b _02005858
	.align 2, 0
_02005820: .4byte 0xFFFFFC02
_02005824: .4byte 0x0FFFFFFF
_02005828:
	ldr r0, _0200583C @ =0x000007FF
	cmp r3, r0
	bne _0200585E
	orrs r1, r5
	cmp r1, #0
	bne _02005840
	movs r0, #4
	str r0, [r6]
	b _0200587C
	.align 2, 0
_0200583C: .4byte 0x000007FF
_02005840:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _02005856
	movs r0, #1
	str r0, [r6]
	b _02005858
_02005856:
	str r1, [r6]
_02005858:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0200587C
_0200585E:
	ldr r1, _02005880 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _02005884 @ =0x00000000
	ldr r3, _02005888 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0200587C:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02005880: .4byte 0xFFFFFC01
_02005884: .4byte 0x00000000
_02005888: .4byte 0x10000000

	thumb_func_start _fpadd_parts
_fpadd_parts: @ 0x0200588C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _020058A8
	movs r0, #1
_020058A8:
	cmp r0, #0
	beq _020058B0
_020058AC:
	adds r0, r3, #0
	b _02005AE8
_020058B0:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _020058BA
	movs r1, #1
_020058BA:
	cmp r1, #0
	bne _02005932
	movs r1, #0
	cmp r2, #4
	bne _020058C6
	movs r1, #1
_020058C6:
	cmp r1, #0
	beq _020058E8
	movs r1, #0
	cmp r0, #4
	bne _020058D2
	movs r1, #1
_020058D2:
	cmp r1, #0
	beq _020058AC
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _020058AC
	ldr r0, _020058E4 @ =gUnk_03000948
	b _02005AE8
	.align 2, 0
_020058E4: .4byte gUnk_03000948
_020058E8:
	movs r1, #0
	cmp r0, #4
	bne _020058F0
	movs r1, #1
_020058F0:
	cmp r1, #0
	bne _02005932
	movs r1, #0
	cmp r0, #2
	bne _020058FC
	movs r1, #1
_020058FC:
	cmp r1, #0
	beq _02005924
	movs r0, #0
	cmp r2, #2
	bne _02005908
	movs r0, #1
_02005908:
	cmp r0, #0
	beq _020058AC
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _02005AE6
_02005924:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _0200592E
	movs r1, #1
_0200592E:
	cmp r1, #0
	beq _02005936
_02005932:
	adds r0, r4, #0
	b _02005AE8
_02005936:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _02005956
	rsbs r0, r0, #0
_02005956:
	cmp r0, #0x3f
	bgt _020059D4
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _020059A0
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_0200596E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _0200596E
	mov r8, sb
_020059A0:
	cmp r8, sb
	ble _020059F0
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_020059AC:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _020059AC
	mov sb, r8
	b _020059F0
_020059D4:
	cmp sb, r8
	ble _020059E2
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _020059E8
_020059E2:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_020059E8:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_020059F0:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _02005A98
	mov r2, ip
	cmp r2, #0
	beq _02005A12
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _02005A1E
_02005A12:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_02005A1E:
	cmp r3, #0
	blt _02005A34
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _02005A4C
_02005A34:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_02005A4C:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_02005A58:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _02005A94 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _02005AB0
	cmp r3, r0
	bne _02005A6E
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _02005AB0
_02005A6E:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _02005A58
	.align 2, 0
_02005A94: .4byte 0x0FFFFFFF
_02005A98:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_02005AB0:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _02005AF4 @ =0x1FFFFFFF
	cmp r1, r0
	bls _02005AE6
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_02005AE6:
	mov r0, sl
_02005AE8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02005AF4: .4byte 0x1FFFFFFF

	thumb_func_start __adddf3
__adddf3: @ 0x02005AF8
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __subdf3
__subdf3: @ 0x02005B28
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __muldf3
__muldf3: @ 0x02005B60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _02005B96
	movs r0, #1
_02005B96:
	cmp r0, #0
	bne _02005BFA
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _02005BA4
	movs r2, #1
_02005BA4:
	cmp r2, #0
	beq _02005BAC
	ldr r0, [sp, #4]
	b _02005C1C
_02005BAC:
	movs r2, #0
	cmp r1, #4
	bne _02005BB4
	movs r2, #1
_02005BB4:
	cmp r2, #0
	beq _02005BC6
	movs r1, #0
	cmp r0, #2
	bne _02005BC0
	movs r1, #1
_02005BC0:
	cmp r1, #0
	bne _02005BDE
	b _02005BFA
_02005BC6:
	movs r2, #0
	cmp r0, #4
	bne _02005BCE
	movs r2, #1
_02005BCE:
	cmp r2, #0
	beq _02005BEE
	movs r0, #0
	cmp r1, #2
	bne _02005BDA
	movs r0, #1
_02005BDA:
	cmp r0, #0
	beq _02005BE8
_02005BDE:
	ldr r0, _02005BE4 @ =gUnk_03000948
	b _02005DE6
	.align 2, 0
_02005BE4: .4byte gUnk_03000948
_02005BE8:
	mov r1, r8
	ldr r0, [r1, #4]
	b _02005C1C
_02005BEE:
	movs r2, #0
	cmp r1, #2
	bne _02005BF6
	movs r2, #1
_02005BF6:
	cmp r2, #0
	beq _02005C0C
_02005BFA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _02005DE6
_02005C0C:
	movs r1, #0
	cmp r0, #2
	bne _02005C14
	movs r1, #1
_02005C14:
	cmp r1, #0
	beq _02005C2C
	mov r2, r8
	ldr r0, [r2, #4]
_02005C1C:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _02005DE6
_02005C2C:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _02005CA4
	cmp r7, r3
	bne _02005CAC
	cmp r6, r2
	bls _02005CAC
_02005CA4:
	ldr r5, _02005DFC @ =0x00000001
	ldr r4, _02005DF8 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_02005CAC:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _02005CC8
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _02005CD8
	cmp r0, r6
	bls _02005CD8
_02005CC8:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_02005CD8:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _02005E00 @ =0x1FFFFFFF
	cmp r5, r0
	bls _02005D5A
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_02005D1E:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _02005D44
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_02005D44:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _02005D1E
	mov r0, ip
	str r0, [sp, #0x30]
_02005D5A:
	ldr r0, _02005E04 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _02005DAC
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_02005D6C:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _02005D96
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_02005D96:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _02005D6C
	mov r1, ip
	str r1, [sp, #0x30]
_02005DAC:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _02005DDA
	cmp r2, #0
	bne _02005DDA
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _02005DD2
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _02005DDA
_02005DD2:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_02005DDA:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_02005DE6:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02005DF8: .4byte 0x00000000
_02005DFC: .4byte 0x00000001
_02005E00: .4byte 0x1FFFFFFF
_02005E04: .4byte 0x0FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x02005E08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _02005E32
	movs r0, #1
_02005E32:
	cmp r0, #0
	beq _02005E3A
	mov r1, sp
	b _02005F7C
_02005E3A:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _02005E46
	movs r0, #1
_02005E46:
	cmp r0, #0
	beq _02005E4E
	adds r1, r4, #0
	b _02005F7C
_02005E4E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _02005E5E
	movs r0, #1
_02005E5E:
	cmp r0, #0
	bne _02005E6E
	movs r4, #0
	cmp r3, #2
	bne _02005E6A
	movs r4, #1
_02005E6A:
	cmp r4, #0
	beq _02005E80
_02005E6E:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _02005E78
	b _02005F7C
_02005E78:
	ldr r1, _02005E7C @ =gUnk_03000948
	b _02005F7C
	.align 2, 0
_02005E7C: .4byte gUnk_03000948
_02005E80:
	movs r0, #0
	cmp r2, #4
	bne _02005E88
	movs r0, #1
_02005E88:
	cmp r0, #0
	beq _02005E9A
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _02005F7C
_02005E9A:
	movs r0, #0
	cmp r2, #2
	bne _02005EA2
	movs r0, #1
_02005EA2:
	cmp r0, #0
	beq _02005EAE
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _02005F7A
_02005EAE:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _02005ED2
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _02005EE6
	cmp r0, r4
	bls _02005EE6
_02005ED2:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_02005EE6:
	ldr r7, _02005F8C @ =0x10000000
	ldr r6, _02005F88 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_02005EF2:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _02005F16
	cmp r1, r5
	bne _02005F02
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _02005F16
_02005F02:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_02005F16:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _02005EF2
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _02005F70
	cmp r2, #0
	bne _02005F70
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _02005F60
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _02005F70
_02005F60:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_02005F70:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_02005F7A:
	mov r1, ip
_02005F7C:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02005F88: .4byte 0x00000000
_02005F8C: .4byte 0x10000000

	thumb_func_start __fpcmp_parts_d
__fpcmp_parts_d: @ 0x02005F90
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _02005FA0
	movs r0, #1
_02005FA0:
	cmp r0, #0
	bne _02005FB2
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _02005FAE
	movs r0, #1
_02005FAE:
	cmp r0, #0
	beq _02005FB6
_02005FB2:
	movs r0, #1
	b _0200608C
_02005FB6:
	movs r0, #0
	cmp r1, #4
	bne _02005FBE
	movs r0, #1
_02005FBE:
	cmp r0, #0
	beq _02005FD6
	movs r0, #0
	cmp r2, #4
	bne _02005FCA
	movs r0, #1
_02005FCA:
	cmp r0, #0
	beq _02005FD6
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _0200608C
_02005FD6:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _02005FE0
	movs r1, #1
_02005FE0:
	cmp r1, #0
	bne _0200602E
	movs r1, #0
	cmp r2, #4
	bne _02005FEC
	movs r1, #1
_02005FEC:
	cmp r1, #0
	beq _02005FFE
_02005FF0:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _02006038
	movs r1, #1
	b _02006038
_02005FFE:
	movs r1, #0
	cmp r0, #2
	bne _02006006
	movs r1, #1
_02006006:
	cmp r1, #0
	beq _02006016
	movs r1, #0
	cmp r2, #2
	bne _02006012
	movs r1, #1
_02006012:
	cmp r1, #0
	bne _0200608A
_02006016:
	movs r1, #0
	cmp r0, #2
	bne _0200601E
	movs r1, #1
_0200601E:
	cmp r1, #0
	bne _02005FF0
	movs r0, #0
	cmp r2, #2
	bne _0200602A
	movs r0, #1
_0200602A:
	cmp r0, #0
	beq _0200603C
_0200602E:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _02006038
	subs r1, #2
_02006038:
	adds r0, r1, #0
	b _0200608C
_0200603C:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _0200604E
_02006044:
	movs r0, #1
	cmp r4, #0
	beq _0200608C
	subs r0, #2
	b _0200608C
_0200604E:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _02006044
	cmp r1, r0
	bge _02006066
_0200605A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _0200608C
	movs r0, #1
	b _0200608C
_02006066:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _02006044
	cmp r3, r2
	bne _0200607A
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _02006044
_0200607A:
	cmp r2, r3
	bhi _0200605A
	cmp r2, r3
	bne _0200608A
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0200605A
_0200608A:
	movs r0, #0
_0200608C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __cmpdf2
__cmpdf2: @ 0x02006090
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqdf2
__eqdf2: @ 0x020060BC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _020060E4
	movs r1, #1
_020060E4:
	cmp r1, #0
	bne _020060F6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _020060F2
	movs r1, #1
_020060F2:
	cmp r1, #0
	beq _020060FA
_020060F6:
	movs r0, #1
	b _02006102
_020060FA:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_02006102:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nedf2
__nedf2: @ 0x02006108
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006130
	movs r1, #1
_02006130:
	cmp r1, #0
	bne _02006142
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200613E
	movs r1, #1
_0200613E:
	cmp r1, #0
	beq _02006146
_02006142:
	movs r0, #1
	b _0200614E
_02006146:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0200614E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtdf2
__gtdf2: @ 0x02006154
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200617C
	movs r1, #1
_0200617C:
	cmp r1, #0
	bne _0200618E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200618A
	movs r1, #1
_0200618A:
	cmp r1, #0
	beq _02006194
_0200618E:
	movs r0, #1
	rsbs r0, r0, #0
	b _0200619C
_02006194:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0200619C:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __gedf2
__gedf2: @ 0x020061A0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _020061C8
	movs r1, #1
_020061C8:
	cmp r1, #0
	bne _020061DA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _020061D6
	movs r1, #1
_020061D6:
	cmp r1, #0
	beq _020061E0
_020061DA:
	movs r0, #1
	rsbs r0, r0, #0
	b _020061E8
_020061E0:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_020061E8:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __ltdf2
__ltdf2: @ 0x020061EC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006214
	movs r1, #1
_02006214:
	cmp r1, #0
	bne _02006226
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _02006222
	movs r1, #1
_02006222:
	cmp r1, #0
	beq _0200622A
_02006226:
	movs r0, #1
	b _02006232
_0200622A:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_02006232:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __ledf2
__ledf2: @ 0x02006238
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006260
	movs r1, #1
_02006260:
	cmp r1, #0
	bne _02006272
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200626E
	movs r1, #1
_0200626E:
	cmp r1, #0
	beq _02006276
_02006272:
	movs r0, #1
	b _0200627E
_02006276:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0200627E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x02006284
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _0200629C
	movs r0, #2
	str r0, [sp]
	b _020062F2
_0200629C:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _020062C2
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _020062BC
	ldr r1, _020062B8 @ =0x00000000
	ldr r0, _020062B4 @ =0xC1E00000
	b _020062F8
	.align 2, 0
_020062B4: .4byte 0xC1E00000
_020062B8: .4byte 0x00000000
_020062BC:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _020062C6
_020062C2:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_020062C6:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _020062FC @ =0x0FFFFFFF
	cmp r0, r1
	bhi _020062F2
	adds r5, r1, #0
	ldr r4, [sp, #8]
_020062D6:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _020062D6
	str r4, [sp, #8]
_020062F2:
	mov r0, sp
	bl __pack_d
_020062F8:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_020062FC: .4byte 0x0FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x02006300
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0200631A
	movs r1, #1
_0200631A:
	cmp r1, #0
	bne _0200634E
	movs r1, #0
	cmp r0, #1
	bhi _02006326
	movs r1, #1
_02006326:
	cmp r1, #0
	bne _0200634E
	movs r1, #0
	cmp r0, #4
	bne _02006332
	movs r1, #1
_02006332:
	cmp r1, #0
	beq _02006348
_02006336:
	ldr r0, [sp, #4]
	ldr r1, _02006344 @ =0x7FFFFFFF
	cmp r0, #0
	beq _0200636C
	adds r1, #1
	b _0200636C
	.align 2, 0
_02006344: .4byte 0x7FFFFFFF
_02006348:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02006352
_0200634E:
	movs r0, #0
	b _0200636E
_02006352:
	cmp r0, #0x1e
	bgt _02006336
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0200636C
	rsbs r1, r1, #0
_0200636C:
	adds r0, r1, #0
_0200636E:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __negdf2
__negdf2: @ 0x02006374
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0200638E
	movs r1, #1
_0200638E:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __make_dp
__make_dp: @ 0x0200639C
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start __truncdfsf2
__truncdfsf2: @ 0x020063C4
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _02006404 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _020063F4
	movs r0, #1
	orrs r5, r0
_020063F4:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_02006404: .4byte 0x3FFFFFFF

	thumb_func_start __pack_f
__pack_f: @ 0x02006408
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0200641A
	movs r1, #1
_0200641A:
	cmp r1, #0
	beq _02006428
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0200648E
_02006428:
	movs r1, #0
	cmp r3, #4
	bne _02006430
	movs r1, #1
_02006430:
	cmp r1, #0
	bne _02006464
	movs r1, #0
	cmp r3, #2
	bne _0200643C
	movs r1, #1
_0200643C:
	cmp r1, #0
	beq _02006444
	movs r2, #0
	b _0200648E
_02006444:
	cmp r2, #0
	beq _0200648E
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _02006460
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0200645C
	movs r2, #0
	b _0200648C
_0200645C:
	lsrs r2, r0
	b _0200648C
_02006460:
	cmp r0, #0x7f
	ble _0200646A
_02006464:
	movs r5, #0xff
	movs r2, #0
	b _0200648E
_0200646A:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _02006482
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _02006484
	adds r2, #0x40
	b _02006484
_02006482:
	adds r2, #0x3f
_02006484:
	cmp r2, #0
	bge _0200648C
	lsrs r2, r2, #1
	adds r5, #1
_0200648C:
	lsrs r2, r2, #7
_0200648E:
	ldr r0, _020064B0 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _020064B4 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _020064B8 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _020064BC @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_020064B0: .4byte 0x007FFFFF
_020064B4: .4byte 0xFF800000
_020064B8: .4byte 0x807FFFFF
_020064BC: .4byte 0x7FFFFFFF

	thumb_func_start __unpack_f
__unpack_f: @ 0x020064C0
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _02006504
	cmp r2, #0
	bne _020064E0
	movs r0, #2
	str r0, [r3]
	b _02006538
_020064E0:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _02006500 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _02006520
	adds r0, r4, #0
_020064F4:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _020064F4
	str r0, [r3, #8]
	b _02006520
	.align 2, 0
_02006500: .4byte 0x3FFFFFFF
_02006504:
	cmp r1, #0xff
	bne _02006524
	cmp r2, #0
	bne _02006512
	movs r0, #4
	str r0, [r3]
	b _02006538
_02006512:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0200651E
	movs r0, #1
_0200651E:
	str r0, [r3]
_02006520:
	str r2, [r3, #0xc]
	b _02006538
_02006524:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_02006538:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _fpadd_parts_0
_fpadd_parts_0: @ 0x0200653C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _02006552
	movs r0, #1
_02006552:
	cmp r0, #0
	beq _0200655A
_02006556:
	adds r0, r6, #0
	b _020066B0
_0200655A:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _02006564
	movs r1, #1
_02006564:
	cmp r1, #0
	bne _020065D8
	movs r1, #0
	cmp r2, #4
	bne _02006570
	movs r1, #1
_02006570:
	cmp r1, #0
	beq _02006590
	movs r1, #0
	cmp r0, #4
	bne _0200657C
	movs r1, #1
_0200657C:
	cmp r1, #0
	beq _02006556
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _02006556
	ldr r0, _0200658C @ =gUnk_03000960
	b _020066B0
	.align 2, 0
_0200658C: .4byte gUnk_03000960
_02006590:
	movs r1, #0
	cmp r0, #4
	bne _02006598
	movs r1, #1
_02006598:
	cmp r1, #0
	bne _020065D8
	movs r1, #0
	cmp r0, #2
	bne _020065A4
	movs r1, #1
_020065A4:
	cmp r1, #0
	beq _020065CA
	movs r0, #0
	cmp r2, #2
	bne _020065B0
	movs r0, #1
_020065B0:
	cmp r0, #0
	beq _02006556
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _020066AE
_020065CA:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _020065D4
	movs r1, #1
_020065D4:
	cmp r1, #0
	beq _020065DC
_020065D8:
	adds r0, r7, #0
	b _020066B0
_020065DC:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _020065EC
	rsbs r0, r0, #0
_020065EC:
	cmp r0, #0x1f
	bgt _02006630
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _02006612
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_02006600:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _02006600
	adds r3, r1, #0
_02006612:
	cmp r3, r1
	ble _02006642
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0200661C:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0200661C
	adds r1, r3, #0
	b _02006642
_02006630:
	cmp r1, r3
	ble _02006638
	movs r4, #0
	b _0200663C
_02006638:
	adds r1, r3, #0
	movs r2, #0
_0200663C:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_02006642:
	cmp r6, r8
	beq _0200668C
	cmp r6, #0
	beq _0200664E
	subs r3, r4, r2
	b _02006650
_0200664E:
	subs r3, r2, r4
_02006650:
	cmp r3, #0
	blt _0200665E
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _02006668
_0200665E:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_02006668:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _02006688 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _02006694
_02006672:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _02006672
	b _02006694
	.align 2, 0
_02006688: .4byte 0x3FFFFFFE
_0200668C:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_02006694:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _020066AE
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_020066AE:
	adds r0, r5, #0
_020066B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __addsf3
__addsf3: @ 0x020066B8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __subsf3
__subsf3: @ 0x020066E4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __mulsf3
__mulsf3: @ 0x02006718
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0200674A
	movs r0, #1
_0200674A:
	cmp r0, #0
	bne _020067A8
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02006758
	movs r2, #1
_02006758:
	cmp r2, #0
	beq _02006760
	ldr r0, [sp, #4]
	b _020067C8
_02006760:
	movs r2, #0
	cmp r1, #4
	bne _02006768
	movs r2, #1
_02006768:
	cmp r2, #0
	beq _0200677A
	movs r1, #0
	cmp r0, #2
	bne _02006774
	movs r1, #1
_02006774:
	cmp r1, #0
	bne _02006792
	b _020067A8
_0200677A:
	movs r2, #0
	cmp r0, #4
	bne _02006782
	movs r2, #1
_02006782:
	cmp r2, #0
	beq _0200679C
	movs r0, #0
	cmp r1, #2
	bne _0200678E
	movs r0, #1
_0200678E:
	cmp r0, #0
	beq _020067C6
_02006792:
	ldr r0, _02006798 @ =gUnk_03000960
	b _0200686A
	.align 2, 0
_02006798: .4byte gUnk_03000960
_0200679C:
	movs r2, #0
	cmp r1, #2
	bne _020067A4
	movs r2, #1
_020067A4:
	cmp r2, #0
	beq _020067BA
_020067A8:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0200686A
_020067BA:
	movs r1, #0
	cmp r0, #2
	bne _020067C2
	movs r1, #1
_020067C2:
	cmp r1, #0
	beq _020067D8
_020067C6:
	ldr r0, [r7, #4]
_020067C8:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _0200686A
_020067D8:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _02006824
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0200680E:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0200681C
	lsrs r6, r6, #1
	orrs r6, r1
_0200681C:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _0200680E
	str r4, [sp, #0x28]
_02006824:
	ldr r0, _02006878 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _0200684A
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_02006834:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _02006842
	orrs r5, r3
_02006842:
	lsls r6, r6, #1
	cmp r5, r2
	bls _02006834
	str r1, [sp, #0x28]
_0200684A:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _02006860
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _0200685E
	cmp r6, #0
	beq _02006860
_0200685E:
	adds r5, #0x40
_02006860:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_0200686A:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02006878: .4byte 0x3FFFFFFF

	thumb_func_start __divsf3
__divsf3: @ 0x0200687C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_f
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _020068A2
	movs r0, #1
_020068A2:
	cmp r0, #0
	beq _020068AA
	mov r1, sp
	b _0200695C
_020068AA:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _020068B6
	movs r0, #1
_020068B6:
	cmp r0, #0
	beq _020068BE
	adds r1, r5, #0
	b _0200695C
_020068BE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _020068CE
	movs r0, #1
_020068CE:
	cmp r0, #0
	bne _020068DE
	movs r0, #0
	cmp r3, #2
	bne _020068DA
	movs r0, #1
_020068DA:
	cmp r0, #0
	beq _020068F0
_020068DE:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _0200695C
	ldr r1, _020068EC @ =gUnk_03000960
	b _0200695C
	.align 2, 0
_020068EC: .4byte gUnk_03000960
_020068F0:
	movs r1, #0
	cmp r2, #4
	bne _020068F8
	movs r1, #1
_020068F8:
	cmp r1, #0
	beq _02006904
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _0200695C
_02006904:
	movs r0, #0
	cmp r2, #2
	bne _0200690C
	movs r0, #1
_0200690C:
	cmp r0, #0
	beq _02006916
	movs r0, #4
	str r0, [r4]
	b _0200695A
_02006916:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _0200692C
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_0200692C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_02006932:
	cmp r2, r3
	blo _0200693A
	orrs r1, r0
	subs r2, r2, r3
_0200693A:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _02006932
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _02006958
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02006956
	cmp r2, #0
	beq _02006958
_02006956:
	adds r1, #0x40
_02006958:
	str r1, [r4, #0xc]
_0200695A:
	adds r1, r4, #0
_0200695C:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __fpcmp_parts_f
__fpcmp_parts_f: @ 0x02006968
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _02006976
	movs r0, #1
_02006976:
	cmp r0, #0
	bne _02006988
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _02006984
	movs r0, #1
_02006984:
	cmp r0, #0
	beq _0200698C
_02006988:
	movs r0, #1
	b _02006A4A
_0200698C:
	movs r0, #0
	cmp r2, #4
	bne _02006994
	movs r0, #1
_02006994:
	cmp r0, #0
	beq _020069AC
	movs r0, #0
	cmp r3, #4
	bne _020069A0
	movs r0, #1
_020069A0:
	cmp r0, #0
	beq _020069AC
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _02006A4A
_020069AC:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _020069B6
	movs r2, #1
_020069B6:
	cmp r2, #0
	bne _02006A04
	movs r2, #0
	cmp r3, #4
	bne _020069C2
	movs r2, #1
_020069C2:
	cmp r2, #0
	beq _020069D4
_020069C6:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _02006A0E
	movs r1, #1
	b _02006A0E
_020069D4:
	movs r2, #0
	cmp r0, #2
	bne _020069DC
	movs r2, #1
_020069DC:
	cmp r2, #0
	beq _020069EC
	movs r2, #0
	cmp r3, #2
	bne _020069E8
	movs r2, #1
_020069E8:
	cmp r2, #0
	bne _02006A48
_020069EC:
	movs r2, #0
	cmp r0, #2
	bne _020069F4
	movs r2, #1
_020069F4:
	cmp r2, #0
	bne _020069C6
	movs r0, #0
	cmp r3, #2
	bne _02006A00
	movs r0, #1
_02006A00:
	cmp r0, #0
	beq _02006A12
_02006A04:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _02006A0E
	subs r1, #2
_02006A0E:
	adds r0, r1, #0
	b _02006A4A
_02006A12:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _02006A24
_02006A1A:
	movs r0, #1
	cmp r3, #0
	beq _02006A4A
	subs r0, #2
	b _02006A4A
_02006A24:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _02006A1A
	cmp r2, r0
	bge _02006A3C
_02006A30:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _02006A4A
	movs r0, #1
	b _02006A4A
_02006A3C:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _02006A1A
	cmp r0, r1
	blo _02006A30
_02006A48:
	movs r0, #0
_02006A4A:
	pop {r4, pc}

	thumb_func_start __cmpsf2
__cmpsf2: @ 0x02006A4C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqsf2
__eqsf2: @ 0x02006A74
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006A98
	movs r1, #1
_02006A98:
	cmp r1, #0
	bne _02006AAA
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02006AA6
	movs r1, #1
_02006AA6:
	cmp r1, #0
	beq _02006AAE
_02006AAA:
	movs r0, #1
	b _02006AB6
_02006AAE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_02006AB6:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nesf2
__nesf2: @ 0x02006ABC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006AE0
	movs r1, #1
_02006AE0:
	cmp r1, #0
	bne _02006AF2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02006AEE
	movs r1, #1
_02006AEE:
	cmp r1, #0
	beq _02006AF6
_02006AF2:
	movs r0, #1
	b _02006AFE
_02006AF6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_02006AFE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtsf2
__gtsf2: @ 0x02006B04
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006B28
	movs r1, #1
_02006B28:
	cmp r1, #0
	bne _02006B3A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02006B36
	movs r1, #1
_02006B36:
	cmp r1, #0
	beq _02006B40
_02006B3A:
	movs r0, #1
	rsbs r0, r0, #0
	b _02006B48
_02006B40:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_02006B48:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __gesf2
__gesf2: @ 0x02006B4C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006B70
	movs r1, #1
_02006B70:
	cmp r1, #0
	bne _02006B82
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02006B7E
	movs r1, #1
_02006B7E:
	cmp r1, #0
	beq _02006B88
_02006B82:
	movs r0, #1
	rsbs r0, r0, #0
	b _02006B90
_02006B88:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_02006B90:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __ltsf2
__ltsf2: @ 0x02006B94
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006BB8
	movs r1, #1
_02006BB8:
	cmp r1, #0
	bne _02006BCA
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02006BC6
	movs r1, #1
_02006BC6:
	cmp r1, #0
	beq _02006BCE
_02006BCA:
	movs r0, #1
	b _02006BD6
_02006BCE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_02006BD6:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __lesf2
__lesf2: @ 0x02006BDC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _02006C00
	movs r1, #1
_02006C00:
	cmp r1, #0
	bne _02006C12
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02006C0E
	movs r1, #1
_02006C0E:
	cmp r1, #0
	beq _02006C16
_02006C12:
	movs r0, #1
	b _02006C1E
_02006C16:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_02006C1E:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsisf
__floatsisf: @ 0x02006C24
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _02006C3C
	movs r0, #2
	str r0, [sp]
	b _02006C74
_02006C3C:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _02006C5A
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _02006C54
	ldr r0, _02006C50 @ =0xCF000000
	b _02006C7A
	.align 2, 0
_02006C50: .4byte 0xCF000000
_02006C54:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _02006C5C
_02006C5A:
	str r1, [sp, #0xc]
_02006C5C:
	ldr r2, [sp, #0xc]
	ldr r3, _02006C80 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _02006C74
	ldr r1, [sp, #8]
_02006C66:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _02006C66
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_02006C74:
	mov r0, sp
	bl __pack_f
_02006C7A:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_02006C80: .4byte 0x3FFFFFFF

	thumb_func_start __fixsfsi
__fixsfsi: @ 0x02006C84
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _02006C9C
	movs r1, #1
_02006C9C:
	cmp r1, #0
	bne _02006CCE
	movs r1, #0
	cmp r0, #1
	bhi _02006CA8
	movs r1, #1
_02006CA8:
	cmp r1, #0
	bne _02006CCE
	movs r1, #0
	cmp r0, #4
	bne _02006CB4
	movs r1, #1
_02006CB4:
	cmp r1, #0
	beq _02006CC8
_02006CB8:
	ldr r0, [sp, #4]
	ldr r1, _02006CC4 @ =0x7FFFFFFF
	cmp r0, #0
	beq _02006CE6
	adds r1, #1
	b _02006CE6
	.align 2, 0
_02006CC4: .4byte 0x7FFFFFFF
_02006CC8:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _02006CD2
_02006CCE:
	movs r0, #0
	b _02006CE8
_02006CD2:
	cmp r1, #0x1e
	bgt _02006CB8
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02006CE6
	rsbs r1, r1, #0
_02006CE6:
	adds r0, r1, #0
_02006CE8:
	add sp, #0x14
	pop {pc}

	thumb_func_start __negsf2
__negsf2: @ 0x02006CEC
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02006D04
	movs r1, #1
_02006D04:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {pc}

	thumb_func_start __make_fp
__make_fp: @ 0x02006D10
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_f
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start __extendsfdf2
__extendsfdf2: @ 0x02006D28
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_dp
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x02006D54
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _02006D84
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _02006D70
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _02006D80
_02006D70:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_02006D80:
	adds r1, r4, #0
	adds r0, r3, #0
_02006D84:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __muldi3
__muldi3: @ 0x02006D88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _02006DF4 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _02006DC8
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_02006DC8:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02006DF4: .4byte 0x0000FFFF

	thumb_func_start __negdi2
__negdi2: @ 0x02006DF8
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _02006E06
	subs r1, #1
_02006E06:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0
