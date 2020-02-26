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
	bl DrawString
	bl UpdateTilemaps
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
	ldr r1, _020002B4 @ =IntrMain
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
_020002B4: .4byte IntrMain
_020002B8: .4byte gUnk_03000790
_020002BC: .4byte 0x84000041
_020002C0: .4byte 0x03007FFC

	thumb_func_start WaitForInterrupt
WaitForInterrupt: @ 0x020002C4
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

	thumb_func_start SetInterruptHandler
SetInterruptHandler: @ 0x02000310
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

	thumb_func_start SaveAndDisableInterruptHandlers
SaveAndDisableInterruptHandlers: @ 0x02000414
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

	thumb_func_start RestoreInterruptHandlers
RestoreInterruptHandlers: @ 0x020004D8
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
	bl UpdateTilemaps
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

	thumb_func_start UpdateTilemaps
UpdateTilemaps: @ 0x02000A98
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

	thumb_func_start DrawString
DrawString: @ 0x02000B08
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
	bl DrawString_NewLine
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _02000BA2
_02000B72:
	bl DrawString_ClearText
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
	bl DrawString_CheckAndWrap
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

	.equiv gUnk_03000938, 0x3000938
	@ FIXME: overlay with libc .bss

	thumb_func_start DrawString_CheckAndWrap
DrawString_CheckAndWrap: @ 0x02000D40
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
	bl DrawString_NewLine
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

	thumb_func_start DrawString_NewLine
DrawString_NewLine: @ 0x02000FD0
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

	thumb_func_start DrawString_ClearText
DrawString_ClearText: @ 0x02000FF0
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
	b _02001170
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
	b _020011C6
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
