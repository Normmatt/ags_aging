.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_80014B0
sub_80014B0: @ 0x080014B0
	push {r4, r7, lr}
	ldr r4, _080014FC
	add sp, r4
	mov r7, sp
	adds r0, r7, #0
	ldr r0, _08001500
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl SaveAndDisableInterruptHandlers
	ldr r0, _08001504
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _08001508
	ldr r2, _0800150C
	bl memcpy
	ldr r1, _08001510
	adds r0, r1, #0
	bl DrawHeading
	ldr r1, _08001514
	adds r0, r7, r1
	ldr r1, _08001518
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	bl ReadKey
_080014FA:
	b _0800151E
	.align 2, 0
_080014FC: .4byte 0xFFFFEF38
_08001500: .4byte 0x000010C4
_08001504: .4byte 0x04000004
_08001508: .4byte gUnknown_03001B40
_0800150C: .4byte 0x00001064
_08001510: .4byte gUnknown_080187F0
_08001514: .4byte 0x000010A8
_08001518: .4byte gUnknown_03002BB0
	.byte 0x3D, 0xE1
_0800151E:
	adds r0, r7, #0
	ldr r0, _0800155C
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	bl sub_8001888
	movs r0, #1
	bl WaitForInterrupt
	bl UpdateTilemaps
	bl ReadKeyPlus
	ldr r0, _08001560
	ldrh r1, [r0, #2]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08001564
	adds r0, r7, #0
	movs r2, #0x86
	lsls r2, r2, #5
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	b _0800179A
	.align 2, 0
_0800155C: .4byte 0x000010C4
_08001560: .4byte gUnknown_03000460
_08001564:
	ldr r0, _08001588
	ldrh r1, [r0, #2]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800158C
	adds r0, r7, #0
	movs r3, #0x86
	lsls r3, r3, #5
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	b _0800179A
	.align 2, 0
_08001588: .4byte gUnknown_03000460
_0800158C:
	ldr r0, _080015B8
	ldrh r1, [r0, #2]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080015D8
	adds r0, r7, #0
	ldr r4, _080015BC
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0
	bne _080015C0
	adds r0, r7, #0
	ldr r0, _080015BC
	adds r1, r7, r0
	movs r0, #2
	str r0, [r1]
	b _080015D8
	.align 2, 0
_080015B8: .4byte gUnknown_03000460
_080015BC: .4byte 0x000010C4
_080015C0:
	adds r0, r7, #0
	ldr r2, _08001604
	adds r1, r7, r2
	adds r2, r7, #0
	ldr r3, _08001604
	adds r0, r7, r3
	adds r1, r7, #0
	ldr r4, _08001604
	adds r2, r7, r4
	ldr r1, [r2]
	subs r2, r1, #1
	str r2, [r0]
_080015D8:
	ldr r0, _08001608
	ldrh r1, [r0, #2]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08001624
	adds r0, r7, #0
	ldr r0, _08001604
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #2
	bne _0800160C
	adds r0, r7, #0
	ldr r2, _08001604
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	b _08001624
	.align 2, 0
_08001604: .4byte 0x000010C4
_08001608: .4byte gUnknown_03000460
_0800160C:
	adds r0, r7, #0
	ldr r3, _08001650
	adds r1, r7, r3
	adds r2, r7, #0
	ldr r4, _08001650
	adds r0, r7, r4
	adds r1, r7, #0
	ldr r1, _08001650
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
_08001624:
	ldr r0, _08001654
	ldrh r1, [r0, #2]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080016DC
	adds r0, r7, #0
	ldr r2, _08001650
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #1
	beq _08001688
	cmp r0, #1
	bgt _08001658
	cmp r0, #0
	beq _0800165E
	b _080016DC
	.align 2, 0
_08001650: .4byte 0x000010C4
_08001654: .4byte gUnknown_03000460
_08001658:
	cmp r0, #2
	beq _080016B0
	b _080016DC
_0800165E:
	ldr r0, _08001670
	ldr r1, [r0]
	cmp r1, #1
	bne _08001674
	ldr r0, _08001670
	movs r1, #6
	str r1, [r0]
	b _08001680
	.align 2, 0
_08001670: .4byte gUnknown_03002BB0
_08001674:
	ldr r1, _08001684
	ldr r0, _08001684
	ldr r1, _08001684
	ldr r2, [r1]
	subs r1, r2, #1
	str r1, [r0]
_08001680:
	b _080016DC
	.align 2, 0
_08001684: .4byte gUnknown_03002BB0
_08001688:
	ldr r0, _08001698
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0800169C
	ldr r0, _08001698
	movs r1, #1
	str r1, [r0, #4]
	b _080016A8
	.align 2, 0
_08001698: .4byte gUnknown_03002BB0
_0800169C:
	ldr r1, _080016AC
	ldr r0, _080016AC
	ldr r1, _080016AC
	ldr r2, [r1, #4]
	subs r1, r2, #1
	str r1, [r0, #4]
_080016A8:
	b _080016DC
	.align 2, 0
_080016AC: .4byte gUnknown_03002BB0
_080016B0:
	ldr r0, _080016C0
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _080016C8
	ldr r0, _080016C0
	ldr r1, _080016C4
	str r1, [r0, #8]
	b _080016D4
	.align 2, 0
_080016C0: .4byte gUnknown_03002BB0
_080016C4: .4byte 0x00001734
_080016C8:
	ldr r0, _080016D8
	ldr r1, _080016D8
	ldr r2, [r1, #8]
	adds r1, r2, #0
	subs r1, #0x1e
	str r1, [r0, #8]
_080016D4:
	b _080016DC
	.align 2, 0
_080016D8: .4byte gUnknown_03002BB0
_080016DC:
	ldr r0, _08001708
	ldrh r1, [r0, #2]
	movs r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08001798
	adds r0, r7, #0
	ldr r3, _0800170C
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #1
	beq _08001740
	cmp r0, #1
	bgt _08001710
	cmp r0, #0
	beq _08001716
	b _08001798
	.align 2, 0
_08001708: .4byte gUnknown_03000460
_0800170C: .4byte 0x000010C4
_08001710:
	cmp r0, #2
	beq _08001768
	b _08001798
_08001716:
	ldr r0, _08001728
	ldr r1, [r0]
	cmp r1, #6
	bne _0800172C
	ldr r0, _08001728
	movs r1, #1
	str r1, [r0]
	b _08001738
	.align 2, 0
_08001728: .4byte gUnknown_03002BB0
_0800172C:
	ldr r1, _0800173C
	ldr r0, _0800173C
	ldr r1, _0800173C
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
_08001738:
	b _08001798
	.align 2, 0
_0800173C: .4byte gUnknown_03002BB0
_08001740:
	ldr r0, _08001750
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _08001754
	ldr r0, _08001750
	movs r1, #0
	str r1, [r0, #4]
	b _08001760
	.align 2, 0
_08001750: .4byte gUnknown_03002BB0
_08001754:
	ldr r1, _08001764
	ldr r0, _08001764
	ldr r1, _08001764
	ldr r2, [r1, #4]
	adds r1, r2, #1
	str r1, [r0, #4]
_08001760:
	b _08001798
	.align 2, 0
_08001764: .4byte gUnknown_03002BB0
_08001768:
	ldr r0, _0800177C
	ldr r1, [r0, #8]
	ldr r0, _08001780
	cmp r1, r0
	bne _08001784
	ldr r0, _0800177C
	movs r1, #0
	str r1, [r0, #8]
	b _08001790
	.align 2, 0
_0800177C: .4byte gUnknown_03002BB0
_08001780: .4byte 0x00001734
_08001784:
	ldr r0, _08001794
	ldr r1, _08001794
	ldr r2, [r1, #8]
	adds r1, r2, #0
	adds r1, #0x1e
	str r1, [r0, #8]
_08001790:
	b _08001798
	.align 2, 0
_08001794: .4byte gUnknown_03002BB0
_08001798:
	b _080014FA
_0800179A:
	adds r0, r7, #0
	movs r4, #0x86
	lsls r4, r4, #5
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #1
	bne _080017C0
	ldr r0, _080017B8
	ldr r2, _080017BC
	adds r1, r7, r2
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	b _0800185C
	.align 2, 0
_080017B8: .4byte gUnknown_03002BB0
_080017BC: .4byte 0x000010A8
_080017C0:
	movs r0, #0
	bl sub_800EB08
	bl CheckSaveForEepromMagic
	cmp r0, #1
	bne _08001852
	bl ReadKey
	ldr r2, _080017E8
	movs r0, #0
	movs r1, #0
	bl DrawString
_080017DC:
	ldr r0, _080017EC
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _080017F0
	b _08001850
	.align 2, 0
_080017E8: .4byte gUnknown_08018800
_080017EC: .4byte gUnknown_03000460
_080017F0:
	movs r0, #1
	bl WaitForInterrupt
	bl UpdateTilemaps
	bl ReadKeyPlus
	ldr r0, _08001824
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08001830
	ldr r0, _08001828
	movs r1, #3
	str r1, [r0]
	ldr r0, _08001828
	movs r1, #9
	str r1, [r0, #4]
	ldr r2, _0800182C
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08001846
	.align 2, 0
_08001824: .4byte gUnknown_0300045C
_08001828: .4byte gUnknown_03001B40
_0800182C: .4byte gUnknown_08018804
_08001830:
	ldr r0, _08001848
	movs r1, #3
	str r1, [r0]
	ldr r0, _08001848
	movs r1, #9
	str r1, [r0, #4]
	ldr r2, _0800184C
	movs r0, #0
	movs r1, #1
	bl DrawString
_08001846:
	b _080017DC
	.align 2, 0
_08001848: .4byte gUnknown_03001B40
_0800184C: .4byte gUnknown_08018820
_08001850:
	b _08001856
_08001852:
	bl UpdateChecksum
_08001856:
	movs r0, #1
	bl sub_800EB08
_0800185C:
	ldr r0, _0800187C
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _08001880
	bl memcpy
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r3, _08001884
	add sp, r3
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800187C: .4byte gUnknown_03001B40
_08001880: .4byte 0x00001064
_08001884: .4byte 0x000010C8
