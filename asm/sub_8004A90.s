.include "asm/macros.inc"

.syntax unified

	THUMB_FUNC_START sub_8005084
sub_8005084: @ 0x08005084
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	ldr r0, _08005324
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _08005328
	bl sub_800F35C
	ldr r0, _08005324
	ldrh r1, [r0, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #4]
	ldr r0, _08005324
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x28
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08005324
	ldrh r1, [r0, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x44
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _08005324
	ldrh r1, [r0, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	ldr r0, _08005324
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x28
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08005324
	ldrh r1, [r0, #0xa]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x6c
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	ldr r0, _08005324
	ldrb r1, [r0, #0xb]
	movs r2, #0x10
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08005324
	ldrb r1, [r0, #9]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #9]
	bl sub_8004630
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005330
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005334
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005338
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800533C
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005334
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005340
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _08005344
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005348
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _0800534C
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005350
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005354
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _08005358
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800535C
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005360
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _08005364
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800535C
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005368
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800536C
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800535C
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08005370
	str r0, [r7]
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005374
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005378
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r0, r2
	str r1, [r7]
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _0800537C
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800535C
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r0, r2
	str r1, [r7]
	bl sub_8004630
	ldr r0, _0800532C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _08005324
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005380
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08005384
	ldr r2, _08005388
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800538C
	ldr r2, _08005390
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005394
	ldr r2, _08005398
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800539C
	ldr r2, _080053A0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080053A4
	ldr r2, _080053A8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080053AC
	ldr r2, _080053B0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080053B4
	movs r2, #0xe8
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080053B8
	ldr r2, _080053BC
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080053C0
	ldr r2, _080053B0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080053C4
	movs r1, #0x88
	strh r1, [r0]
	bl sub_8004630
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005324: .4byte gUnknown_03001740
_08005328: .4byte gUnknown_08077464
_0800532C: .4byte 0x040000D4
_08005330: .4byte gUnknown_081003F4
_08005334: .4byte 0x84000080
_08005338: .4byte gUnknown_080BDF80
_0800533C: .4byte 0x05000200
_08005340: .4byte gUnknown_080BCF40
_08005344: .4byte 0x050003E0
_08005348: .4byte 0x84000008
_0800534C: .4byte gUnknown_080C4A20
_08005350: .4byte 0x84002000
_08005354: .4byte gUnknown_080F024C
_08005358: .4byte 0x0600F800
_0800535C: .4byte 0x84000200
_08005360: .4byte gUnknown_080F0B1C
_08005364: .4byte 0x0600F000
_08005368: .4byte gUnknown_080F13EC
_0800536C: .4byte 0x0600E800
_08005370: .4byte 0x06010000
_08005374: .4byte gUnknown_080BF380
_08005378: .4byte 0x84000400
_0800537C: .4byte gUnknown_080BD780
_08005380: .4byte 0x84000100
_08005384: .4byte 0x04000008
_08005388: .4byte 0x00001F02
_0800538C: .4byte 0x04000010
_08005390: .4byte 0x0000FFA8
_08005394: .4byte 0x04000012
_08005398: .4byte 0x0000FFE0
_0800539C: .4byte 0x0400000A
_080053A0: .4byte 0x00001E01
_080053A4: .4byte 0x04000014
_080053A8: .4byte 0x0000FFB8
_080053AC: .4byte 0x04000016
_080053B0: .4byte 0x0000FFC0
_080053B4: .4byte 0x0400000C
_080053B8: .4byte 0x04000018
_080053BC: .4byte 0x0000FF98
_080053C0: .4byte 0x0400001A
_080053C4: .4byte 0x0400004C

	THUMB_FUNC_START sub_80053C8
sub_80053C8: @ 0x080053C8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08005534
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005538
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800553C
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08005534
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005540
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005544
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08005534
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005548
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800554C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005550
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005534
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005554
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005558
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800555C
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005534
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005560
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005564
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800555C
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08005534
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005568
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800556C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005570
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r1, _08005574
	adds r0, r1, #0
	bl sub_80045B8
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08005578
	ldr r2, _0800557C
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005580
	movs r1, #0x88
	strh r1, [r0]
	ldr r0, _08005584
	ldr r2, _08005588
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800558C
	ldr r2, _08005590
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005594
	ldr r2, _08005598
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800559C
	ldr r2, _080055A0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080055A4
	ldr r2, _080055A8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080055AC
	movs r1, #0x3f
	strh r1, [r0]
	ldr r0, _080055B0
	ldr r2, _080055B4
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080055B8
	ldr r2, _080055BC
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080055C0
	ldr r2, _080055C4
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080055C8
	ldr r2, _080055CC
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080055D0
	movs r1, #0x88
	strh r1, [r0]
	bl sub_8004630
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005534: .4byte 0x040000D4
_08005538: .4byte gUnknown_081005F4
_0800553C: .4byte 0x84000080
_08005540: .4byte gUnknown_080CCE50
_08005544: .4byte 0x84002000
_08005548: .4byte gUnknown_080F61A0
_0800554C: .4byte 0x06008000
_08005550: .4byte 0x84000200
_08005554: .4byte gUnknown_080F1CBC
_08005558: .4byte 0x06008800
_0800555C: .4byte 0x84000400
_08005560: .4byte gUnknown_080F2E08
_08005564: .4byte 0x06009800
_08005568: .4byte gUnknown_080F3F54
_0800556C: .4byte 0x0600A800
_08005570: .4byte 0x84000800
_08005574: .4byte 0x06010000
_08005578: .4byte 0x04000008
_0800557C: .4byte 0x00001083
_08005580: .4byte 0x04000010
_08005584: .4byte 0x04000012
_08005588: .4byte 0x0000FF82
_0800558C: .4byte 0x0400000A
_08005590: .4byte 0x00005182
_08005594: .4byte 0x04000014
_08005598: .4byte 0x0000FF95
_0800559C: .4byte 0x04000016
_080055A0: .4byte 0x0000FFBA
_080055A4: .4byte 0x0400000C
_080055A8: .4byte 0x00009381
_080055AC: .4byte 0x04000018
_080055B0: .4byte 0x0400001A
_080055B4: .4byte 0x0000FFB9
_080055B8: .4byte 0x0400000E
_080055BC: .4byte 0x0000D580
_080055C0: .4byte 0x0400001C
_080055C4: .4byte 0x0000FFD1
_080055C8: .4byte 0x0400001E
_080055CC: .4byte 0x0000FFBC
_080055D0: .4byte 0x0400004C
