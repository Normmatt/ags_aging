.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START AgbMain
AgbMain: @ 0x08000118
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	bl sub_800D5F4
	ldr r0, _08000148
	ldr r2, _0800014C
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_800EE9C
	bl sub_8000200
	str r0, [r7]
	ldr r0, [r7]
	cmp r0, #0
	beq _0800017A
	ldr r0, [r7]
	cmp r0, #1
	beq _08000150
	cmp r0, #2
	beq _08000164
	b _08000178
	.align 2, 0
_08000148: .4byte 0x04000204
_0800014C: .4byte 0x000005B7
_08000150:
	ldr r0, _08000160
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000160
	movs r1, #0
	str r1, [r0, #4]
	b _08000178
	.align 2, 0
_08000160: .4byte gUnknown_03002BB0
_08000164:
	ldr r0, _08000174
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000174
	movs r1, #1
	str r1, [r0, #4]
	b _08000178
	.align 2, 0
_08000174: .4byte gUnknown_03002BB0
_08000178:
	b _080001B2
_0800017A:
	movs r0, #0
	bl sub_800EB08
	bl sub_800EC50
	cmp r0, #1
	bne _080001A0
	ldr r0, _0800019C
	movs r1, #4
	str r1, [r0]
	ldr r0, _0800019C
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, _0800019C
	movs r1, #0
	str r1, [r0, #8]
	b _080001AC
	.align 2, 0
_0800019C: .4byte gUnknown_03002BB0
_080001A0:
	bl sub_800EF34
	cmp r0, #0
	beq _080001AC
	bl sub_800028C
_080001AC:
	movs r0, #1
	bl sub_800EB08
_080001B2:
	adds r0, r7, #4
	ldr r1, _080001DC
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #4
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _080001E4
	ldr r0, [r7]
	cmp r0, #0
	bne _080001E4
	bl testprogramMain
_080001DA:
	b _080001E2
	.align 2, 0
_080001DC: .4byte 0x04000130
	.byte 0x00, 0xE0
_080001E2:
	b _080001DA
_080001E4:
	ldr r0, _080001F0
	ldr r1, [r0]
	adds r0, r1, #0
	bl testmain
_080001EE:
	b _080001F6
	.align 2, 0
_080001F0: .4byte gUnknown_03002BB0
	.byte 0x00, 0xE0
_080001F6:
	b _080001EE
	.byte 0x02, 0xB0, 0x80, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8000200
sub_8000200: @ 0x08000200
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	ldr r0, _08000218
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
_0800020E:
	ldr r0, [r7, #0x10]
	cmp r0, #0xa
	ble _0800021C
	b _08000244
	.align 2, 0
_08000218: .4byte 0x0E001004
_0800021C:
	adds r0, r7, #0
	ldr r1, [r7, #0x10]
	adds r2, r0, r1
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldrb r3, [r2]
	movs r4, #0
	ands r3, r4
	adds r4, r3, #0
	ldrb r3, [r1]
	orrs r4, r3
	adds r3, r4, #0
	strb r3, [r2]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800020E
_08000244:
	adds r0, r7, #0
	ldrb r1, [r0, #0xb]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08000260
	adds r1, r7, #0
	bl strcmp
	cmp r0, #0
	bne _08000266
	movs r0, #1
	b _08000282
	.align 2, 0
_08000260: .4byte gUnknown_0801809C
	.byte 0x0D, 0xE0
_08000266:
	ldr r0, _08000278
	adds r1, r7, #0
	bl strcmp
	cmp r0, #0
	bne _0800027E
	movs r0, #2
	b _08000282
	.align 2, 0
_08000278: .4byte gUnknown_080180A8
	.byte 0x01, 0xE0
_0800027E:
	movs r0, #0
	b _08000282
_08000282:
	add sp, #0x14
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800028C
sub_800028C: @ 0x0800028C
	push {r7, lr}
	sub sp, #0x44
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _080002BC
	movs r1, #8
	strh r1, [r0]
	ldr r1, _080002C0
	adds r0, r1, #0
	bl DrawHeading
	bl sub_800D9D8
_080002B0:
	ldr r0, _080002C4
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _080002C8
	b _08000360
	.align 2, 0
_080002BC: .4byte 0x04000004
_080002C0: .4byte gUnknown_080180BC
_080002C4: .4byte gUnknown_03000460
_080002C8:
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	bl sub_800D8B0
	ldr r0, _08000314
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08000324
	ldr r0, _08000318
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000318
	movs r1, #8
	str r1, [r0, #4]
	ldr r2, _0800031C
	movs r0, #0
	movs r1, #1
	bl DrawString
	ldr r0, _08000318
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000318
	movs r1, #0xa
	str r1, [r0, #4]
	ldr r2, _08000320
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08000350
	.align 2, 0
_08000314: .4byte gUnknown_0300045C
_08000318: .4byte gUnknown_03001B40
_0800031C: .4byte gUnknown_080180D0
_08000320: .4byte gUnknown_080180E4
_08000324:
	ldr r0, _08000354
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000354
	movs r1, #8
	str r1, [r0, #4]
	ldr r2, _08000358
	movs r0, #0
	movs r1, #1
	bl DrawString
	ldr r0, _08000354
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000354
	movs r1, #0xa
	str r1, [r0, #4]
	ldr r2, _0800035C
	movs r0, #0
	movs r1, #1
	bl DrawString
_08000350:
	b _080002B0
	.align 2, 0
_08000354: .4byte gUnknown_03001B40
_08000358: .4byte gUnknown_080180F8
_0800035C: .4byte gUnknown_0801810C
_08000360:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x44
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START testprogramMain
testprogramMain: @ 0x08000370
	push {r7, lr}
	sub sp, #0x44
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _0800039C
	movs r1, #8
	strh r1, [r0]
	ldr r0, _080003A0
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _080003A8
	ldr r1, _080003A4
	adds r0, r1, #0
	bl DrawHeading
	b _080003B0
	.align 2, 0
_0800039C: .4byte 0x04000004
_080003A0: .4byte gUnknown_03002BB0
_080003A4: .4byte gUnknown_08018264
_080003A8:
	ldr r1, _080003D0
	adds r0, r1, #0
	bl DrawHeading
_080003B0:
	ldr r1, _080003D4
	adds r0, r1, #0
	movs r1, #0
	bl sub_8000FF0
	ldr r0, _080003D8
	ldr r1, [r0]
	adds r0, r1, #0
	bl testmain
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
_080003CC:
	b _080003DE
	.align 2, 0
_080003D0: .4byte gUnknown_08018278
_080003D4: .4byte gUnknown_08018140
_080003D8: .4byte gUnknown_03002BB0
	.byte 0x00, 0xE0
_080003DE:
	b _080003CC
	.byte 0x11, 0xB0, 0x80, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_80003E8
sub_80003E8: @ 0x080003E8
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _0800042C
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #3
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0
	str r1, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x44
	adds r1, r7, #0
	adds r1, #0x64
	bl sub_8003DF4
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x84
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800042C: .4byte 0x04000004

	THUMB_FUNC_START sub_8000430
sub_8000430: @ 0x08000430
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _08000474
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #4
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0
	str r1, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x44
	adds r1, r7, #0
	adds r1, #0x64
	bl sub_8003DF4
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x84
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000474: .4byte 0x04000004

	THUMB_FUNC_START agingMain
agingMain: @ 0x08000478
	push {r7, lr}
	sub sp, #0x88
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _080004A4
	movs r1, #8
	strh r1, [r0]
	ldr r0, _080004A8
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _080004B0
	ldr r1, _080004AC
	adds r0, r1, #0
	bl DrawHeading
	b _080004B8
	.align 2, 0
_080004A4: .4byte 0x04000004
_080004A8: .4byte gUnknown_03002BB0
_080004AC: .4byte gUnknown_0801829C
_080004B0:
	ldr r1, _08000534
	adds r0, r1, #0
	bl DrawHeading
_080004B8:
	bl LetAllTestsRunOnce
	movs r0, #5
	movs r1, #0
	bl SkipSpecificTestInClass
	movs r0, #4
	bl SkipAllTestsInThisClass
	bl RunAllTestClasses
	cmp r0, #0
	beq _080004D6
	bl sub_800060C
_080004D6:
	bl sub_8000684
	movs r0, #0
	bl SetIME
	ldr r1, _08000538
	movs r0, #1
	bl sub_800D68C
	movs r0, #1
	bl SetIME
	ldr r0, _0800053C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000540
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000544
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000544
	movs r1, #0x84
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _08000540
	ldr r1, _08000548
	str r1, [r0]
	ldr r0, _0800053C
	ldr r1, _0800054C
	str r1, [r0]
	bl LetAllTestsRunOnce
	movs r0, #2
	bl SkipAllTestsInThisClass
	movs r0, #4
	bl SkipAllTestsInThisClass
	movs r0, #5
	bl SkipAllTestsInThisClass
	movs r0, #6
	movs r1, #3
	bl SkipSpecificTestInClass
_08000532:
	b _08000552
	.align 2, 0
_08000534: .4byte gUnknown_080182B0
_08000538: .4byte sub_8008118+1
_0800053C: .4byte 0x04000104
_08000540: .4byte 0x04000108
_08000544: .4byte 0x0400010C
_08000548: .4byte 0x0084FFC4
_0800054C: .4byte 0x0083BFFE
	.byte 0x4C, 0xE0
_08000552:
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #0
	str r1, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r1, #0x68
	bl sub_8003DF4
	ldr r0, _08000580
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _08000588
	ldr r1, _08000584
	adds r0, r1, #0
	bl DrawHeading
	b _08000590
	.align 2, 0
_08000580: .4byte gUnknown_03002BB0
_08000584: .4byte gUnknown_0801829C
_08000588:
	ldr r1, _0800059C
	adds r0, r1, #0
	bl DrawHeading
_08000590:
	bl RunAllTestClasses
	cmp r0, #0
	beq _080005A0
	b _080005EC
	.align 2, 0
_0800059C: .4byte gUnknown_080182B0
_080005A0:
	movs r0, #0
	str r0, [r7, #0x44]
_080005A4:
	ldr r0, [r7, #0x44]
	cmp r0, #0x77
	ble _080005AC
	b _080005BA
_080005AC:
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #0x44]
	adds r1, r0, #1
	str r1, [r7, #0x44]
	b _080005A4
_080005BA:
	ldr r0, _080005E0
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _080005DE
	ldr r0, _080005E4
	ldr r1, [r0]
	cmp r1, #0
	beq _080005DE
	ldr r0, _080005E8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	ldr r1, _080005E0
	ldr r2, [r1, #8]
	cmp r0, r2
	blt _080005DE
	bl sub_8000728
_080005DE:
	b _08000532
	.align 2, 0
_080005E0: .4byte gUnknown_03002BB0
_080005E4: .4byte gUnknown_03000000
_080005E8: .4byte 0x0400010C
_080005EC:
	ldr r0, _08000608
	movs r1, #0
	str r1, [r0]
	bl sub_800060C
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x88
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000608: .4byte 0x04000104

	THUMB_FUNC_START sub_800060C
sub_800060C: @ 0x0800060C
	push {r7, lr}
	mov r7, sp
	bl m4aSoundInit
	movs r0, #0xb
	bl m4aSongNumStart
_0800061A:
	b _0800061E
	.byte 0x2A, 0xE0
_0800061E:
	movs r0, #1
	bl sub_800D640
	bl SoundVSync_rev01
	bl m4aSoundMain
	bl sub_800DFB0
	ldr r0, _08000658
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000658
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r0, _0800065C
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08000664
	ldr r2, _08000660
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _0800066E
	.align 2, 0
_08000658: .4byte gUnknown_03001B40
_0800065C: .4byte gUnknown_0300045C
_08000660: .4byte gUnknown_080182D8
_08000664:
	ldr r2, _08000670
	movs r0, #0
	movs r1, #1
	bl DrawString
_0800066E:
	b _0800061A
	.align 2, 0
_08000670: .4byte gUnknown_080182E8
	.byte 0x0F, 0xF0, 0xC0, 0xFD, 0x10, 0xF0, 0x26, 0xF8, 0x80, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8000684
sub_8000684: @ 0x08000684
	push {r7, lr}
	mov r7, sp
	bl m4aSoundInit
	movs r0, #1
	bl sub_800D640
	bl SoundVSync_rev01
	bl m4aSoundMain
	movs r0, #7
	bl m4aSongNumStart
	bl sub_800D9D8
_080006A4:
	ldr r0, _080006BC
	ldrh r1, [r0, #2]
	movs r2, #8
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080006C0
	b _08000718
	.align 2, 0
_080006BC: .4byte gUnknown_03000460
_080006C0:
	movs r0, #1
	bl sub_800D640
	bl SoundVSync_rev01
	bl m4aSoundMain
	bl sub_800DFB0
	bl sub_800D8B0
	ldr r0, _080006FC
	movs r1, #5
	str r1, [r0]
	ldr r0, _080006FC
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r0, _08000700
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08000708
	ldr r2, _08000704
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08000712
	.align 2, 0
_080006FC: .4byte gUnknown_03001B40
_08000700: .4byte gUnknown_0300045C
_08000704: .4byte gUnknown_08018308
_08000708:
	ldr r2, _08000714
	movs r0, #0
	movs r1, #1
	bl DrawString
_08000712:
	b _080006A4
	.align 2, 0
_08000714: .4byte gUnknown_0801831C
_08000718:
	bl m4aMPlayAllStop
	bl SoundVSyncOff_rev01
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8000728
sub_8000728: @ 0x08000728
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
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
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _0800078C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800078C
	ldr r2, _08000790
	adds r1, r2, #0
	strh r1, [r0]
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	ldr r0, _0800078C
	adds r1, r7, #0
	adds r1, #0x44
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08000794
	movs r1, #0
	str r1, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x48
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800078C: .4byte 0x04000132
_08000790: .4byte 0x0000C008
_08000794: .4byte gUnknown_03000000

	THUMB_FUNC_START selftestMain
selftestMain: @ 0x08000798
	push {r7, lr}
	sub sp, #0x88
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _080007D8
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #5
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r1, #0x68
	bl sub_8003DF4
	ldr r0, _080007DC
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _080007E4
	ldr r1, _080007E0
	adds r0, r1, #0
	bl DrawHeading
	b _080007EC
	.align 2, 0
_080007D8: .4byte 0x04000004
_080007DC: .4byte gUnknown_03002BB0
_080007E0: .4byte gUnknown_08018348
_080007E4:
	ldr r1, _08000818
	adds r0, r1, #0
	bl DrawHeading
_080007EC:
	bl LetAllTestsRunOnce
	movs r0, #5
	movs r1, #1
	bl SkipSpecificTestInClass
	bl RunAllTestClasses
	str r0, [r7, #0x44]
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	bl DrawFinalTestResult
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x88
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000818: .4byte gUnknown_08018360

	THUMB_FUNC_START DrawFinalTestResult
DrawFinalTestResult: @ 0x0800081C
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800085C
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r7, #4]
	str r2, [r7, #8]
	bl m4aSoundInit
	ldr r0, [r7]
	cmp r0, #0
	bne _0800086C
	movs r0, #7
	bl m4aSongNumStart
	ldr r0, _08000860
	adds r1, r0, #0
	ldr r1, _08000864
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08000868
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	b _0800088C
	.align 2, 0
_0800085C: .4byte gUnknown_080183A4
_08000860: .4byte gUnknown_03001B40
_08000864: .4byte 0x00001008
_08000868: .4byte 0x0000205F
_0800086C:
	movs r0, #0xb
	bl m4aSongNumStart
	ldr r0, _080008D0
	adds r1, r0, #0
	ldr r1, _080008D4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _080008D8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800088C:
	ldr r0, _080008D0
	movs r1, #2
	str r1, [r0]
	ldr r0, _080008D0
	movs r1, #0xf
	str r1, [r0, #4]
	ldr r2, _080008DC
	movs r0, #0
	movs r1, #3
	bl DrawString
	ldr r0, _080008D0
	movs r1, #2
	str r1, [r0]
	ldr r0, _080008D0
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r2, _080008DC
	movs r0, #0
	movs r1, #3
	bl DrawString
	ldr r0, _080008D0
	movs r1, #2
	str r1, [r0]
	ldr r0, _080008D0
	movs r1, #0x11
	str r1, [r0, #4]
	ldr r2, _080008DC
	movs r0, #0
	movs r1, #3
	bl DrawString
_080008CE:
	b _080008E2
	.align 2, 0
_080008D0: .4byte gUnknown_03001B40
_080008D4: .4byte 0x00001008
_080008D8: .4byte 0x0000105F
_080008DC: .4byte gUnknown_080183AC
	.byte 0x34, 0xE0
_080008E2:
	movs r0, #1
	bl sub_800D640
	bl SoundVSync_rev01
	bl m4aSoundMain
	bl sub_800DFB0
	ldr r0, _08000918
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800092C
	ldr r0, _0800091C
	movs r1, #9
	str r1, [r0]
	ldr r0, _0800091C
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #0
	bne _08000920
	ldr r2, [r7, #4]
	b _08000922
	.align 2, 0
_08000918: .4byte gUnknown_0300045C
_0800091C: .4byte gUnknown_03001B40
_08000920:
	ldr r2, [r7, #8]
_08000922:
	movs r0, #0
	movs r1, #3
	bl DrawString
	b _08000942
_0800092C:
	ldr r0, _08000944
	movs r1, #9
	str r1, [r0]
	ldr r0, _08000944
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r2, _08000948
	movs r0, #0
	movs r1, #3
	bl DrawString
_08000942:
	b _080008CE
	.align 2, 0
_08000944: .4byte gUnknown_03001B40
_08000948: .4byte gUnknown_080183C8
	.byte 0x0F, 0xF0, 0x54, 0xFC
	.byte 0x0F, 0xF0, 0xBA, 0xFE, 0x03, 0xB0, 0x80, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_800095C
sub_800095C: @ 0x0800095C
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r1, _0800099C
	movs r0, #1
	bl sub_800D68C
	ldr r0, _080009A0
	movs r1, #8
	strh r1, [r0]
	movs r0, #1
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, _080009A4
	adds r0, r1, #0
	bl DrawHeading
	ldr r0, _080009A8
	ldr r1, [r0, #4]
	adds r0, r1, #0
	bl sub_800C0D4
_0800099A:
	b _080009AE
	.align 2, 0
_0800099C: .4byte sub_80009F4+1
_080009A0: .4byte 0x04000004
_080009A4: .4byte gUnknown_080183EC
_080009A8: .4byte gUnknown_03002BB0
	.byte 0x1A, 0xE0
_080009AE:
	movs r0, #1
	bl sub_800D640
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _080009DC
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _080009E0
	ldr r0, [r1, #4]
	adds r1, r7, #0
	adds r1, #0x44
	ldrh r2, [r1]
	adds r1, r2, #0
	bl sub_800C2C8
	b _0800099A
	.align 2, 0
_080009DC: .4byte 0x04000130
_080009E0: .4byte gUnknown_03002BB0
	.byte 0x39, 0x1C, 0x08, 0x1C, 0x0C, 0xF0, 0x34, 0xFF, 0x12, 0xB0, 0x80, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_80009F4
sub_80009F4: @ 0x080009F4
	push {r7, lr}
	mov r7, sp
	bl sub_800DFB0
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START DrawHeading
DrawHeading: @ 0x08000A04
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
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
	bl sub_800DA4C
	movs r0, #1
	bl sub_800E710
	movs r0, #2
	bl sub_800E9C0
	bl sub_800EA20
	ldr r0, _08000AB8
	adds r1, r0, #0
	ldr r1, _08000ABC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08000AC0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r2, _08000AC4
	movs r0, #0
	movs r1, #3
	bl DrawString
	ldr r0, _08000AB8
	movs r1, #1
	str r1, [r0]
	ldr r0, _08000AB8
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0
	movs r1, #3
	ldr r2, [r7]
	bl DrawString
	ldr r0, _08000AB8
	adds r1, r0, #0
	ldr r2, _08000ABC
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _08000AB8
	adds r0, r1, #0
	ldr r3, _08000AC8
	adds r1, r1, r3
	ldr r2, _08000ACC
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r4}
	stm r0!, {r2, r4}
	bl sub_800DFB0
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _08000AD0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000AB8: .4byte gUnknown_03001B40
_08000ABC: .4byte 0x00001008
_08000AC0: .4byte 0x0000405F
_08000AC4: .4byte gUnknown_0801841C
_08000AC8: .4byte 0x0000100C
_08000ACC: .4byte gUnknown_08018408
_08000AD0: .4byte 0x0000FF7F

	THUMB_FUNC_START RunAllTestClasses
RunAllTestClasses: @ 0x08000AD4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0xc]
	bl ClearAllTestClassesResults
	bl DrawTestResults
	movs r0, #0
	str r0, [r7]
_08000AEA:
	ldr r0, [r7]
	cmp r0, #6
	bls _08000AF2
	b _08000B4C
_08000AF2:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	str r0, [r7, #4]
_08000AFA:
	ldr r0, _08000B14
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000B18
	b _08000B32
	.align 2, 0
_08000B14: .4byte gUnknown_030002FC
_08000B18:
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl StartTest
	ldr r1, [r7, #8]
	orrs r0, r1
	str r0, [r7, #8]
	bl DrawTestResults
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000AFA
_08000B32:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08000B44
	movs r0, #1
	ldr r1, [r7]
	lsls r0, r1
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
_08000B44:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08000AEA
_08000B4C:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _08000B52
_08000B52:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START LetAllTestsRunOnce
LetAllTestsRunOnce: @ 0x08000B5C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_08000B66:
	ldr r0, [r7]
	cmp r0, #6
	bls _08000B6E
	b _08000BC4
_08000B6E:
	movs r0, #0
	str r0, [r7, #4]
_08000B72:
	ldr r0, _08000B8C
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000B90
	b _08000BBC
	.align 2, 0
_08000B8C: .4byte gUnknown_030002FC
_08000B90:
	ldr r0, _08000BB8
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #1
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000B72
	.align 2, 0
_08000BB8: .4byte gUnknown_030002FC
_08000BBC:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08000B66
_08000BC4:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START SkipSpecificTestInClass
SkipSpecificTestInClass: @ 0x08000BCC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _08000C00
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000C00: .4byte gUnknown_030002FC

	THUMB_FUNC_START SkipAllTestsInThisClass
SkipAllTestsInThisClass: @ 0x08000C04
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
_08000C10:
	ldr r0, _08000C2C
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000C30
	b _08000C5C
	.align 2, 0
_08000C2C: .4byte gUnknown_030002FC
_08000C30:
	ldr r0, _08000C58
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000C10
	.align 2, 0
_08000C58: .4byte gUnknown_030002FC
_08000C5C:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START ClearAllTestClassesResults
ClearAllTestClassesResults: @ 0x08000C64
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_08000C6E:
	ldr r0, [r7]
	cmp r0, #6
	bls _08000C76
	b _08000CEC
_08000C76:
	movs r0, #0
	str r0, [r7, #4]
_08000C7A:
	ldr r0, _08000C94
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000C98
	b _08000CE4
	.align 2, 0
_08000C94: .4byte gUnknown_030002FC
_08000C98:
	ldr r0, _08000CE0
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, _08000CE0
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0, #8]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000C7A
	.align 2, 0
_08000CE0: .4byte gUnknown_030002FC
_08000CE4:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08000C6E
_08000CEC:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START DrawTestResults
DrawTestResults: @ 0x08000CF4
	push {r4, r5, r7, lr}
	sub sp, #0xac
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _08000D54
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	adds r0, r7, #0
	adds r0, #0x14
	ldr r2, _08000D58
	adds r1, r2, #0
	ldr r4, _08000D5C
	adds r2, r2, r4
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r1, _08000D58
	adds r0, r1, #0
	ldr r4, _08000D5C
	adds r1, r1, r4
	adds r2, r7, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, _08000D60
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _08000D58
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000D58
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0
	str r0, [r7, #0x28]
_08000D4C:
	ldr r0, [r7, #0x28]
	cmp r0, #6
	bls _08000D64
	b _08000DE0
	.align 2, 0
_08000D54: .4byte gUnknown_08018718
_08000D58: .4byte gUnknown_03001B40
_08000D5C: .4byte 0x0000100C
_08000D60: .4byte gUnknown_0801872C
_08000D64:
	ldr r2, _08000DD0
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08000DD4
	movs r1, #0
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x2c
	ldr r1, _08000DD8
	ldr r2, _08000DDC
	ldr r3, [r7, #0x28]
	adds r5, r3, #0
	lsls r4, r5, #1
	adds r4, r4, r3
	lsls r3, r4, #2
	adds r2, #8
	adds r3, r2, r3
	ldr r2, [r3]
	bl sprintf
	adds r2, r7, #0
	adds r2, #0x2c
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08000DD4
	movs r1, #0xc
	str r1, [r0]
	ldr r0, _08000DDC
	ldr r1, [r7, #0x28]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r2, r0, r1
	ldr r0, [r2]
	ldr r1, _08000DDC
	ldr r2, [r7, #0x28]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	bl sub_8000E14
	ldr r0, [r7, #0x28]
	adds r1, r0, #1
	str r1, [r7, #0x28]
	b _08000D4C
	.align 2, 0
_08000DD0: .4byte gUnknown_08018730
_08000DD4: .4byte gUnknown_03001B40
_08000DD8: .4byte gUnknown_08018740
_08000DDC: .4byte gUnknown_030002FC
_08000DE0:
	ldr r1, _08000E0C
	adds r0, r1, #0
	ldr r4, _08000E10
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x14
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	add sp, #0xac
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000E0C: .4byte gUnknown_03001B40
_08000E10: .4byte 0x0000100C

	THUMB_FUNC_START sub_8000E14
sub_8000E14: @ 0x08000E14
	push {r7, lr}
	sub sp, #0x1c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
	ldr r0, _08000E40
	ldr r1, [r0]
	str r1, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x14]
_08000E34:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #4]
	cmp r0, r1
	blt _08000E44
	b _08000EE0
	.align 2, 0
_08000E40: .4byte gUnknown_03001B40
_08000E44:
	ldr r0, [r7, #0x14]
	adds r2, r0, #0
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _08000E68
	ldr r2, _08000E64
	movs r0, #0
	movs r1, #4
	bl DrawString
	b _08000ED2
	.align 2, 0
_08000E64: .4byte gUnknown_0801875C
_08000E68:
	ldr r0, [r7, #0x14]
	adds r2, r0, #0
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _08000E94
	ldr r2, _08000E90
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #8]
	b _08000ECA
	.align 2, 0
_08000E90: .4byte gUnknown_08018760
_08000E94:
	ldr r0, [r7, #0x14]
	adds r2, r0, #0
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _08000EB8
	ldr r2, _08000EB4
	movs r0, #0
	movs r1, #2
	bl DrawString
	b _08000ECA
	.align 2, 0
_08000EB4: .4byte gUnknown_08018764
_08000EB8:
	ldr r2, _08000EDC
	movs r0, #0
	movs r1, #1
	bl DrawString
	ldr r0, [r7, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
_08000ECA:
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
_08000ED2:
	ldr r0, [r7, #0x14]
	adds r1, r0, #1
	str r1, [r7, #0x14]
	b _08000E34
	.align 2, 0
_08000EDC: .4byte gUnknown_08018768
_08000EE0:
	ldr r0, _08000F14
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	adds r2, #9
	str r2, [r0]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _08000F2A
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _08000F2A
	ldr r2, _08000F18
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _08000F20
	ldr r2, _08000F1C
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08000F2A
	.align 2, 0
_08000F14: .4byte gUnknown_03001B40
_08000F18: .4byte gUnknown_0801876C
_08000F1C: .4byte gUnknown_08018770
_08000F20:
	ldr r2, _08000F3C
	movs r0, #0
	movs r1, #2
	bl DrawString
_08000F2A:
	ldr r2, _08000F40
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x1c
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F3C: .4byte gUnknown_08018778
_08000F40: .4byte gUnknown_08018780

	THUMB_FUNC_START StartTest
StartTest: @ 0x08000F44
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _08000F74
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #0
	bne _08000F78
	movs r0, #0
	b _08000FE8
	.align 2, 0
_08000F74: .4byte gUnknown_030002FC
_08000F78:
	ldr r0, _08000FE4
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r4, [r0, #0xc]
	bl _call_via_r4
	str r0, [r7, #8]
	ldr r0, _08000FE4
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r7, #8]
	str r1, [r0, #8]
	ldr r0, _08000FE4
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #1
	str r1, [r0, #4]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _08000FE8
	.align 2, 0
_08000FE4: .4byte gUnknown_030002FC
_08000FE8:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8000FF0
sub_8000FF0: @ 0x08000FF0
	push {r4, r7, lr}
	sub sp, #0x7c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _08001038
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x4c
	ldr r1, [r7]
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x4c
	ldr r1, [r7, #4]
	str r1, [r0, #4]
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	str r1, [r0, #8]
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r1, #0
	bl sub_80011C4
	bl sub_800D9D8
_08001034:
	b _0800103E
	.align 2, 0
_08001038: .4byte 0x04000004
	.byte 0xB9, 0xE0
_0800103E:
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r1, #0
	bl sub_80012A4
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	bl sub_800D8B0
	ldr r0, _0800106C
	ldrh r1, [r0, #2]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08001070
	b _080011B2
	.align 2, 0
_0800106C: .4byte gUnknown_03000460
_08001070:
	ldr r0, _080010A0
	ldrh r1, [r0, #2]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080010B6
	adds r0, r7, #0
	adds r0, #0x4c
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _080010A4
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #0xc]
	subs r1, r2, #1
	str r1, [r0, #8]
	b _080010B6
	.align 2, 0
_080010A0: .4byte gUnknown_03000460
_080010A4:
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #8]
	subs r1, r2, #1
	str r1, [r0, #8]
_080010B6:
	ldr r0, _080010E8
	ldrh r1, [r0, #2]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080010FE
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #0xc]
	subs r1, r2, #1
	ldr r0, [r0, #8]
	cmp r0, r1
	bne _080010EC
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	str r1, [r0, #8]
	b _080010FE
	.align 2, 0
_080010E8: .4byte gUnknown_03000460
_080010EC:
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #8]
	adds r1, r2, #1
	str r1, [r0, #8]
_080010FE:
	ldr r0, _08001140
	ldrh r1, [r0, #2]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080011B0
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #8]
	adds r1, r2, #0
	lsls r2, r1, #2
	adds r0, #0x10
	adds r1, r0, r2
	ldr r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, [r7]
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _08001144
	cmp r0, #1
	beq _08001162
	b _080011B0
	.align 2, 0
_08001140: .4byte gUnknown_03000460
_08001144:
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #8]
	adds r1, r2, #0
	lsls r2, r1, #2
	adds r0, #0x10
	adds r1, r0, r2
	ldr r2, [r1]
	ldr r0, [r7]
	adds r1, r2, #0
	bl sub_8000FF0
	b _080011B0
_08001162:
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #8]
	adds r1, r2, #0
	lsls r2, r1, #2
	adds r0, #0x10
	adds r1, r0, r2
	ldr r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _080011AE
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, [r1, #8]
	adds r1, r2, #0
	lsls r2, r1, #2
	adds r0, #0x10
	adds r1, r0, r2
	ldr r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r4, [r0, #8]
	bl _call_via_r4
_080011AE:
	b _080011B0
_080011B0:
	b _08001034
_080011B2:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x7c
	pop {r4, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80011C4
sub_80011C4: @ 0x080011C4
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	movs r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r7]
	ldr r1, [r0, #4]
	adds r0, r1, #1
	str r0, [r7, #4]
_080011DA:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #2
	bne _080011F2
	b _08001236
_080011F2:
	ldr r2, [r7]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #2
	adds r2, #0x10
	adds r3, r2, r4
	ldr r2, [r7, #4]
	str r2, [r3]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #0
	bne _0800122E
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_8001240
	str r0, [r7, #4]
	b _08001234
_0800122E:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
_08001234:
	b _080011DA
_08001236:
	add sp, #8
	pop {r4, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001240
sub_8001240: @ 0x08001240
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
_08001250:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #2
	bne _08001268
	b _08001292
_08001268:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #0
	bne _0800128A
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_8001240
	str r0, [r7, #4]
	b _08001290
_0800128A:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
_08001290:
	b _08001250
_08001292:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	adds r0, r1, #0
	b _0800129A
_0800129A:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80012A4
sub_80012A4: @ 0x080012A4
	push {r4, r7, lr}
	sub sp, #0x30
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _08001348
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	adds r0, r7, #0
	adds r0, #0x18
	ldr r2, _0800134C
	adds r1, r2, #0
	ldr r4, _08001350
	adds r2, r2, r4
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r1, _0800134C
	adds r0, r1, #0
	ldr r4, _08001350
	adds r1, r1, r4
	adds r2, r7, #4
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, _08001354
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _0800134C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800134C
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r2, [r0, #4]
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _0800134C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800134C
	movs r1, #1
	str r1, [r0, #4]
	movs r0, #0
	str r0, [r7, #0x2c]
_08001326:
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0, #4]
	adds r0, r1, #0
	bl strlen
	ldr r1, [r7, #0x2c]
	cmp r1, r0
	blo _08001358
	b _08001370
	.align 2, 0
_08001348: .4byte gUnknown_080187B0
_0800134C: .4byte gUnknown_03001B40
_08001350: .4byte 0x0000100C
_08001354: .4byte gUnknown_080187C4
_08001358:
	ldr r2, _0800136C
	movs r0, #2
	movs r1, #0
	bl DrawString
	ldr r0, [r7, #0x2c]
	adds r1, r0, #1
	str r1, [r7, #0x2c]
	b _08001326
	.align 2, 0
_0800136C: .4byte gUnknown_080187C8
_08001370:
	movs r0, #0
	str r0, [r7, #0x2c]
_08001374:
	ldr r0, [r7]
	ldr r1, [r7, #0x2c]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	blt _08001380
	b _080013F4
_08001380:
	ldr r0, _080013EC
	movs r1, #2
	str r1, [r0]
	ldr r0, _080013EC
	ldr r1, [r7, #0x2c]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r2, r1, #2
	str r2, [r0, #4]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7, #0x2c]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, #0x10
	adds r2, r1, r2
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r2, [r0, #4]
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7, #0x2c]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, #0x10
	adds r2, r1, r2
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #0
	bne _080013E4
	ldr r2, _080013F0
	movs r0, #1
	movs r1, #5
	bl DrawString
_080013E4:
	ldr r0, [r7, #0x2c]
	adds r1, r0, #1
	str r1, [r7, #0x2c]
	b _08001374
	.align 2, 0
_080013EC: .4byte gUnknown_03001B40
_080013F0: .4byte gUnknown_080187CC
_080013F4:
	ldr r0, _08001434
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001434
	ldr r1, [r7]
	ldr r2, [r1, #8]
	adds r1, r2, #0
	lsls r2, r1, #1
	adds r1, r2, #2
	str r1, [r0, #4]
	ldr r2, _08001438
	movs r0, #1
	movs r1, #1
	bl DrawString
	ldr r1, _08001434
	adds r0, r1, #0
	ldr r4, _0800143C
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x18
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	add sp, #0x30
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001434: .4byte gUnknown_03001B40
_08001438: .4byte gUnknown_080187D0
_0800143C: .4byte 0x0000100C

	THUMB_FUNC_START testmain
testmain: @ 0x08001440
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	cmp r0, #6
	bhi _080014A6
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, _0800145C
	adds r0, r0, r1
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_0800145C: .4byte _08001460
_08001460: @ jump table
	.4byte _08001482 @ case 0
	.4byte _0800147C @ case 1
	.4byte _08001488 @ case 2
	.4byte _0800148E @ case 3
	.4byte _08001494 @ case 4
	.4byte _0800149A @ case 5
	.4byte _080014A0 @ case 6
_0800147C:
	bl testprogramMain
	b _080014A6
_08001482:
	bl sub_8001AFC
	b _080014A6
_08001488:
	bl sub_80003E8
	b _080014A6
_0800148E:
	bl sub_8000430
	b _080014A6
_08001494:
	bl agingMain
	b _080014A6
_0800149A:
	bl selftestMain
	b _080014A6
_080014A0:
	bl sub_800095C
	b _080014A6
_080014A6:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

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
	bl sub_800D790
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
	bl sub_800D9D8
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
	bl sub_800D640
	bl sub_800DFB0
	bl sub_800D8B0
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
	bl sub_800EC50
	cmp r0, #1
	bne _08001852
	bl sub_800D9D8
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
	bl sub_800D640
	bl sub_800DFB0
	bl sub_800D8B0
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
	bl sub_800EFA0
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
	bl sub_800D854
	ldr r3, _08001884
	add sp, r3
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800187C: .4byte gUnknown_03001B40
_08001880: .4byte 0x00001064
_08001884: .4byte 0x000010C8

	THUMB_FUNC_START sub_8001888
sub_8001888: @ 0x08001888
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _08001924
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	adds r2, r7, #0
	adds r2, #0x18
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, _08001928
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r2, [r1]
	str r2, [r0]
	adds r0, r7, #0
	adds r0, #0x34
	ldr r0, _0800192C
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3c
	ldr r2, _08001930
	adds r1, r2, #0
	ldr r4, _08001934
	adds r2, r2, r4
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r1, _08001930
	adds r0, r1, #0
	ldr r4, _08001934
	adds r1, r1, r4
	adds r2, r7, #4
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, _08001938
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _08001930
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001930
	movs r1, #0
	str r1, [r0, #4]
	ldr r2, _0800193C
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08001930
	movs r1, #1
	str r1, [r0]
	ldr r0, _08001930
	movs r1, #1
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #0
	bne _08001944
	ldr r2, _08001940
	b _08001946
	.align 2, 0
_08001924: .4byte gUnknown_0801885C
_08001928: .4byte gUnknown_080188DC
_0800192C: .4byte gUnknown_08018900
_08001930: .4byte gUnknown_03001B40
_08001934: .4byte 0x0000100C
_08001938: .4byte gUnknown_08018800
_0800193C: .4byte gUnknown_08018908
_08001940: .4byte gUnknown_08018914
_08001944:
	ldr r2, _08001970
_08001946:
	movs r0, #1
	movs r1, #5
	bl DrawString
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, _08001974
	ldr r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #2
	adds r0, r0, r2
	ldr r2, [r0]
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7]
	cmp r0, #0
	bne _0800197C
	ldr r2, _08001978
	b _0800197E
	.align 2, 0
_08001970: .4byte gUnknown_08018918
_08001974: .4byte gUnknown_03002BB0
_08001978: .4byte gUnknown_0801891C
_0800197C:
	ldr r2, _080019B4
_0800197E:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _080019B8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080019B8
	movs r1, #3
	str r1, [r0, #4]
	ldr r2, _080019BC
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _080019B8
	movs r1, #1
	str r1, [r0]
	ldr r0, _080019B8
	movs r1, #4
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #1
	bne _080019C4
	ldr r2, _080019C0
	b _080019C6
	.align 2, 0
_080019B4: .4byte gUnknown_08018918
_080019B8: .4byte gUnknown_03001B40
_080019BC: .4byte gUnknown_08018920
_080019C0: .4byte gUnknown_08018914
_080019C4:
	ldr r2, _080019F0
_080019C6:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _080019F4
	ldr r1, [r0, #4]
	adds r0, r1, #0
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r0, r1
	ldr r2, [r1]
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7]
	cmp r0, #1
	bne _080019FC
	ldr r2, _080019F8
	b _080019FE
	.align 2, 0
_080019F0: .4byte gUnknown_08018918
_080019F4: .4byte gUnknown_03002BB0
_080019F8: .4byte gUnknown_0801891C
_080019FC:
	ldr r2, _08001A34
_080019FE:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _08001A38
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001A38
	movs r1, #6
	str r1, [r0, #4]
	ldr r2, _08001A3C
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08001A38
	movs r1, #1
	str r1, [r0]
	ldr r0, _08001A38
	movs r1, #7
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #2
	bne _08001A44
	ldr r2, _08001A40
	b _08001A46
	.align 2, 0
_08001A34: .4byte gUnknown_08018918
_08001A38: .4byte gUnknown_03001B40
_08001A3C: .4byte gUnknown_08018928
_08001A40: .4byte gUnknown_08018914
_08001A44:
	ldr r2, _08001A90
_08001A46:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _08001A94
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _08001A9C
	adds r4, r7, #0
	adds r4, #0x54
	ldr r5, _08001A98
	ldr r0, _08001A94
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __divsi3
	adds r6, r0, #0
	ldr r0, _08001A94
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __modsi3
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sprintf
	adds r2, r7, #0
	adds r2, #0x54
	movs r0, #0
	movs r1, #4
	bl DrawString
	b _08001AB2
	.align 2, 0
_08001A90: .4byte gUnknown_08018918
_08001A94: .4byte gUnknown_03002BB0
_08001A98: .4byte gUnknown_08018938
_08001A9C:
	adds r0, r7, #0
	adds r0, #0x54
	ldr r1, _08001ABC
	bl sprintf
	adds r2, r7, #0
	adds r2, #0x54
	movs r0, #0
	movs r1, #4
	bl DrawString
_08001AB2:
	ldr r0, [r7]
	cmp r0, #2
	bne _08001AC4
	ldr r2, _08001AC0
	b _08001AC6
	.align 2, 0
_08001ABC: .4byte gUnknown_08018948
_08001AC0: .4byte gUnknown_0801891C
_08001AC4:
	ldr r2, _08001AF0
_08001AC6:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r1, _08001AF4
	adds r0, r1, #0
	ldr r4, _08001AF8
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x3c
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	add sp, #0xd4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001AF0: .4byte gUnknown_08018918
_08001AF4: .4byte gUnknown_03001B40
_08001AF8: .4byte 0x0000100C

	THUMB_FUNC_START sub_8001AFC
sub_8001AFC: @ 0x08001AFC
	push {r4, r7, lr}
	ldr r4, _08001B3C
	add sp, r4
	mov r7, sp
	adds r0, r7, #0
	ldr r0, _08001B40
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	ldr r2, _08001B44
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _08001B48
	movs r1, #8
	strh r1, [r0]
	ldr r0, _08001B4C
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _08001B54
	ldr r1, _08001B50
	adds r0, r1, #0
	bl DrawHeading
	b _08001B5C
	.align 2, 0
_08001B3C: .4byte 0xFFFFEE04
_08001B40: .4byte 0x000010A8
_08001B44: .4byte 0x000010AC
_08001B48: .4byte 0x04000004
_08001B4C: .4byte gUnknown_03002BB0
_08001B50: .4byte gUnknown_08018FB4
_08001B54:
	ldr r1, _08001B60
	adds r0, r1, #0
	bl DrawHeading
_08001B5C:
	b _08001B66
	.align 2, 0
_08001B60: .4byte gUnknown_08018FCC
	.byte 0xBE, 0xE1
_08001B66:
	adds r1, r7, #0
	ldr r3, _08001B98
	adds r0, r7, r3
	adds r1, r7, #0
	ldr r1, _08001B9C
	adds r2, r7, r1
	ldr r1, [r2]
	str r1, [r0]
	adds r0, r7, #0
	ldr r2, _08001BA0
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	ldr r3, _08001BA4
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
_08001B8A:
	adds r0, r7, #0
	ldr r0, _08001BA4
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #7
	ble _08001BA8
	b _08001BFC
	.align 2, 0
_08001B98: .4byte 0x000010AC
_08001B9C: .4byte 0x000010A8
_08001BA0: .4byte 0x000010B0
_08001BA4: .4byte 0x000010F8
_08001BA8:
	ldr r1, _08001BF0
	adds r0, r7, r1
	adds r1, r7, #0
	ldr r3, _08001BF4
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r2, _08001BF8
	adds r1, r7, r2
	adds r2, r7, #0
	ldr r2, _08001BF4
	adds r3, r7, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	movs r2, #0
	str r2, [r1]
	movs r1, #0
	str r1, [r0]
	adds r0, r7, #0
	ldr r3, _08001BF4
	adds r1, r7, r3
	adds r2, r7, #0
	ldr r1, _08001BF4
	adds r0, r7, r1
	adds r1, r7, #0
	ldr r3, _08001BF4
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08001B8A
	.align 2, 0
_08001BF0: .4byte 0x000010B4
_08001BF4: .4byte 0x000010F8
_08001BF8: .4byte 0x000010D4
_08001BFC:
	bl sub_800ECB4
	ldr r1, _08001C50
	adds r0, r7, r1
	ldr r2, _08001C54
	adds r1, r7, r2
	bl sub_800ECD4
	adds r0, r7, #0
	ldr r3, _08001C50
	adds r1, r7, r3
	ldr r2, [r1]
	adds r0, r2, #0
	bl sub_8001EFC
	adds r1, r7, #0
	ldr r1, _08001C58
	adds r2, r7, r1
	str r0, [r2]
	adds r0, r7, #0
	ldr r2, _08001C58
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0
	bne _08001CA8
	adds r0, r7, #0
	ldr r3, _08001C50
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0
	bne _08001C64
	ldr r2, _08001C5C
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r2, _08001C60
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08001C8C
	.align 2, 0
_08001C50: .4byte 0x000010A8
_08001C54: .4byte 0x000010B4
_08001C58: .4byte 0x000010F4
_08001C5C: .4byte gUnknown_08018FE4
_08001C60: .4byte gUnknown_08018FE8
_08001C64:
	ldr r2, _08001C98
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r1, _08001C9C
	adds r0, r7, r1
	ldr r1, _08001CA0
	adds r2, r7, #0
	ldr r2, _08001CA4
	adds r3, r7, r2
	ldr r2, [r3]
	bl sprintf
	ldr r3, _08001C9C
	adds r2, r7, r3
	movs r0, #0
	movs r1, #1
	bl DrawString
_08001C8C:
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	b _08001D64
	.align 2, 0
_08001C98: .4byte gUnknown_08018FE4
_08001C9C: .4byte 0x000010FC
_08001CA0: .4byte gUnknown_08019000
_08001CA4: .4byte 0x000010A8
_08001CA8:
	ldr r0, _08001D00
	ldr r1, [r0]
	cmp r1, #0
	beq _08001D1C
	ldr r2, _08001D04
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r1, _08001D08
	adds r0, r7, r1
	ldr r1, _08001D0C
	adds r2, r7, #0
	ldr r2, _08001D10
	adds r4, r7, r2
	ldr r3, [r4]
	ldr r2, [r3, #4]
	bl sprintf
	ldr r3, _08001D08
	adds r2, r7, r3
	movs r0, #0
	movs r1, #1
	bl DrawString
	adds r0, r7, #0
	ldr r0, _08001D14
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	bl sub_8001F80
	ldr r2, _08001D18
	adds r1, r7, r2
	adds r0, r1, #0
	bl sub_8001FA8
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	b _08001D64
	.align 2, 0
_08001D00: .4byte gUnknown_03000350
_08001D04: .4byte gUnknown_08018FE4
_08001D08: .4byte 0x000010FC
_08001D0C: .4byte gUnknown_08019018
_08001D10: .4byte 0x000010F4
_08001D14: .4byte 0x000010A8
_08001D18: .4byte 0x000010B4
_08001D1C:
	adds r1, r7, #0
	ldr r3, _08001DB0
	adds r0, r7, r3
	adds r1, r7, #0
	ldr r1, _08001DB4
	adds r2, r7, r1
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	beq _08001D64
	ldr r2, _08001DB8
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r2, _08001DBC
	adds r0, r7, r2
	ldr r1, _08001DC0
	adds r2, r7, #0
	ldr r3, _08001DC4
	adds r4, r7, r3
	ldr r3, [r4]
	ldr r2, [r3, #4]
	bl sprintf
	ldr r0, _08001DBC
	adds r2, r7, r0
	movs r0, #0
	movs r1, #1
	bl DrawString
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
_08001D64:
	adds r0, r7, #0
	ldr r2, _08001DC4
	adds r1, r7, r2
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, _08001DC8
	cmp r1, r0
	bne _08001D80
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _08001DCC
	ldr r2, _08001DD0
	bl memcpy
_08001D80:
	adds r0, r7, #0
	ldr r3, _08001DC4
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0
	beq _08001DE0
	adds r0, r7, #0
	ldr r0, _08001DC4
	adds r1, r7, r0
	ldr r0, [r1]
	ldr r2, _08001DD4
	adds r1, r7, r2
	ldr r3, _08001DD8
	adds r2, r7, r3
	ldr r3, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	bl _call_via_r3
	adds r1, r7, #0
	ldr r1, _08001DDC
	adds r2, r7, r1
	str r0, [r2]
	b _08001DFA
	.align 2, 0
_08001DB0: .4byte 0x000010A8
_08001DB4: .4byte 0x000010AC
_08001DB8: .4byte gUnknown_08018FE4
_08001DBC: .4byte 0x0000117C
_08001DC0: .4byte gUnknown_08019020
_08001DC4: .4byte 0x000010F4
_08001DC8: .4byte sub_8003DF4+1
_08001DCC: .4byte gUnknown_03001B40
_08001DD0: .4byte 0x00001064
_08001DD4: .4byte 0x000010B4
_08001DD8: .4byte 0x000010D4
_08001DDC: .4byte 0x000010B0
_08001DE0:
	adds r0, r7, #0
	ldr r2, _08001E1C
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0
	bne _08001DFA
	ldr r0, _08001E20
	adds r1, r7, #0
	movs r3, #0x86
	lsls r3, r3, #5
	adds r2, r7, r3
	ldr r1, [r2]
	str r1, [r0]
_08001DFA:
	adds r0, r7, #0
	ldr r0, _08001E24
	adds r1, r7, r0
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, _08001E28
	cmp r1, r0
	bne _08001E70
	ldr r0, _08001E2C
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _08001E34
	ldr r1, _08001E30
	adds r0, r1, #0
	bl DrawHeading
	b _08001E3C
	.align 2, 0
_08001E1C: .4byte 0x000010A8
_08001E20: .4byte gUnknown_03000350
_08001E24: .4byte 0x000010F4
_08001E28: .4byte sub_8003DF4+1
_08001E2C: .4byte gUnknown_03002BB0
_08001E30: .4byte gUnknown_08018FB4
_08001E34:
	ldr r1, _08001EC0
	adds r0, r1, #0
	bl DrawHeading
_08001E3C:
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
	ldr r0, _08001EC4
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _08001EC8
	bl memcpy
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _08001ECC
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_08001E70:
	adds r0, r7, #0
	ldr r2, _08001ED0
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _08001EA6
	ldr r0, _08001ED4
	ldr r1, [r0]
	cmp r1, #0
	beq _08001EA6
	ldr r3, _08001ED8
	adds r1, r7, r3
	adds r0, r1, #0
	bl sub_8002024
	adds r0, r7, #0
	ldr r0, _08001EDC
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	bl sub_80020A0
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
_08001EA6:
	adds r0, r7, #0
	ldr r2, _08001EE0
	adds r1, r7, r2
	ldr r0, [r1]
	adds r1, r7, #0
	ldr r3, _08001EDC
	adds r2, r7, r3
	ldr r1, [r2]
	ldr r3, _08001ED8
	adds r2, r7, r3
	bl sub_800ED48
	b _08001B5C
	.align 2, 0
_08001EC0: .4byte gUnknown_08018FCC
_08001EC4: .4byte gUnknown_03001B40
_08001EC8: .4byte 0x00001064
_08001ECC: .4byte 0x0000FF7F
_08001ED0: .4byte 0x000010F4
_08001ED4: .4byte gUnknown_03000350
_08001ED8: .4byte 0x000010D4
_08001EDC: .4byte 0x000010B0
_08001EE0: .4byte 0x000010A8
	.byte 0x39, 0x1C, 0x08, 0x1C, 0x0B, 0xF0, 0xB4, 0xFC, 0x02, 0x4B, 0x9D, 0x44
	.byte 0x90, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFC, 0x11, 0x00, 0x00

	THUMB_FUNC_START sub_8001EFC
sub_8001EFC: @ 0x08001EFC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r2, [r7]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #6
	ldr r1, [r7]
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #4
	ldrh r1, [r0]
	cmp r1, #0xa
	bls _08001F22
	movs r0, #0
	b _08001F78
_08001F22:
	adds r1, r7, #6
	ldrh r0, [r1]
	ldr r1, _08001F40
	adds r2, r7, #4
	ldrh r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #3
	adds r1, #4
	adds r2, r1, r3
	ldr r1, [r2]
	cmp r0, r1
	blt _08001F44
	movs r0, #0
	b _08001F78
	.align 2, 0
_08001F40: .4byte gUnknown_08018F5C
_08001F44:
	adds r0, r7, #4
	ldrh r1, [r0]
	cmp r1, #0
	bne _08001F58
	adds r0, r7, #6
	ldrh r1, [r0]
	cmp r1, #0
	bne _08001F58
	movs r0, #0
	b _08001F78
_08001F58:
	ldr r0, _08001F74
	adds r1, r7, #4
	ldrh r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #3
	adds r0, r0, r2
	adds r1, r7, #6
	ldrh r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #3
	ldr r0, [r0]
	adds r1, r2, r0
	adds r0, r1, #0
	b _08001F78
	.align 2, 0
_08001F74: .4byte gUnknown_08018F5C
_08001F78:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8001F80
sub_8001F80: @ 0x08001F80
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _08001FA4
	ldr r2, [r7]
	bl sprintf
	adds r2, r7, #4
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x84
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001FA4: .4byte gUnknown_08019054

	THUMB_FUNC_START sub_8001FA8
sub_8001FA8: @ 0x08001FA8
	push {r4, r5, r7, lr}
	sub sp, #0x90
	add r7, sp, #8
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
_08001FB4:
	ldr r0, [r7, #4]
	cmp r0, #3
	ble _08001FBC
	b _0800200C
_08001FBC:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08002008
	ldr r2, [r7, #4]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, [r7, #4]
	adds r4, r3, #0
	lsls r3, r4, #3
	ldr r5, [r7]
	adds r4, r3, r5
	ldr r3, [r4]
	ldr r4, [r7, #4]
	adds r5, r4, #0
	lsls r4, r5, #1
	adds r5, r4, #1
	str r5, [sp]
	ldr r4, [r7, #4]
	adds r5, r4, #0
	lsls r4, r5, #3
	ldr r5, [r7]
	adds r4, r4, r5
	adds r5, r4, #4
	ldr r4, [r5]
	str r4, [sp, #4]
	bl sprintf
	adds r2, r7, #0
	adds r2, #8
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08001FB4
	.align 2, 0
_08002008: .4byte gUnknown_08019064
_0800200C:
	ldr r2, _08002020
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x90
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002020: .4byte gUnknown_08019080

	THUMB_FUNC_START sub_8002024
sub_8002024: @ 0x08002024
	push {r4, r5, r7, lr}
	sub sp, #0x90
	add r7, sp, #8
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
_08002030:
	ldr r0, [r7, #4]
	cmp r0, #3
	ble _08002038
	b _08002088
_08002038:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08002084
	ldr r2, [r7, #4]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, [r7, #4]
	adds r4, r3, #0
	lsls r3, r4, #3
	ldr r5, [r7]
	adds r4, r3, r5
	ldr r3, [r4]
	ldr r4, [r7, #4]
	adds r5, r4, #0
	lsls r4, r5, #1
	adds r5, r4, #1
	str r5, [sp]
	ldr r4, [r7, #4]
	adds r5, r4, #0
	lsls r4, r5, #3
	ldr r5, [r7]
	adds r4, r4, r5
	adds r5, r4, #4
	ldr r4, [r5]
	str r4, [sp, #4]
	bl sprintf
	adds r2, r7, #0
	adds r2, #8
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08002030
	.align 2, 0
_08002084: .4byte gUnknown_0801908C
_08002088:
	ldr r2, _0800209C
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x90
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800209C: .4byte gUnknown_08019080

	THUMB_FUNC_START sub_80020A0
sub_80020A0: @ 0x080020A0
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _080020C4
	ldr r2, [r7]
	bl sprintf
	adds r2, r7, #4
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x84
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080020C4: .4byte gUnknown_080190B0

	THUMB_FUNC_START sub_80020C8
sub_80020C8: @ 0x080020C8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800F37C
	ldr r1, [r7, #4]
	str r0, [r1]
	movs r0, #0
	b _080020DE
_080020DE:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

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

	THUMB_FUNC_START sub_800319C
sub_800319C: @ 0x0800319C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80030E8
	adds r1, r0, #0
	adds r0, r1, #0
	b _080031B0
_080031B0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80031B8
sub_80031B8: @ 0x080031B8
	push {r4, r7, lr}
	sub sp, #0x24
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, _080031EC
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r2, [r1]
	str r2, [r0]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x10
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	str r0, [r7]
_080031E4:
	ldr r0, [r7]
	cmp r0, #3
	bls _080031F0
	b _08003234
	.align 2, 0
_080031EC: .4byte gUnknown_0801915C
_080031F0:
	ldr r0, _0800322C
	ldr r1, _08003230
	ldr r2, [r7]
	movs r3, #0
	bl sub_800F150
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	ldr r0, [r0]
	cmp r1, r0
	beq _0800321E
	movs r0, #1
	ldr r1, [r7, #8]
	lsls r0, r1
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
_0800321E:
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _080031E4
	.align 2, 0
_0800322C: .4byte sub_8003310
_08003230: .4byte 0x8003374
_08003234:
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _08003246
_08003246:
	add sp, #0x24
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8003250
sub_8003250: @ 0x08003250
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80031B8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003264
_08003264:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800326C
sub_800326C: @ 0x0800326C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08003294
	movs r5, #0
	str r5, [r4]
	ldr r6, _08003298
	str r6, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldrh r0, [r4]
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003294: .4byte 0x04000100
_08003298: .4byte 0x00800000

	ARM_FUNC_START sub_800329C
sub_800329C: @ sub_800329C
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _08003304
	ldrh r8, [r7]
	ldrh sb, [pc, #0x58]
	and sb, r8, sb
	add sl, r0, r0
	add sl, sl, r0
	add sl, sl, #2
	orr sb, sb, r1, lsl sl
	strh sb, [r7]
	mov r2, #0x8000000
	add r2, r2, r0, lsl #25
	ldr r4, _0800330C
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldr r3, [r2]
	ldr r3, [r2]
	ldr r3, [r2]
	ldr r3, [r2]
	ldrh r0, [r4]
	str r5, [r4]
	strh r8, [r7]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003304: .4byte 0x04000204
	.byte 0x03, 0xF8, 0xFF, 0xFF
_0800330C: .4byte 0x04000100

	ARM_FUNC_START sub_8003310
sub_8003310: @ sub_8003310
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _08003368
	ldrh r8, [r7]
	ldrh sb, [pc, #0x48]
	and sb, r8, sb
	orr sb, sb, r0
	strh sb, [r7]
	mov r2, #0xe000000
	ldr r4, _08003370
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrh r0, [r4]
	str r5, [r4]
	strh r8, [r7]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003368: .4byte 0x04000204
	.byte 0xFC, 0xFF, 0xFF, 0xFF
_08003370: .4byte 0x04000100

	THUMB_FUNC_START sub_8003374
sub_8003374: @ sub_8003374
	push {r7, lr}
	ldr r7, _080033D0
	add sp, r7
	mov r7, sp
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0
	bl SetIME
	ldr r2, _080033D4
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, _080033D8
	ldr r1, _080033DC
	adds r2, r7, #0
	movs r3, #0xe4
	lsls r3, r3, #1
	bl sub_800F150
	ldr r1, _080033E0
	adds r0, r7, r1
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r2, _080033E0
	adds r0, r7, r2
	ldrh r1, [r0]
	cmp r1, #0xe3
	bls _080033E4
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	b _0800348C
	.align 2, 0
_080033D0: .4byte 0xFFFFF8D4
_080033D4: .4byte 0x00000724
_080033D8: .4byte sub_8003C88
_080033DC: .4byte sub_8003CF0
_080033E0: .4byte 0x00000726
_080033E4:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
_080033F0:
	adds r0, r7, #0
	movs r0, #0xe5
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	ldr r1, _08003404
	cmp r0, r1
	ble _08003408
	b _0800348C
	.align 2, 0
_08003404: .4byte 0x000001C7
_08003408:
	ldr r2, _08003468
	adds r1, r7, r2
	ldr r1, _08003468
	adds r0, r7, r1
	ldr r2, _08003468
	adds r1, r7, r2
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _08003468
	adds r0, r7, r1
	ldrh r1, [r0]
	cmp r1, #0xe4
	bne _0800342E
	ldr r2, _08003468
	adds r0, r7, r2
	movs r1, #0
	strh r1, [r0]
_0800342E:
	ldr r1, _08003468
	adds r0, r7, r1
	adds r1, r7, #0
	adds r2, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r3, r7, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800346C
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	b _0800348C
	.align 2, 0
_08003468: .4byte 0x00000726
_0800346C:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _080033F0
_0800348C:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
_08003498:
	adds r0, r7, #0
	movs r0, #0xe5
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	ldr r1, _080034AC
	cmp r0, r1
	ble _080034B0
	b _0800352A
	.align 2, 0
_080034AC: .4byte 0x000001C7
_080034B0:
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _080034EC
	cmp r0, r1
	bhi _080034F0
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #3
	cmp r0, r1
	bls _080034F0
	b _0800350A
	.align 2, 0
_080034EC: .4byte 0x000004D1
_080034F0:
	adds r1, r7, #0
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _0800352A
_0800350A:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08003498
_0800352A:
	ldr r2, _08003544
	adds r0, r7, r2
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	b _08003548
	.align 2, 0
_08003544: .4byte 0x00000724
_08003548:
	ldr r3, _08003554
	add sp, r3
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003554: .4byte 0x0000072C

	THUMB_FUNC_START sub_8003558
sub_8003558: @ 0x08003558
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003374
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800356C
_0800356C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003574
sub_8003574: @ 0x08003574
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #4
	ldr r1, _08003600
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08003600
	movs r1, #0x20
	strh r1, [r0]
	ldr r0, _08003604
	movs r1, #4
	strh r1, [r0]
	bl sub_800362C
	ldr r0, _08003604
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _080035BC
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_080035BC:
	ldr r0, _08003600
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08003604
	movs r1, #4
	strh r1, [r0]
	bl sub_800362C
	ldr r0, _08003604
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080035E8
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_080035E8:
	ldr r0, _08003600
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _08003608
	.align 2, 0
_08003600: .4byte 0x04000004
_08003604: .4byte 0x04000202
_08003608:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003610
sub_8003610: @ 0x08003610
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003574
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003624
_08003624:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800362C
sub_800362C: @ 0x0800362C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _08003694
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0xa
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	cmp r1, #0xe3
	bls _08003656
	adds r0, r7, #2
	movs r1, #0
	strh r1, [r0]
_08003656:
	adds r0, r7, #4
	ldr r1, _08003698
	ldrh r2, [r1]
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #4
	adds r1, r7, #4
	adds r2, r7, #2
	ldrh r3, [r2]
	lsls r2, r3, #8
	ldrh r1, [r1]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08003698
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
_08003680:
	ldr r1, _08003694
	adds r0, r7, #2
	ldrh r1, [r1]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bne _0800369C
	b _0800369E
	.align 2, 0
_08003694: .4byte 0x04000006
_08003698: .4byte 0x04000004
_0800369C:
	b _08003680
_0800369E:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80036A8
sub_80036A8: @ 0x080036A8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #4
	ldr r1, _08003734
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08003734
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _08003738
	movs r1, #2
	strh r1, [r0]
	bl sub_8003760
	ldr r0, _08003738
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _080036F0
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_080036F0:
	ldr r0, _08003734
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08003738
	movs r1, #2
	strh r1, [r0]
	bl sub_8003760
	ldr r0, _08003738
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800371C
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0800371C:
	ldr r0, _08003734
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800373C
	.align 2, 0
_08003734: .4byte 0x04000004
_08003738: .4byte 0x04000202
_0800373C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003744
sub_8003744: @ 0x08003744
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80036A8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003758
_08003758:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003760
sub_8003760: @ 0x08003760
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _08003790
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xe1
	bls _0800377C
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
_0800377C:
	ldr r0, _08003790
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	bne _08003794
	b _08003796
	.align 2, 0
_08003790: .4byte 0x04000006
_08003794:
	b _0800377C
_08003796:
	ldr r0, _080037AC
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #2
	cmp r0, r1
	bne _080037B0
	b _080037B2
	.align 2, 0
_080037AC: .4byte 0x04000006
_080037B0:
	b _08003796
_080037B2:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80037BC
sub_80037BC: @ 0x080037BC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #4
	ldr r1, _08003848
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08003848
	movs r1, #8
	strh r1, [r0]
	ldr r0, _0800384C
	movs r1, #1
	strh r1, [r0]
	bl sub_8003874
	ldr r0, _0800384C
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _08003804
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_08003804:
	ldr r0, _08003848
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800384C
	movs r1, #1
	strh r1, [r0]
	bl sub_8003874
	ldr r0, _0800384C
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08003830
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_08003830:
	ldr r0, _08003848
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _08003850
	.align 2, 0
_08003848: .4byte 0x04000004
_0800384C: .4byte 0x04000202
_08003850:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003858
sub_8003858: @ 0x08003858
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80037BC
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800386C
_0800386C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003874
sub_8003874: @ 0x08003874
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _080038A4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xe2
	bls _08003890
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
_08003890:
	ldr r0, _080038A4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	bne _080038A8
	b _080038AA
	.align 2, 0
_080038A4: .4byte 0x04000006
_080038A8:
	b _08003890
_080038AA:
	ldr r1, _080038BC
	adds r0, r7, #0
	ldrh r1, [r1]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bne _080038C0
	b _080038C2
	.align 2, 0
_080038BC: .4byte 0x04000006
_080038C0:
	b _080038AA
_080038C2:
	ldr r0, _080038D8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	bne _080038DC
	b _080038DE
	.align 2, 0
_080038D8: .4byte 0x04000006
_080038DC:
	b _080038C2
_080038DE:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80038E8
sub_80038E8: @ 0x080038E8
	push {r7, lr}
	sub sp, #0x20
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x10]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x1c
	ldr r1, _0800395C
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x16
	ldr r1, _08003960
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x16
	adds r1, r7, #0
	adds r1, #0x16
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0xa
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x16
	ldrh r1, [r0]
	cmp r1, #0xe2
	bls _08003936
	adds r0, r7, #0
	adds r0, #0x16
	movs r1, #0
	strh r1, [r0]
_08003936:
	ldr r0, _0800395C
	adds r1, r7, #0
	adds r1, #0x16
	ldrh r2, [r1]
	lsls r1, r2, #8
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08003964
	ldr r1, _08003968
	adds r2, r7, #0
	movs r3, #4
	bl sub_800F150
	movs r0, #0
	str r0, [r7, #0x18]
_08003954:
	ldr r0, [r7, #0x18]
	cmp r0, #3
	ble _0800396C
	b _080039D8
	.align 2, 0
_0800395C: .4byte 0x04000004
_08003960: .4byte 0x04000006
_08003964: .4byte sub_8003CF0
_08003968: .4byte sub_8003D38
_0800396C:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080039AC
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x16
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	beq _080039AA
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _080039D8
_080039AA:
	b _080039D0
_080039AC:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x16
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	beq _080039D0
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _080039D8
_080039D0:
	ldr r0, [r7, #0x18]
	adds r1, r0, #1
	str r1, [r7, #0x18]
	b _08003954
_080039D8:
	ldr r0, _080039F4
	adds r1, r7, #0
	adds r1, #0x1c
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _080039F8
	.align 2, 0
_080039F4: .4byte 0x04000004
_080039F8:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003A00
sub_8003A00: @ 0x08003A00
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80038E8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003A14
_08003A14:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003A1C
sub_8003A1C: @ 0x08003A1C
	push {r7, lr}
	ldr r7, _08003A68
	add sp, r7
	mov r7, sp
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0
	bl SetIME
	ldr r2, _08003A6C
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, _08003A70
	ldr r1, _08003A74
	adds r2, r7, #0
	movs r3, #0xe4
	lsls r3, r3, #1
	bl sub_800F150
	adds r0, r7, #0
	movs r0, #0xe5
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
_08003A56:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	ldr r0, [r1]
	ldr r1, _08003A78
	cmp r0, r1
	ble _08003A7C
	b _08003B70
	.align 2, 0
_08003A68: .4byte 0xFFFFF8D4
_08003A6C: .4byte 0x00000724
_08003A70: .4byte sub_8003D38
_08003A74: .4byte sub_8003DAC
_08003A78: .4byte 0x000001C7
_08003A7C:
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08003B00
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _08003ADC
	cmp r0, r1
	bhi _08003AE4
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _08003AE0
	cmp r0, r1
	bls _08003AE4
	b _08003AFE
	.align 2, 0
_08003ADC: .4byte 0x000003F1
_08003AE0: .4byte 0x000003DE
_08003AE4:
	adds r1, r7, #0
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _08003B70
_08003AFE:
	b _08003B50
_08003B00:
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xe3
	bhi _08003B36
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xd0
	bls _08003B36
	b _08003B50
_08003B36:
	adds r1, r7, #0
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _08003B70
_08003B50:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08003A56
_08003B70:
	ldr r2, _08003B8C
	adds r0, r7, r2
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	b _08003B90
	.align 2, 0
_08003B8C: .4byte 0x00000724
_08003B90:
	ldr r3, _08003B9C
	add sp, r3
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003B9C: .4byte 0x0000072C

	THUMB_FUNC_START sub_8003BA0
sub_8003BA0: @ 0x08003BA0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003A1C
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003BB4
_08003BB4:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003BBC
sub_8003BBC: @ 0x08003BBC
	push {r7, lr}
	sub sp, #0x1c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x10]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, _08003BEC
	ldr r1, _08003BF0
	adds r2, r7, #0
	movs r3, #4
	bl sub_800F150
	movs r0, #0
	str r0, [r7, #0x18]
_08003BE2:
	ldr r0, [r7, #0x18]
	cmp r0, #3
	ble _08003BF4
	b _08003C52
	.align 2, 0
_08003BEC: .4byte sub_8003DAC
_08003BF0: .4byte 0x8003DF4
_08003BF4:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08003C2E
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xa0
	beq _08003C2C
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08003C52
_08003C2C:
	b _08003C4A
_08003C2E:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xe3
	beq _08003C4A
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08003C52
_08003C4A:
	ldr r0, [r7, #0x18]
	adds r1, r0, #1
	str r1, [r7, #0x18]
	b _08003BE2
_08003C52:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _08003C64
_08003C64:
	add sp, #0x1c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003C6C
sub_8003C6C: @ 0x08003C6C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003BBC
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003C80
_08003C80:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	ARM_FUNC_START sub_8003C88
sub_8003C88: @ sub_8003C88
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003CE8
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldr r7, _08003CEC
	lsl r1, r1, #2
	add r1, r1, r0
	ldrh r2, [r7]
_08003CB0:
	ldrh r3, [r7]
	cmp r2, r3
	mov r2, r3
	beq _08003CB0
	ldrh r8, [r4]
	str r5, [r4]
	str r6, [r4]
	strh r3, [r0], #2
	strh r8, [r0], #2
	cmp r0, r1
	bne _08003CB0
	str r5, [r4]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003CE8: .4byte 0x04000100
_08003CEC: .4byte 0x04000006

	ARM_FUNC_START sub_8003CF0
sub_8003CF0: @ sub_8003CF0
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003D34
	mov r5, #4
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, [r4]
	and r3, r2, r5
_08003D0C:
	ldr r6, [r4]
	and r7, r6, r5
	cmp r3, r7
	mov r3, r7
	beq _08003D0C
	str r6, [r0], #4
	cmp r0, r1
	bne _08003D0C
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003D34: .4byte 0x04000004

	ARM_FUNC_START sub_8003D38
sub_8003D38: @ sub_8003D38
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003DA4
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldr r7, _08003DA8
	mov r8, #2
	lsl r1, r1, #2
	add r1, r1, r0
	ldrh r2, [r7]
	and r3, r2, r8
_08003D68:
	ldrh sb, [r7]
	and sl, sb, r8
	cmp r3, sl
	mov r3, sl
	beq _08003D68
	ldrh fp, [r4]
	str r5, [r4]
	str r6, [r4]
	strh sb, [r0], #2
	strh fp, [r0], #2
	cmp r0, r1
	bne _08003D68
	str r5, [r4]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003DA4: .4byte 0x04000100
_08003DA8: .4byte 0x04000004

	ARM_FUNC_START sub_8003DAC
sub_8003DAC: @ sub_8003DAC
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003DF0
	mov r5, #1
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, [r4]
	and r3, r2, r5
_08003DC8:
	ldr r6, [r4]
	and r7, r6, r5
	cmp r3, r7
	mov r3, r7
	beq _08003DC8
	str r6, [r0], #4
	cmp r0, r1
	bne _08003DC8
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003DF0: .4byte 0x04000004

	THUMB_FUNC_START sub_8003DF4
sub_8003DF4: @ sub_8003DF4
	push {r7, lr}
	sub sp, #0x50
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08003E44
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08003E44
	movs r1, #8
	strh r1, [r0]
	ldr r0, _08003E48
	ldr r1, [r7]
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _08003E4C
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08003E48
	ldr r1, [r0]
	cmp r1, #5
	bhi _08003EAA
	ldr r0, [r0]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, _08003E50
	adds r0, r0, r1
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_08003E44: .4byte 0x04000004
_08003E48: .4byte gUnknown_03001734
_08003E4C: .4byte gUnknown_03001730
_08003E50: .4byte _08003E54
_08003E54: @ jump table
	.4byte _08003E6C @ case 0
	.4byte _08003E78 @ case 1
	.4byte _08003E7E @ case 2
	.4byte _08003E84 @ case 3
	.4byte _08003E94 @ case 4
	.4byte _08003EA4 @ case 5
_08003E6C:
	ldr r0, [r7]
	adds r1, r0, #4
	adds r0, r1, #0
	bl sub_8003ED0
	b _08003EAA
_08003E78:
	bl sub_8004038
	b _08003EAA
_08003E7E:
	bl sub_8004258
	b _08003EAA
_08003E84:
	ldr r1, _08003E90
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_800413C
	b _08003EAA
	.align 2, 0
_08003E90: .4byte gUnknown_080193E8
_08003E94:
	ldr r1, _08003EA0
	adds r0, r1, #0
	movs r1, #3
	bl sub_800413C
	b _08003EAA
	.align 2, 0
_08003EA0: .4byte gUnknown_08019438
_08003EA4:
	bl sub_80043F4
	b _08003EAA
_08003EAA:
	ldr r0, _08003EC4
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r1, #0
	bl sub_800D854
	movs r0, #0
	b _08003EC8
	.align 2, 0
_08003EC4: .4byte 0x04000004
_08003EC8:
	add sp, #0x50
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003ED0
sub_8003ED0: @ 0x08003ED0
	push {r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	movs r0, #1
	bl sub_800D640
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, [r0]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #6
	bhi _08003F62
	ldr r0, [r0]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, _08003EFC
	adds r0, r0, r1
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_08003EFC: .4byte _08003F00
_08003F00: @ jump table
	.4byte _08003F1C @ case 0
	.4byte _08003F26 @ case 1
	.4byte _08003F30 @ case 2
	.4byte _08003F3A @ case 3
	.4byte _08003F44 @ case 4
	.4byte _08003F4E @ case 5
	.4byte _08003F58 @ case 6
_08003F1C:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8004A90
	b _08003F62
_08003F26:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_80055D4
	b _08003F62
_08003F30:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8006750
	b _08003F62
_08003F3A:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8007704
	b _08003F62
_08003F44:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8007C34
	b _08003F62
_08003F4E:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8007F0C
	b _08003F62
_08003F58:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_8004714
	b _08003F62
_08003F62:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	cmp r1, #0
	bne _08003F74
	bl sub_800EC94
	b _0800402E
_08003F74:
	ldr r0, _08003F94
	movs r1, #0
	str r1, [r0]
	ldr r0, _08003F98
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08003F9C
	str r0, [r7, #0x10]
_08003F84:
	ldr r0, _08003FA0
	ldr r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08003FA4
	b _0800400C
	.align 2, 0
_08003F94: .4byte 0x040000DC
_08003F98: .4byte 0x0E001FFE
_08003F9C: .4byte 0x06017FFC
_08003FA0: .4byte 0x09FFFFF8
_08003FA4:
	ldr r0, _08003FCC
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _08003FDC
	ldr r0, [r7, #0x10]
	ldr r1, [r0]
	str r1, [r7, #0xc]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r0, [r7, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	cmp r0, r1
	bne _08003FD4
	ldr r0, _08003FD0
	str r0, [r7, #0x10]
	b _08003FDA
	.align 2, 0
_08003FCC: .4byte 0x040000DC
_08003FD0: .4byte 0x06017FFC
_08003FD4:
	ldr r0, [r7, #0x10]
	subs r1, r0, #4
	str r1, [r7, #0x10]
_08003FDA:
	b _08003FF6
_08003FDC:
	ldr r0, _08003FF8
	movs r1, #0
	str r1, [r0]
	ldr r0, _08003FFC
	ldr r1, _08004000
	str r1, [r0]
	ldr r0, _08004004
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r0, _08003FF8
	ldr r1, _08004008
	str r1, [r0]
_08003FF6:
	b _08003F84
	.align 2, 0
_08003FF8: .4byte 0x040000DC
_08003FFC: .4byte 0x040000D4
_08004000: .4byte 0x06017FFC
_08004004: .4byte 0x040000D8
_08004008: .4byte 0x84C06000
_0800400C:
	ldr r1, _08004024
	ldrh r0, [r1]
	ldr r0, _08004028
	movs r1, #0
	str r1, [r0]
_08004016:
	ldr r0, _08004028
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800402C
	b _0800402E
	.align 2, 0
_08004024: .4byte 0x0E001FFC
_08004028: .4byte 0x040000DC
_0800402C:
	b _08004016
_0800402E:
	add sp, #0x14
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8004038
sub_8004038: @ 0x08004038
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #1
	str r0, [r7, #4]
	bl m4aSoundInit
	movs r0, #0
	bl SetIME
	ldr r1, _08004078
	movs r0, #1
	bl sub_800D68C
	movs r0, #1
	bl SetIME
	movs r0, #0xe
	bl m4aSongNumStart
	movs r0, #0x64
	bl m4aSongNumStart
	bl sub_800D9D8
	ldr r0, _0800407C
	movs r1, #0
	str r1, [r0, #4]
_08004074:
	b _08004082
	.align 2, 0
_08004078: .4byte sub_80044F8+1
_0800407C: .4byte gUnknown_03000460
	.byte 0x54, 0xE0
_08004082:
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080040C6
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _080040F4
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _080040F8
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, _080040F8
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	ldr r2, [r0]
	adds r0, r1, #0
	bl _call_via_r2
	movs r0, #0
	str r0, [r7, #4]
_080040C6:
	bl m4aSoundMain
	bl sub_800D8B0
	ldr r0, _080040FC
	ldrh r1, [r0, #2]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08004102
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	ldr r0, [r7]
	cmp r0, #0x17
	bhi _08004100
	movs r0, #1
	str r0, [r7, #4]
	b _08004102
	.align 2, 0
_080040F4: .4byte 0x0000FF7F
_080040F8: .4byte gUnknown_08019328
_080040FC: .4byte gUnknown_03000460
_08004100:
	b _0800412C
_08004102:
	ldr r0, _08004128
	ldrh r1, [r0, #2]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08004126
	ldr r0, [r7]
	cmp r0, #0
	beq _08004126
	ldr r0, [r7]
	subs r1, r0, #1
	str r1, [r7]
	movs r0, #1
	str r0, [r7, #4]
_08004126:
	b _08004074
	.align 2, 0
_08004128: .4byte gUnknown_03000460
_0800412C:
	bl m4aMPlayAllStop
	bl SoundVSyncOff_rev01
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800413C
sub_800413C: @ 0x0800413C
	push {r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #1
	str r0, [r7, #0xc]
	bl m4aSoundInit
	movs r0, #0
	bl SetIME
	ldr r1, _08004174
	movs r0, #1
	bl sub_800D68C
	movs r0, #1
	bl SetIME
	bl sub_800D9D8
	ldr r0, _08004178
	movs r1, #0
	str r1, [r0, #4]
_08004170:
	b _0800417E
	.align 2, 0
_08004174: .4byte sub_80044F8+1
_08004178: .4byte gUnknown_03000460
	.byte 0x64, 0xE0
_0800417E:
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _080041C0
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _080041F8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	lsls r0, r1, #3
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, [r7]
	adds r1, r1, r2
	ldr r2, [r1, #4]
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	movs r0, #0
	str r0, [r7, #0xc]
_080041C0:
	bl m4aSoundMain
	bl sub_800D8B0
	ldr r0, _080041FC
	ldrh r1, [r0, #2]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800420C
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, [r7, #4]
	cmp r0, r1
	bge _08004200
	movs r0, #1
	str r0, [r7, #0xc]
	movs r0, #4
	bl m4aSongNumStart
	b _0800420C
	.align 2, 0
_080041F8: .4byte 0x0000FF7F
_080041FC: .4byte gUnknown_03000460
_08004200:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #8]
	movs r0, #5
	bl m4aSongNumStart
_0800420C:
	ldr r0, _08004238
	ldrh r1, [r0, #2]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08004246
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0800423C
	ldr r0, [r7, #8]
	subs r1, r0, #1
	str r1, [r7, #8]
	movs r0, #1
	str r0, [r7, #0xc]
	movs r0, #4
	bl m4aSongNumStart
	b _08004246
	.align 2, 0
_08004238: .4byte gUnknown_03000460
_0800423C:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #5
	bl m4aSongNumStart
_08004246:
	b _08004170
	.byte 0x0B, 0xF0, 0xD6, 0xFF, 0x0C, 0xF0, 0x3C, 0xFA
	.byte 0x05, 0xB0, 0x80, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8004258
sub_8004258: @ 0x08004258
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #1
	str r0, [r7, #4]
	bl m4aSoundInit
	movs r0, #0
	bl SetIME
	ldr r1, _0800427C
	movs r0, #1
	bl sub_800D68C
	movs r0, #1
	bl SetIME
_0800427A:
	b _08004282
	.align 2, 0
_0800427C: .4byte sub_80044F8+1
	.byte 0xAF, 0xE0
_08004282:
	movs r0, #1
	bl sub_800D640
	ldr r0, _08004298
	ldr r1, [r0]
	cmp r1, #0x1e
	bgt _0800429C
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0800429C
	b _08004356
	.align 2, 0
_08004298: .4byte gUnknown_030010A0
_0800429C:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080042AC
	movs r0, #0
	str r0, [r7, #4]
	movs r0, #0
	str r0, [r7]
	b _080042B2
_080042AC:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
_080042B2:
	ldr r0, [r7]
	cmp r0, #0x31
	bls _080042BA
	b _080043E2
_080042BA:
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _0800437C
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08004380
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, _08004380
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	ldr r2, [r0]
	adds r0, r1, #0
	bl _call_via_r2
	ldr r0, _08004380
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004384
	cmp r1, r0
	beq _08004324
	ldr r0, _08004388
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, _0800438C
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _08004390
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08004394
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
_08004324:
	ldr r0, [r7]
	cmp r0, #0
	bne _08004336
	movs r0, #0xe
	bl m4aSongNumStart
	movs r0, #0x64
	bl m4aSongNumStart
_08004336:
	ldr r0, [r7]
	cmp r0, #0x30
	bne _08004350
	ldr r1, _08004398
	adds r0, r1, #0
	movs r1, #0x10
	bl m4aMPlayFadeOut
	ldr r1, _0800439C
	adds r0, r1, #0
	movs r1, #0x10
	bl m4aMPlayFadeOut
_08004350:
	ldr r0, _080043A0
	movs r1, #0
	str r1, [r0]
_08004356:
	ldr r0, _08004380
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080043A4
	cmp r1, r0
	bne _080043A8
	ldr r0, _08004380
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _080043A8
	b _080043DC
	.align 2, 0
_0800437C: .4byte 0x0000FF7F
_08004380: .4byte gUnknown_08019198
_08004384: .4byte sub_8006750+1
_08004388: .4byte 0x040000D4
_0800438C: .4byte gUnknown_080C4880
_08004390: .4byte 0x050003E0
_08004394: .4byte 0x84000008
_08004398: .4byte gUnknown_03003D10
_0800439C: .4byte gUnknown_03003D50
_080043A0: .4byte gUnknown_030010A0
_080043A4: .4byte sub_8004A90+1
_080043A8:
	ldr r0, _080043D0
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080043D4
	cmp r1, r0
	bne _080043D8
	ldr r0, _080043D0
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _080043D8
	b _080043DC
	.align 2, 0
_080043D0: .4byte gUnknown_08019198
_080043D4: .4byte sub_8007704+1
_080043D8:
	bl sub_8008118
_080043DC:
	bl m4aSoundMain
	b _0800427A
_080043E2:
	bl m4aMPlayAllStop
	bl SoundVSyncOff_rev01
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80043F4
sub_80043F4: @ 0x080043F4
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #1
	str r0, [r7, #4]
	bl m4aSoundInit
	movs r0, #0
	bl SetIME
	ldr r1, _08004434
	movs r0, #1
	bl sub_800D68C
	movs r0, #1
	bl SetIME
	movs r0, #0xe
	bl m4aSongNumStart
	movs r0, #0x64
	bl m4aSongNumStart
	bl sub_800D9D8
	ldr r0, _08004438
	movs r1, #0
	str r1, [r0, #4]
_08004430:
	b _0800443E
	.align 2, 0
_08004434: .4byte sub_80044F8+1
_08004438: .4byte gUnknown_03000460
	.byte 0x54, 0xE0
_0800443E:
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08004482
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _080044B0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _080044B4
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, _080044B4
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	ldr r2, [r0]
	adds r0, r1, #0
	bl _call_via_r2
	movs r0, #0
	str r0, [r7, #4]
_08004482:
	bl m4aSoundMain
	bl sub_800D8B0
	ldr r0, _080044B8
	ldrh r1, [r0, #2]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080044BE
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	ldr r0, [r7]
	cmp r0, #0x31
	bhi _080044BC
	movs r0, #1
	str r0, [r7, #4]
	b _080044BE
	.align 2, 0
_080044B0: .4byte 0x0000FF7F
_080044B4: .4byte gUnknown_08019198
_080044B8: .4byte gUnknown_03000460
_080044BC:
	b _080044E8
_080044BE:
	ldr r0, _080044E4
	ldrh r1, [r0, #2]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080044E2
	ldr r0, [r7]
	cmp r0, #0
	beq _080044E2
	ldr r0, [r7]
	subs r1, r0, #1
	str r1, [r7]
	movs r0, #1
	str r0, [r7, #4]
_080044E2:
	b _08004430
	.align 2, 0
_080044E4: .4byte gUnknown_03000460
_080044E8:
	bl m4aMPlayAllStop
	bl SoundVSyncOff_rev01
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80044F8
sub_80044F8: @ 0x080044F8
	push {r7, lr}
	mov r7, sp
	bl SoundVSync_rev01
	ldr r1, _08004514
	ldr r0, _08004514
	ldr r1, _08004514
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004514: .4byte gUnknown_030010A0

	THUMB_FUNC_START sub_8004518
sub_8004518: @ 0x08004518
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004580
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [r0]
	ldr r0, _08004584
	movs r1, #0x80
	lsls r1, r1, #0x11
	str r1, [r0]
	ldr r0, _08004588
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800458C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08004590
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [r0]
	ldr r0, _08004594
	movs r1, #0x80
	lsls r1, r1, #0x11
	str r1, [r0]
	ldr r0, _08004598
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800459C
	movs r1, #0
	str r1, [r0]
	ldr r0, _080045A0
	movs r1, #0
	str r1, [r0]
	ldr r0, _080045A4
	movs r1, #0
	str r1, [r0]
	ldr r0, _080045A8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080045AC
	movs r1, #0
	str r1, [r0]
	ldr r0, _080045B0
	movs r1, #0
	str r1, [r0]
	ldr r0, _080045B4
	movs r1, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004580: .4byte 0x04000020
_08004584: .4byte 0x04000024
_08004588: .4byte 0x04000028
_0800458C: .4byte 0x0400002C
_08004590: .4byte 0x04000030
_08004594: .4byte 0x04000034
_08004598: .4byte 0x04000038
_0800459C: .4byte 0x0400003C
_080045A0: .4byte 0x04000040
_080045A4: .4byte 0x04000044
_080045A8: .4byte 0x04000048
_080045AC: .4byte 0x04000050
_080045B0: .4byte 0x04000052
_080045B4: .4byte 0x04000054

	THUMB_FUNC_START sub_80045B8
sub_80045B8: @ 0x080045B8
	push {r7, lr}
	sub sp, #0x2c
	mov r7, sp
	str r0, [r7]
	adds r1, r7, #4
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x20
	bl memset
	ldr r0, _08004624
	str r0, [r7, #0x24]
	ldr r0, [r7, #0x24]
	adds r1, r7, #4
	str r1, [r0]
	ldr r1, [r7, #0x24]
	adds r0, r1, #4
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7, #0x24]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08004628
	str r1, [r0]
	ldr r0, [r7, #0x24]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0
	str r0, [r7, #0x24]
	ldr r0, _08004624
	str r0, [r7, #0x28]
	ldr r0, [r7, #0x28]
	adds r1, r7, #0
	adds r1, #0x24
	str r1, [r0]
	ldr r1, [r7, #0x28]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800462C
	str r1, [r0]
	ldr r0, [r7, #0x28]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	add sp, #0x2c
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004624: .4byte 0x040000D4
_08004628: .4byte 0x84000008
_0800462C: .4byte 0x85000100

	THUMB_FUNC_START sub_8004630
sub_8004630: @ 0x08004630
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004648
	ldr r1, [r0]
	cmp r1, #1
	beq _0800464C
	ldr r0, _08004648
	ldr r1, [r0]
	cmp r1, #2
	beq _0800464C
	b _08004656
	.align 2, 0
_08004648: .4byte gUnknown_03001734
_0800464C:
	bl m4aSoundMain
	movs r0, #1
	bl sub_800D640
_08004656:
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800465C
sub_800465C: @ 0x0800465C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _080046C0
	ldr r1, [r0]
	cmp r1, #2
	bne _080046F8
	ldr r0, _080046C4
	ldr r1, _080046C4
	ldrb r2, [r1]
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _080046C8
	ldr r1, _080046C8
	ldrb r2, [r1]
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _080046CC
	ldr r1, _080046CC
	ldrb r2, [r1]
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _080046D0
	ldr r1, _080046D0
	ldrb r2, [r1]
	movs r3, #0x20
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _080046D4
	movs r1, #0xbf
	strh r1, [r0]
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
_080046B6:
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0x10
	bls _080046D8
	b _080046F8
	.align 2, 0
_080046C0: .4byte gUnknown_03001734
_080046C4: .4byte 0x04000048
_080046C8: .4byte 0x04000049
_080046CC: .4byte 0x0400004A
_080046D0: .4byte 0x0400004B
_080046D4: .4byte 0x04000050
_080046D8:
	ldr r0, _080046F4
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	bl sub_8004630
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _080046B6
	.align 2, 0
_080046F4: .4byte 0x04000054
_080046F8:
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
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8004714
sub_8004714: @ 0x08004714
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	bl sub_8004518
	ldr r1, _08004748
	adds r0, r1, #0
	bl sub_80045B8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _0800474C
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	cmp r0, #0xa
	bls _0800473A
	b _08004A7C
_0800473A:
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, _08004750
	adds r0, r0, r1
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_08004748: .4byte 0x06014000
_0800474C: .4byte 0x00000403
_08004750: .4byte _08004754
_08004754: @ jump table
	.4byte _08004780 @ case 0
	.4byte _080047B4 @ case 1
	.4byte _080047FC @ case 2
	.4byte _08004834 @ case 3
	.4byte _08004870 @ case 4
	.4byte _080048AC @ case 5
	.4byte _080048E8 @ case 6
	.4byte _0800491C @ case 7
	.4byte _08004950 @ case 8
	.4byte _08004984 @ case 9
	.4byte _08004A46 @ case 10
_08004780:
	ldr r0, _080047A8
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	ldr r1, _080047AC
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080047B0
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_080047A8: .4byte 0x040000D4
_080047AC: .4byte gUnknown_08019864
_080047B0: .4byte 0x84004B00
_080047B4:
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
	ldr r0, _080047F4
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080047F8
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_080047F4: .4byte 0x040000D4
_080047F8: .4byte 0x84004B00
_080047FC:
	movs r0, #0
	str r0, [r7, #0x10]
	ldr r0, _0800482C
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	adds r1, r7, #0
	adds r1, #0x10
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08004830
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_0800482C: .4byte 0x040000D4
_08004830: .4byte 0x85004B00
_08004834:
	ldr r0, _08004864
	str r0, [r7, #0x14]
	ldr r0, _08004868
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x14
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800486C
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_08004864: .4byte 0x001F001F
_08004868: .4byte 0x040000D4
_0800486C: .4byte 0x85004B00
_08004870:
	ldr r0, _080048A0
	str r0, [r7, #0x14]
	ldr r0, _080048A4
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x14
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080048A8
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_080048A0: .4byte gUnknown_03E003E0
_080048A4: .4byte 0x040000D4
_080048A8: .4byte 0x85004B00
_080048AC:
	ldr r0, _080048DC
	str r0, [r7, #0x14]
	ldr r0, _080048E0
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x14
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080048E4
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_080048DC: .4byte 0x7C007C00
_080048E0: .4byte 0x040000D4
_080048E4: .4byte 0x85004B00
_080048E8:
	ldr r0, _08004910
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08004914
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08004918
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_08004910: .4byte 0x040000D4
_08004914: .4byte gUnknown_0802C464
_08004918: .4byte 0x84004B00
_0800491C:
	ldr r0, _08004944
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08004948
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800494C
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_08004944: .4byte 0x040000D4
_08004948: .4byte gUnknown_0803F064
_0800494C: .4byte 0x84004B00
_08004950:
	ldr r0, _08004978
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _0800497C
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08004980
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_08004978: .4byte 0x040000D4
_0800497C: .4byte gUnknown_08051C64
_08004980: .4byte 0x84004B00
_08004984:
	movs r0, #0
	str r0, [r7, #0xc]
_08004988:
	ldr r0, [r7, #0xc]
	cmp r0, #0x1f
	ble _08004990
	b _08004A44
_08004990:
	ldr r1, [r7, #0xc]
	lsls r0, r1, #5
	ldr r1, [r7, #0xc]
	orrs r0, r1
	ldr r2, [r7, #0xc]
	lsls r1, r2, #0xa
	orrs r0, r1
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	lsls r0, r1, #0x10
	ldr r1, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	ldr r1, [r7, #0xc]
	lsls r0, r1, #5
	ldr r1, [r7, #0xc]
	orrs r0, r1
	ldr r2, [r7, #0xc]
	lsls r1, r2, #0xa
	orrs r0, r1
	ldr r2, [r7, #0xc]
	lsls r1, r2, #5
	ldr r2, [r7, #0xc]
	orrs r1, r2
	ldr r3, [r7, #0xc]
	lsls r2, r3, #0xa
	orrs r1, r2
	lsls r2, r1, #0x10
	orrs r0, r2
	str r0, [r7, #0x14]
	ldr r0, _08004A00
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x14
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08004A04
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
_080049F8:
	ldr r0, [r7, #8]
	cmp r0, #3
	ble _08004A08
	b _08004A3C
	.align 2, 0
_08004A00: .4byte 0x040000D4
_08004A04: .4byte 0x85004B00
_08004A08:
	ldr r1, _08004A1C
	ldr r0, [r1]
	cmp r0, #2
	beq _08004A26
	cmp r0, #2
	bgt _08004A20
	cmp r0, #1
	beq _08004A2A
	b _08004A2E
	.align 2, 0
_08004A1C: .4byte gUnknown_03001734
_08004A20:
	cmp r0, #5
	bgt _08004A2E
	b _08004A2A
_08004A26:
	bl sub_8008118
_08004A2A:
	bl m4aSoundMain
_08004A2E:
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	b _080049F8
_08004A3C:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _08004988
_08004A44:
	b _08004A7C
_08004A46:
	ldr r0, _08004A70
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08004A74
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08004A78
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _08004A7C
	.align 2, 0
_08004A70: .4byte 0x040000D4
_08004A74: .4byte gUnknown_08064864
_08004A78: .4byte 0x84004B00
_08004A7C:
	ldr r0, _08004A8C
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004A8C: .4byte gUnknown_03001730

	THUMB_FUNC_START sub_8004A90
sub_8004A90: @ 0x08004A90
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08004AC0
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, _08004AC4
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _08004AC8
	ldr r0, _08004AC0
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
	b _08004B34
	.align 2, 0
_08004AC0: .4byte gUnknown_080194D8
_08004AC4: .4byte gUnknown_03001730
_08004AC8:
	bl sub_800465C
	ldr r0, _08004AE8
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #1
	beq _08004B04
	cmp r0, #1
	bgt _08004AEC
	cmp r0, #0
	beq _08004AF2
	b _08004B24
	.align 2, 0
_08004AE8: .4byte gUnknown_080194D8
_08004AEC:
	cmp r0, #2
	beq _08004B14
	b _08004B24
_08004AF2:
	bl sub_8004DF0
	ldr r0, _08004B00
	movs r1, #0
	str r1, [r0]
	b _08004B24
	.align 2, 0
_08004B00: .4byte gUnknown_03001730
_08004B04:
	bl sub_8005084
	ldr r0, _08004B10
	movs r1, #1
	str r1, [r0]
	b _08004B24
	.align 2, 0
_08004B10: .4byte gUnknown_03001730
_08004B14:
	bl sub_80053C8
	ldr r0, _08004B20
	movs r1, #2
	str r1, [r0]
	b _08004B24
	.align 2, 0
_08004B20: .4byte gUnknown_03001730
_08004B24:
	ldr r0, _08004B3C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
_08004B34:
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004B3C: .4byte gUnknown_080194D8

	THUMB_FUNC_START sub_8004B40
sub_8004B40: @ 0x08004B40
	push {r7, lr}
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8004B58
sub_8004B58: @ 0x08004B58
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004B84
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08004B88
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004B8C
	ldr r2, _08004B90
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004B84: .4byte 0x04000050
_08004B88: .4byte 0x04000054
_08004B8C: .4byte 0x04000052
_08004B90: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004B94
sub_8004B94: @ 0x08004B94
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004BC0
	movs r1, #0xa7
	strh r1, [r0]
	ldr r0, _08004BC4
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004BC8
	ldr r2, _08004BCC
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004BC0: .4byte 0x04000050
_08004BC4: .4byte 0x04000054
_08004BC8: .4byte 0x04000052
_08004BCC: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004BD0
sub_8004BD0: @ 0x08004BD0
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004BFC
	movs r1, #0xe7
	strh r1, [r0]
	ldr r0, _08004C00
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004C04
	ldr r2, _08004C08
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004BFC: .4byte 0x04000050
_08004C00: .4byte 0x04000054
_08004C04: .4byte 0x04000052
_08004C08: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004C0C
sub_8004C0C: @ 0x08004C0C
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004C38
	ldr r2, _08004C3C
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08004C40
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004C44
	ldr r2, _08004C48
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004C38: .4byte 0x04000050
_08004C3C: .4byte 0x00002747
_08004C40: .4byte 0x04000054
_08004C44: .4byte 0x04000052
_08004C48: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004C4C
sub_8004C4C: @ 0x08004C4C
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004C78
	ldr r2, _08004C7C
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08004C80
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004C84
	ldr r2, _08004C88
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004C78: .4byte 0x04000050
_08004C7C: .4byte 0x00003711
_08004C80: .4byte 0x04000054
_08004C84: .4byte 0x04000052
_08004C88: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004C8C
sub_8004C8C: @ 0x08004C8C
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004CB8
	movs r1, #0x90
	strh r1, [r0]
	ldr r0, _08004CBC
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004CC0
	ldr r2, _08004CC4
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CB8: .4byte 0x04000050
_08004CBC: .4byte 0x04000054
_08004CC0: .4byte 0x04000052
_08004CC4: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004CC8
sub_8004CC8: @ 0x08004CC8
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004CF4
	movs r1, #0xd0
	strh r1, [r0]
	ldr r0, _08004CF8
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004CFC
	ldr r2, _08004D00
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CF4: .4byte 0x04000050
_08004CF8: .4byte 0x04000054
_08004CFC: .4byte 0x04000052
_08004D00: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004D04
sub_8004D04: @ 0x08004D04
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004D30
	ldr r2, _08004D34
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08004D38
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08004D3C
	ldr r2, _08004D40
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004D30: .4byte 0x04000050
_08004D34: .4byte 0x00002750
_08004D38: .4byte 0x04000054
_08004D3C: .4byte 0x04000052
_08004D40: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8004D44
sub_8004D44: @ 0x08004D44
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004D8C
	ldr r1, _08004D8C
	ldrh r2, [r1]
	ldr r3, _08004D90
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08004D94
	ldr r1, _08004D94
	ldrh r2, [r1]
	ldr r3, _08004D90
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08004D98
	ldr r1, _08004D98
	ldrh r2, [r1]
	ldr r3, _08004D90
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004D8C: .4byte 0x0400000A
_08004D90: .4byte 0x0000FFBF
_08004D94: .4byte 0x0400000C
_08004D98: .4byte 0x0400000E

	THUMB_FUNC_START sub_8004D9C
sub_8004D9C: @ 0x08004D9C
	push {r7, lr}
	mov r7, sp
	ldr r0, _08004DE4
	ldr r1, _08004DE4
	ldrh r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08004DE8
	ldr r1, _08004DE8
	ldrh r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08004DEC
	ldr r1, _08004DEC
	ldrh r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004DE4: .4byte 0x0400000A
_08004DE8: .4byte 0x0400000C
_08004DEC: .4byte 0x0400000E

	THUMB_FUNC_START sub_8004DF0
sub_8004DF0: @ 0x08004DF0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08004FF0
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _08004FF4
	bl sub_800F35C
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08004FFC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08004FF0
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005000
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005004
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005008
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005004
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800500C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005008
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005010
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005014
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005018
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800501C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005020
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005024
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005028
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005020
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800502C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005030
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005020
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005034
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08005038
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005020
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08005010
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800503C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005014
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08004FF8
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08004FF0
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08005040
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08005044
	ldr r2, _08005048
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800504C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005054
	ldr r2, _08005058
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800505C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005060
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005064
	ldr r2, _08005068
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800506C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005070
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005074
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08005078
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800507C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005080
	movs r1, #0x88
	strh r1, [r0]
	bl sub_8004630
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004FF0: .4byte gUnknown_03001740
_08004FF4: .4byte gUnknown_0807748C
_08004FF8: .4byte 0x040000D4
_08004FFC: .4byte gUnknown_08077494
_08005000: .4byte 0x840000FC
_08005004: .4byte gUnknown_081003F4
_08005008: .4byte 0x84000080
_0800500C: .4byte 0x05000200
_08005010: .4byte gUnknown_080C4A20
_08005014: .4byte 0x84002000
_08005018: .4byte gUnknown_080EDF0C
_0800501C: .4byte 0x0600F800
_08005020: .4byte 0x84000200
_08005024: .4byte gUnknown_080EE7DC
_08005028: .4byte 0x0600F000
_0800502C: .4byte gUnknown_080EF0AC
_08005030: .4byte 0x0600E800
_08005034: .4byte gUnknown_080EF97C
_08005038: .4byte 0x0600E000
_0800503C: .4byte 0x06010000
_08005040: .4byte 0x84000100
_08005044: .4byte 0x04000008
_08005048: .4byte 0x00001F03
_0800504C: .4byte 0x04000010
_08005050: .4byte 0x04000012
_08005054: .4byte 0x0400000A
_08005058: .4byte 0x00001E02
_0800505C: .4byte 0x04000014
_08005060: .4byte 0x04000016
_08005064: .4byte 0x0400000C
_08005068: .4byte 0x00001D01
_0800506C: .4byte 0x04000018
_08005070: .4byte 0x0400001A
_08005074: .4byte 0x0400000E
_08005078: .4byte 0x0400001C
_0800507C: .4byte 0x0400001E
_08005080: .4byte 0x0400004C

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
	bl sub_800D640
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

	THUMB_FUNC_START sub_8006750
sub_8006750: @ 0x08006750
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08006780
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, _08006784
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _08006788
	ldr r0, _08006780
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
	b _080067C4
	.align 2, 0
_08006780: .4byte gUnknown_0801967C
_08006784: .4byte gUnknown_03001730
_08006788:
	bl sub_800465C
	ldr r0, _080067A0
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #6
	beq _080067A4
	b _080067B4
	.align 2, 0
_080067A0: .4byte gUnknown_0801967C
_080067A4:
	bl sub_8006FB0
	ldr r0, _080067B0
	movs r1, #6
	str r1, [r0]
	b _080067B4
	.align 2, 0
_080067B0: .4byte gUnknown_03001730
_080067B4:
	ldr r0, _080067CC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
_080067C4:
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080067CC: .4byte gUnknown_0801967C

	THUMB_FUNC_START sub_80067D0
sub_80067D0: @ 0x080067D0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006880
	ldrb r1, [r0, #1]
	movs r2, #0xef
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006880
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006880
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
	ldr r0, _08006880
	ldrb r1, [r0, #9]
	movs r2, #0xfc
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006880
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006884
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006880
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006888
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800688C
	ldr r1, _08006890
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006894
	ldr r1, _08006898
	movs r2, #1
	bl BgAffineSet
	ldr r0, _0800689C
	ldr r1, _0800689C
	ldrh r2, [r1]
	ldr r3, _080068A0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _080068A4
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006880: .4byte gUnknown_03001740
_08006884: .4byte 0x040000D4
_08006888: .4byte 0x84000100
_0800688C: .4byte gUnknown_03000390
_08006890: .4byte 0x04000020
_08006894: .4byte gUnknown_030003B8
_08006898: .4byte 0x04000030
_0800689C: .4byte 0x0400000C
_080068A0: .4byte 0x0000DFFF
_080068A4: .4byte 0x00001F42

	THUMB_FUNC_START sub_80068A8
sub_80068A8: @ 0x080068A8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006958
	ldrb r1, [r0, #1]
	movs r2, #0xef
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006958
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006958
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
	ldr r0, _08006958
	ldrb r1, [r0, #9]
	movs r2, #0xfc
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006958
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _0800695C
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006958
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006960
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006964
	ldr r1, _08006968
	movs r2, #1
	bl BgAffineSet
	ldr r0, _0800696C
	ldr r1, _08006970
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006974
	ldr r1, _08006974
	ldrh r2, [r1]
	ldr r3, _08006978
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _0800697C
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006958: .4byte gUnknown_03001740
_0800695C: .4byte 0x040000D4
_08006960: .4byte 0x84000100
_08006964: .4byte gUnknown_030003A4
_08006968: .4byte 0x04000020
_0800696C: .4byte gUnknown_030003B8
_08006970: .4byte 0x04000030
_08006974: .4byte 0x0400000C
_08006978: .4byte 0x0000DFFF
_0800697C: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006980
sub_8006980: @ 0x08006980
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006A30
	ldrb r1, [r0, #1]
	movs r2, #0xef
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006A30
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006A30
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
	ldr r0, _08006A30
	ldrb r1, [r0, #9]
	movs r2, #0xfc
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006A30
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006A34
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006A30
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006A38
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006A3C
	ldr r1, _08006A40
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006A44
	ldr r1, _08006A48
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006A4C
	ldr r1, _08006A4C
	ldrh r2, [r1]
	ldr r3, _08006A50
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08006A54
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006A30: .4byte gUnknown_03001740
_08006A34: .4byte 0x040000D4
_08006A38: .4byte 0x84000100
_08006A3C: .4byte gUnknown_030003A4
_08006A40: .4byte 0x04000020
_08006A44: .4byte gUnknown_030003CC
_08006A48: .4byte 0x04000030
_08006A4C: .4byte 0x0400000C
_08006A50: .4byte 0x0000DFFF
_08006A54: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006A58
sub_8006A58: @ 0x08006A58
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006B10
	ldrb r1, [r0, #1]
	movs r2, #0xef
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006B10
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006B10
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
	ldr r0, _08006B10
	ldrb r1, [r0, #9]
	movs r2, #0xfc
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006B10
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006B14
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006B10
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006B18
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006B1C
	ldr r1, _08006B20
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006B24
	ldr r1, _08006B28
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006B2C
	ldr r1, _08006B2C
	ldrh r2, [r1]
	ldr r3, _08006B30
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08006B34
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006B10: .4byte gUnknown_03001740
_08006B14: .4byte 0x040000D4
_08006B18: .4byte 0x84000100
_08006B1C: .4byte gUnknown_030003A4
_08006B20: .4byte 0x04000020
_08006B24: .4byte gUnknown_030003CC
_08006B28: .4byte 0x04000030
_08006B2C: .4byte 0x0400000C
_08006B30: .4byte 0x0000DFFF
_08006B34: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006B38
sub_8006B38: @ 0x08006B38
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006BF8
	ldrb r1, [r0, #1]
	movs r2, #0xef
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006BF8
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006BF8
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
	ldr r0, _08006BF8
	ldrb r1, [r0, #9]
	movs r2, #0xfc
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006BF8
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006BFC
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006BF8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006C00
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006C04
	ldr r1, _08006C08
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006C0C
	ldr r1, _08006C10
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006C14
	ldr r1, _08006C14
	ldrh r2, [r1]
	ldr r3, _08006C18
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08006C1C
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006BF8: .4byte gUnknown_03001740
_08006BFC: .4byte 0x040000D4
_08006C00: .4byte 0x84000100
_08006C04: .4byte gUnknown_030003A4
_08006C08: .4byte 0x04000020
_08006C0C: .4byte gUnknown_030003CC
_08006C10: .4byte 0x04000030
_08006C14: .4byte 0x0400000C
_08006C18: .4byte 0x0000DFFF
_08006C1C: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006C20
sub_8006C20: @ 0x08006C20
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006CD8
	ldrb r1, [r0, #1]
	movs r2, #0xef
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006CD8
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x3a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006CD8
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
	ldr r0, _08006CD8
	ldrb r1, [r0, #9]
	movs r2, #3
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006CD8
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006CDC
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006CD8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006CE0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006CE4
	ldr r1, _08006CE8
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006CEC
	ldr r1, _08006CF0
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006CF4
	ldr r1, _08006CF4
	ldrh r2, [r1]
	ldr r3, _08006CF8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08006CFC
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006CD8: .4byte gUnknown_03001740
_08006CDC: .4byte 0x040000D4
_08006CE0: .4byte 0x84000100
_08006CE4: .4byte gUnknown_030003A4
_08006CE8: .4byte 0x04000020
_08006CEC: .4byte gUnknown_030003CC
_08006CF0: .4byte 0x04000030
_08006CF4: .4byte 0x0400000C
_08006CF8: .4byte 0x0000DFFF
_08006CFC: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006D00
sub_8006D00: @ 0x08006D00
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006DB8
	ldrb r1, [r0, #1]
	movs r2, #0x10
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006DB8
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x3a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006DB8
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
	ldr r0, _08006DB8
	ldrb r1, [r0, #9]
	movs r2, #3
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006DB8
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006DBC
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006DB8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006DC0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006DC4
	ldr r1, _08006DC8
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006DCC
	ldr r1, _08006DD0
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006DD4
	ldr r1, _08006DD4
	ldrh r2, [r1]
	ldr r3, _08006DD8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08006DDC
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006DB8: .4byte gUnknown_03001740
_08006DBC: .4byte 0x040000D4
_08006DC0: .4byte 0x84000100
_08006DC4: .4byte gUnknown_030003A4
_08006DC8: .4byte 0x04000020
_08006DCC: .4byte gUnknown_030003CC
_08006DD0: .4byte 0x04000030
_08006DD4: .4byte 0x0400000C
_08006DD8: .4byte 0x0000DFFF
_08006DDC: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006DE0
sub_8006DE0: @ 0x08006DE0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006EA0
	ldrb r1, [r0, #1]
	movs r2, #0x10
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006EA0
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x3a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006EA0
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
	ldr r0, _08006EA0
	ldrb r1, [r0, #9]
	movs r2, #0xfc
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006EA0
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006EA4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006EA0
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006EA8
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006EAC
	ldr r1, _08006EB0
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006EB4
	ldr r1, _08006EB8
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006EBC
	ldr r1, _08006EBC
	ldrh r2, [r1]
	ldr r3, _08006EC0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08006EC4
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006EA0: .4byte gUnknown_03001740
_08006EA4: .4byte 0x040000D4
_08006EA8: .4byte 0x84000100
_08006EAC: .4byte gUnknown_030003A4
_08006EB0: .4byte 0x04000020
_08006EB4: .4byte gUnknown_030003CC
_08006EB8: .4byte 0x04000030
_08006EBC: .4byte 0x0400000C
_08006EC0: .4byte 0x0000DFFF
_08006EC4: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006EC8
sub_8006EC8: @ 0x08006EC8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08006F8C
	ldrb r1, [r0, #1]
	movs r2, #0x10
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08006F8C
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x3a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08006F8C
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
	ldr r0, _08006F8C
	ldrb r1, [r0, #9]
	movs r2, #0xfc
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08006F8C
	ldrb r1, [r0, #0xb]
	movs r2, #0xf1
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08006F90
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08006F8C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08006F94
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08006F98
	ldr r1, _08006F9C
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006FA0
	ldr r1, _08006FA4
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08006FA8
	ldr r1, _08006FA8
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08006FAC
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006F8C: .4byte gUnknown_03001740
_08006F90: .4byte 0x040000D4
_08006F94: .4byte 0x84000100
_08006F98: .4byte gUnknown_030003A4
_08006F9C: .4byte 0x04000020
_08006FA0: .4byte gUnknown_030003CC
_08006FA4: .4byte 0x04000030
_08006FA8: .4byte 0x0400000C
_08006FAC: .4byte 0x00001F42

	THUMB_FUNC_START sub_8006FB0
sub_8006FB0: @ 0x08006FB0
	push {r4, r7, lr}
	sub sp, #0x1c
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _0800738C
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _08007390
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _08007394
	bl sub_800F35C
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #4]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #4]
	ldr r0, _08007390
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	ldrh r1, [r0, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _08007390
	ldrb r1, [r0, #5]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #5]
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0x80
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007390
	ldrb r1, [r0, #9]
	movs r2, #0xdf
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _08007390
	ldrb r1, [r0, #0xd]
	movs r2, #0xf0
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xd]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #0xc]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0x40
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #0x14]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x14]
	ldr r0, _08007390
	ldrb r1, [r0, #0x11]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x11]
	ldr r0, _08007390
	ldrb r1, [r0, #0x13]
	movs r2, #0xc0
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x13]
	ldr r0, _08007390
	ldrb r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x10]
	ldr r0, _08007390
	ldrh r1, [r0, #0x12]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xae
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x12]
	ldr r0, _08007390
	ldrb r1, [r0, #0x15]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x15]
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0x40
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x1c]
	ldr r0, _08007390
	ldrb r1, [r0, #0x19]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x19]
	ldr r0, _08007390
	ldrb r1, [r0, #0x1b]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x1b]
	ldr r0, _08007390
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x7a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, _08007390
	ldrh r1, [r0, #0x1a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xae
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x1a]
	ldr r0, _08007390
	ldrb r1, [r0, #0x1d]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1d]
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0x20
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #0x24]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x24]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x23
	ldrb r1, [r0]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
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
	ldr r0, _08007390
	ldrh r1, [r0, #0x22]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xce
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x22]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x25
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0x10
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #0x2c]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x2c]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x7a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	ldrh r1, [r0, #0x2a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xde
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x2a]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #8
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #0x34]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x34]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x31
	ldrb r1, [r0]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x33
	ldrb r1, [r0]
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x8a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	ldrh r1, [r0, #0x32]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xde
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x32]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x35
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	adds r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r2, #0xdf
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	adds r1, r0, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	movs r2, #0xf0
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007390
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0, #0x3c]
	movs r3, #0xfc
	lsls r3, r3, #8
	b _08007398
	.align 2, 0
_0800738C: .4byte gUnknown_08019738
_08007390: .4byte gUnknown_03001740
_08007394: .4byte gUnknown_08077464
_08007398:
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x3c]
	ldr r0, _08007674
	adds r1, r0, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007674
	ldrh r1, [r0, #0x3a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xae
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x3a]
	ldr r0, _08007674
	adds r1, r0, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	ldr r1, _08007678
	movs r2, #2
	movs r3, #8
	bl ObjAffineSet
	bl sub_8004630
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _08007680
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007684
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _08007688
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, _0800768C
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007684
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _08007690
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, _08007694
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007698
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _0800769C
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076A0
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076A4
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, _080076A8
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076AC
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076B0
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, _080076B4
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076B8
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _080076BC
	str r0, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076C0
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076C4
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r0, r2
	str r1, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076C8
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076B8
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r0, r3
	str r1, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076CC
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076B8
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r0, r4
	str r1, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076D0
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076D4
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r0, r2
	str r1, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076D8
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007684
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r0, r3
	str r1, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076DC
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076E0
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r0, r4
	str r1, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076E4
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076E8
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	adds r1, #0x80
	str r1, [r7, #0x10]
	ldr r0, _0800767C
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	ldr r1, _080076EC
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #4
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080076B8
	str r1, [r0]
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r0, r2
	str r1, [r7, #0x10]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _080076F0
	ldr r3, _080076F4
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _080076F8
	ldr r4, _080076FC
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _08007700
	movs r2, #0x88
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_8004630
	add sp, #0x1c
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007674: .4byte gUnknown_03001740
_08007678: .4byte gUnknown_03001746
_0800767C: .4byte 0x040000D4
_08007680: .4byte gUnknown_081007F4
_08007684: .4byte 0x84000080
_08007688: .4byte gUnknown_080BDF80
_0800768C: .4byte 0x05000200
_08007690: .4byte gUnknown_080BCF40
_08007694: .4byte 0x050003E0
_08007698: .4byte 0x84000008
_0800769C: .4byte gUnknown_080D527C
_080076A0: .4byte 0x84002000
_080076A4: .4byte gUnknown_080F96F8
_080076A8: .4byte 0x0600A800
_080076AC: .4byte 0x84001000
_080076B0: .4byte gUnknown_080F6A6C
_080076B4: .4byte 0x0600E800
_080076B8: .4byte 0x84000200
_080076BC: .4byte 0x06010000
_080076C0: .4byte gUnknown_080BE180
_080076C4: .4byte 0x84000400
_080076C8: .4byte gUnknown_080BCF60
_080076CC: .4byte gUnknown_080C1780
_080076D0: .4byte gUnknown_080C2180
_080076D4: .4byte 0x84000100
_080076D8: .4byte gUnknown_080C2780
_080076DC: .4byte gUnknown_080C2B80
_080076E0: .4byte 0x84000040
_080076E4: .4byte gUnknown_080C2E80
_080076E8: .4byte 0x84000020
_080076EC: .4byte gUnknown_080BD780
_080076F0: .4byte 0x0400000C
_080076F4: .4byte 0x00001D82
_080076F8: .4byte 0x0400000E
_080076FC: .4byte 0x0000D581
_08007700: .4byte 0x0400004C

	THUMB_FUNC_START sub_8007704
sub_8007704: @ 0x08007704
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08007734
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, _08007738
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _0800773C
	ldr r0, _08007734
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
	b _08007778
	.align 2, 0
_08007734: .4byte gUnknown_08019790
_08007738: .4byte gUnknown_03001730
_0800773C:
	bl sub_800465C
	ldr r0, _08007754
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #7
	beq _08007758
	b _08007768
	.align 2, 0
_08007754: .4byte gUnknown_08019790
_08007758:
	bl sub_8007998
	ldr r0, _08007764
	movs r1, #7
	str r1, [r0]
	b _08007768
	.align 2, 0
_08007764: .4byte gUnknown_03001730
_08007768:
	ldr r0, _08007780
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
_08007778:
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007780: .4byte gUnknown_08019790

	THUMB_FUNC_START sub_8007784
sub_8007784: @ 0x08007784
	push {r7, lr}
	mov r7, sp
	ldr r0, _080077B8
	ldr r1, _080077BC
	movs r2, #1
	bl BgAffineSet
	ldr r0, _080077C0
	ldr r1, _080077C0
	ldrh r2, [r1]
	ldr r3, _080077C4
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _080077C8
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _080077CC
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080077B8: .4byte gUnknown_030003E0
_080077BC: .4byte 0x04000020
_080077C0: .4byte 0x0400000C
_080077C4: .4byte 0x0000FFBF
_080077C8: .4byte 0x04000050
_080077CC: .4byte 0x00000443

	THUMB_FUNC_START sub_80077D0
sub_80077D0: @ 0x080077D0
	push {r7, lr}
	mov r7, sp
	ldr r0, _08007804
	ldr r1, _08007808
	movs r2, #1
	bl BgAffineSet
	ldr r0, _0800780C
	ldr r1, _0800780C
	ldrh r2, [r1]
	ldr r3, _08007810
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007814
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007818
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007804: .4byte gUnknown_030003E0
_08007808: .4byte 0x04000020
_0800780C: .4byte 0x0400000C
_08007810: .4byte 0x0000FFBF
_08007814: .4byte 0x04000050
_08007818: .4byte 0x00001443

	THUMB_FUNC_START sub_800781C
sub_800781C: @ 0x0800781C
	push {r7, lr}
	mov r7, sp
	ldr r0, _08007850
	ldr r1, _08007854
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08007858
	ldr r1, _08007858
	ldrh r2, [r1]
	ldr r3, _0800785C
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007860
	movs r1, #0xa7
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007864
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007850: .4byte gUnknown_030003E0
_08007854: .4byte 0x04000020
_08007858: .4byte 0x0400000C
_0800785C: .4byte 0x0000FFBF
_08007860: .4byte 0x04000050
_08007864: .4byte 0x00001443

	THUMB_FUNC_START sub_8007868
sub_8007868: @ 0x08007868
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800789C
	ldr r1, _080078A0
	movs r2, #1
	bl BgAffineSet
	ldr r0, _080078A4
	ldr r1, _080078A4
	ldrh r2, [r1]
	ldr r3, _080078A8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _080078AC
	movs r1, #0xe7
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _080078B0
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800789C: .4byte gUnknown_030003E0
_080078A0: .4byte 0x04000020
_080078A4: .4byte 0x0400000C
_080078A8: .4byte 0x0000FFBF
_080078AC: .4byte 0x04000050
_080078B0: .4byte 0x00001443

	THUMB_FUNC_START sub_80078B4
sub_80078B4: @ 0x080078B4
	push {r7, lr}
	mov r7, sp
	ldr r0, _080078EC
	ldr r1, _080078F0
	movs r2, #1
	bl BgAffineSet
	ldr r0, _080078F4
	ldr r1, _080078F4
	ldrh r2, [r1]
	ldr r3, _080078F8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _080078FC
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007900
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080078EC: .4byte gUnknown_030003E0
_080078F0: .4byte 0x04000020
_080078F4: .4byte 0x0400000C
_080078F8: .4byte 0x0000FFBF
_080078FC: .4byte 0x04000050
_08007900: .4byte 0x00001443

	THUMB_FUNC_START sub_8007904
sub_8007904: @ 0x08007904
	push {r7, lr}
	mov r7, sp
	ldr r0, _08007938
	ldr r1, _0800793C
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08007940
	ldr r1, _08007940
	ldrh r2, [r1]
	ldr r3, _08007944
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007948
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _0800794C
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007938: .4byte gUnknown_030003F4
_0800793C: .4byte 0x04000020
_08007940: .4byte 0x0400000C
_08007944: .4byte 0x0000FFBF
_08007948: .4byte 0x04000050
_0800794C: .4byte 0x00001443

	THUMB_FUNC_START sub_8007950
sub_8007950: @ 0x08007950
	push {r7, lr}
	mov r7, sp
	ldr r0, _08007984
	ldr r1, _08007988
	movs r2, #1
	bl BgAffineSet
	ldr r0, _0800798C
	ldr r1, _0800798C
	ldrh r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08007990
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007994
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007984: .4byte gUnknown_03000408
_08007988: .4byte 0x04000020
_0800798C: .4byte 0x0400000C
_08007990: .4byte 0x04000050
_08007994: .4byte 0x00001443

	THUMB_FUNC_START sub_8007998
sub_8007998: @ 0x08007998
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _08007BEC
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _08007BF0
	bl sub_800F35C
	ldr r0, _08007BEC
	ldrh r1, [r0, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #4]
	ldr r0, _08007BEC
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x50
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08007BEC
	ldrh r1, [r0, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x70
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _08007BEC
	ldrb r1, [r0, #5]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #5]
	ldr r0, _08007BEC
	ldrh r1, [r0, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	ldr r0, _08007BEC
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x46
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08007BEC
	ldrh r1, [r0, #0xa]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x66
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	ldr r0, _08007BEC
	ldrb r1, [r0, #0xd]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xd]
	ldr r0, _08007BEC
	ldrh r1, [r0, #0x14]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x14]
	ldr r0, _08007BEC
	ldrb r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x3c
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x10]
	ldr r0, _08007BEC
	ldrh r1, [r0, #0x12]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5c
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x12]
	ldr r0, _08007BEC
	ldrb r1, [r0, #0x15]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x15]
	ldr r0, _08007BEC
	ldrh r1, [r0, #0x1c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x1c]
	ldr r0, _08007BEC
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x32
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, _08007BEC
	ldrh r1, [r0, #0x1a]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x52
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x1a]
	ldr r0, _08007BEC
	ldrb r1, [r0, #0x1d]
	movs r2, #0xc
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1d]
	bl sub_8004630
	ldr r0, _08007BF4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08007BF8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007BFC
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08007BF4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08007C00
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08007C04
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007BFC
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08007BF4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08007C08
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007C0C
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08007BF4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08007C10
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _08007C14
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007C18
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08007BF4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _08007BEC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007C1C
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08007C20
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007C24
	movs r1, #0x81
	strh r1, [r0]
	ldr r0, _08007C28
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _08007C2C
	ldr r2, _08007C30
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_8004630
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007BEC: .4byte gUnknown_03001740
_08007BF0: .4byte gUnknown_08077464
_08007BF4: .4byte 0x040000D4
_08007BF8: .4byte gUnknown_081003F4
_08007BFC: .4byte 0x84000080
_08007C00: .4byte gUnknown_080BDF80
_08007C04: .4byte 0x05000200
_08007C08: .4byte gUnknown_08083340
_08007C0C: .4byte 0x84004B00
_08007C10: .4byte gUnknown_080BE180
_08007C14: .4byte 0x06014000
_08007C18: .4byte 0x84000400
_08007C1C: .4byte 0x84000100
_08007C20: .4byte 0x0400000C
_08007C24: .4byte 0x0400004C
_08007C28: .4byte 0x04000054
_08007C2C: .4byte 0x04000052
_08007C30: .4byte 0x00000C0C

	THUMB_FUNC_START sub_8007C34
sub_8007C34: @ 0x08007C34
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08007C64
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, _08007C68
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _08007C6C
	ldr r0, _08007C64
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
	b _08007CA8
	.align 2, 0
_08007C64: .4byte gUnknown_08019804
_08007C68: .4byte gUnknown_03001730
_08007C6C:
	bl sub_800465C
	ldr r0, _08007C84
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #8
	beq _08007C88
	b _08007C98
	.align 2, 0
_08007C84: .4byte gUnknown_08019804
_08007C88:
	bl sub_8007CE4
	ldr r0, _08007C94
	movs r1, #8
	str r1, [r0]
	b _08007C98
	.align 2, 0
_08007C94: .4byte gUnknown_03001730
_08007C98:
	ldr r0, _08007CB0
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
_08007CA8:
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007CB0: .4byte gUnknown_08019804

	THUMB_FUNC_START sub_8007CB4
sub_8007CB4: @ 0x08007CB4
	push {r7, lr}
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007CC8
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007CC8: .4byte 0x00001444

	THUMB_FUNC_START sub_8007CCC
sub_8007CCC: @ 0x08007CCC
	push {r7, lr}
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007CE0
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007CE0: .4byte 0x00001454

	THUMB_FUNC_START sub_8007CE4
sub_8007CE4: @ 0x08007CE4
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	ldr r0, _08007EC8
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _08007ECC
	bl sub_800F35C
	ldr r0, _08007EC8
	ldrh r1, [r0, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	ldr r0, _08007EC8
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x5a
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, _08007EC8
	ldrh r1, [r0, #0xa]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	ldr r0, _08007EC8
	ldrb r1, [r0, #0xd]
	movs r2, #0xf3
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xd]
	adds r0, r7, #0
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0]
	adds r0, r7, #0
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0, #4]
	adds r0, r7, #0
	ldrh r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x78
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #8]
	adds r0, r7, #0
	ldrh r1, [r0, #0xa]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x50
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
	ldr r0, _08007ED0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08007ED4
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007ED8
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _08007ED0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08007EDC
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08007EE0
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007ED8
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08007ED0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08007EE4
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007EE8
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08007ED0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08007EEC
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08007EF0
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007EE8
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08007ED0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08007EF4
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08007EF8
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007EFC
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _08007ED0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08007EC8
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08007F00
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08007F04
	movs r1, #2
	strh r1, [r0]
	adds r0, r7, #0
	ldr r1, _08007F08
	movs r2, #1
	bl BgAffineSet
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007EC8: .4byte gUnknown_03001740
_08007ECC: .4byte gUnknown_08077464
_08007ED0: .4byte 0x040000D4
_08007ED4: .4byte gUnknown_08095F40
_08007ED8: .4byte 0x84000080
_08007EDC: .4byte gUnknown_080C0380
_08007EE0: .4byte 0x05000200
_08007EE4: .4byte gUnknown_08096140
_08007EE8: .4byte 0x84002580
_08007EEC: .4byte gUnknown_0809F940
_08007EF0: .4byte 0x0600A000
_08007EF4: .4byte gUnknown_080C0580
_08007EF8: .4byte 0x06014000
_08007EFC: .4byte 0x84000400
_08007F00: .4byte 0x84000100
_08007F04: .4byte 0x0400000C
_08007F08: .4byte 0x04000020

	THUMB_FUNC_START sub_8007F0C
sub_8007F0C: @ 0x08007F0C
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08007F3C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, _08007F40
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _08007F44
	ldr r0, _08007F3C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
	b _08007F80
	.align 2, 0
_08007F3C: .4byte gUnknown_08019838
_08007F40: .4byte gUnknown_03001730
_08007F44:
	bl sub_800465C
	ldr r0, _08007F5C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #9
	beq _08007F60
	b _08007F70
	.align 2, 0
_08007F5C: .4byte gUnknown_08019838
_08007F60:
	bl sub_8007FBC
	ldr r0, _08007F6C
	movs r1, #9
	str r1, [r0]
	b _08007F70
	.align 2, 0
_08007F6C: .4byte gUnknown_03001730
_08007F70:
	ldr r0, _08007F88
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
_08007F80:
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007F88: .4byte gUnknown_08019838

	THUMB_FUNC_START sub_8007F8C
sub_8007F8C: @ 0x08007F8C
	push {r7, lr}
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007FA0
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007FA0: .4byte 0x00000405

	THUMB_FUNC_START sub_8007FA4
sub_8007FA4: @ 0x08007FA4
	push {r7, lr}
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007FB8
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007FB8: .4byte 0x00000415

	THUMB_FUNC_START sub_8007FBC
sub_8007FBC: @ 0x08007FBC
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	ldr r0, _080080E8
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _080080EC
	bl sub_800F35C
	adds r0, r7, #0
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0]
	adds r0, r7, #0
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #4]
	adds r0, r7, #0
	ldrh r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x78
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #8]
	adds r0, r7, #0
	ldrh r1, [r0, #0xa]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x50
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
	ldr r0, _080080F0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _080080F4
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080080F8
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _080080F0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _080080FC
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08008100
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _080080F0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08008104
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08008108
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08008100
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r1, _0800810C
	adds r0, r1, #0
	bl sub_80045B8
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08008110
	movs r1, #2
	strh r1, [r0]
	adds r0, r7, #0
	ldr r1, _08008114
	movs r2, #1
	bl BgAffineSet
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080080E8: .4byte gUnknown_03001740
_080080EC: .4byte gUnknown_08077464
_080080F0: .4byte 0x040000D4
_080080F4: .4byte gUnknown_081003F4
_080080F8: .4byte 0x84000080
_080080FC: .4byte gUnknown_080A8F40
_08008100: .4byte 0x84002800
_08008104: .4byte gUnknown_080B2F40
_08008108: .4byte 0x0600A000
_0800810C: .4byte 0x06014000
_08008110: .4byte 0x0400000C
_08008114: .4byte 0x04000020

	THUMB_FUNC_START sub_8008118
sub_8008118: @ 0x08008118
	push {r4, r5, r7, lr}
	sub sp, #0xa4
	mov r7, sp
	ldr r0, _0800813C
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r7]
	str r2, [r7, #4]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, _08008140
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _08008144
	movs r1, #0x11
	b _08008146
	.align 2, 0
_0800813C: .4byte gUnknown_08077884
_08008140: .4byte gUnknown_03002BB0
_08008144:
	movs r1, #8
_08008146:
	str r1, [r0]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, _080081D8
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r1, _080081DC
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	ldr r3, _080081E0
	adds r2, r1, r3
	str r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, _080081E4
	str r0, [r1]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	ldr r1, _080081E8
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #4
	ldr r1, _080081EC
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080081F0
	str r1, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r7, #0
	bl sub_800F35C
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, _080081F4
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _080081F8
	movs r1, #9
	b _080081FA
	.align 2, 0
_080081D8: .4byte 0x0400010C
_080081DC: .4byte 0x04000108
_080081E0: .4byte 0xFFFF003C
_080081E4: .4byte 0x040000D4
_080081E8: .4byte gUnknown_080C48A0
_080081EC: .4byte 0x06017E80
_080081F0: .4byte 0x84000060
_080081F4: .4byte gUnknown_03002BB0
_080081F8:
	movs r1, #0
_080081FA:
	str r1, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x96
	lsls r1, r1, #2
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #4]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #2]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0xc]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0xa]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0xa]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0, #0x14]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _080086D4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x14]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x12]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x12]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x10]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x1c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x1c]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x1a]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x1a]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x24]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x24]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x22]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x22]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0, #0x2c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _080086D4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x2c]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x2a]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x2a]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x94
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x34]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x34]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x32]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x32]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x94
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x3c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x3c]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x3a]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x3a]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _080086D8
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _08008600
	b _08008A46
_08008600:
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x44
	ldrh r1, [r0]
	ldr r2, _080086DC
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x42
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _080086D8
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x96
	lsls r1, r1, #2
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r1, r2, r0
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x4c
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x4a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	b _080086E0
	.align 2, 0
_080086D4: .4byte 0x000003FE
_080086D8: .4byte gUnknown_03002BB0
_080086DC: .4byte 0x000003FF
_080086E0:
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _08008ABC
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x54
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x52
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x50
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08008AC0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x5a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _08008ABC
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r1, r2, r0
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x64
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x62
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x60
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _08008ABC
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x6c
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x6a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08008AC0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x72
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x70
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x7a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x78
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x84
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x82
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
_08008A46:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, _08008AC4
	str r0, [r1]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #4
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, _08008AC8
	subs r1, r2, r1
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #1
	movs r2, #0x84
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r2, #0
	b _08008ACC
	.align 2, 0
_08008ABC: .4byte gUnknown_03002BB0
_08008AC0: .4byte 0x000003FE
_08008AC4: .4byte 0x040000D4
_08008AC8: .4byte 0x07000400
_08008ACC:
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	add sp, #0xa4
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008ADC
sub_8008ADC: @ 0x08008ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08008B24
	movs r2, #8
	bl memcpy
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, _08008B28
	movs r2, #8
	bl memcpy
	ldr r0, _08008B2C
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _08008B30
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B34
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r7, #0x24]
	b _08008B38
	.align 2, 0
_08008B24: .4byte gUnknown_08077898
_08008B28: .4byte gUnknown_080778A0
_08008B2C: .4byte 0x04000084
_08008B30: .4byte 0x04000080
_08008B34:
	movs r2, #0
	str r2, [r7, #0x24]
_08008B38:
	ldr r3, [r7, #0x24]
	mov sl, r3
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x20
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B54
	movs r1, #0x80
	lsls r1, r1, #7
	mov r2, sl
	orrs r2, r1
	mov sl, r2
_08008B54:
	mov sb, sl
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #8
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B6E
	movs r1, #0x80
	lsls r1, r1, #6
	mov r3, sb
	orrs r3, r1
	mov sb, r3
_08008B6E:
	mov r8, sb
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #2
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B88
	movs r1, #0x80
	lsls r1, r1, #5
	mov r2, r8
	orrs r2, r1
	mov r8, r2
_08008B88:
	mov r6, r8
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B9E
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r6, r1
_08008B9E:
	adds r5, r6, #0
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x10
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008BB4
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r5, r1
_08008BB4:
	adds r4, r5, #0
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #4
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008BCA
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r4, r1
_08008BCA:
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	lsrs r3, r2, #8
	str r3, [r7, #0x28]
	movs r1, #7
	ldr r2, [r7, #0x28]
	ands r2, r1
	str r2, [r7, #0x28]
	ldr r3, [r7, #0x28]
	lsls r3, r3, #4
	str r3, [r7, #0x28]
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	movs r1, #7
	adds r3, r2, #0
	ands r3, r1
	str r3, [r7, #0x2c]
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C12
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r7, #0x28]
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	ldr r3, [r7, #0x2c]
	orrs r3, r2
	adds r1, r3, #0
	b _08008C1C
_08008C12:
	ldr r2, [r7, #0x28]
	orrs r2, r4
	ldr r3, [r7, #0x2c]
	orrs r3, r2
	adds r1, r3, #0
_08008C1C:
	strh r1, [r0]
	ldr r0, _08008C38
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C3C
	movs r1, #0xe0
	lsls r1, r1, #8
	str r1, [r7, #0x38]
	b _08008C42
	.align 2, 0
_08008C38: .4byte 0x04000082
_08008C3C:
	movs r2, #0xc0
	lsls r2, r2, #8
	str r2, [r7, #0x38]
_08008C42:
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C5E
	movs r1, #0xc0
	lsls r1, r1, #5
	ldr r3, [r7, #0x38]
	orrs r3, r1
	str r3, [r7, #0x34]
	b _08008C68
_08008C5E:
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r2, [r7, #0x38]
	orrs r2, r1
	str r2, [r7, #0x34]
_08008C68:
	ldr r3, [r7, #0x34]
	str r3, [r7, #0x30]
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C86
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r2, [r7, #0x30]
	orrs r2, r1
	str r2, [r7, #0x30]
_08008C86:
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	movs r1, #0xf
	adds r3, r2, #0
	ands r3, r1
	str r3, [r7, #0x3c]
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008CB6
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r7, #0x3c]
	orrs r1, r2
	ldr r2, [r7, #0x30]
	orrs r2, r1
	adds r1, r2, #0
	b _08008CBE
_08008CB6:
	ldr r2, [r7, #0x30]
	ldr r3, [r7, #0x3c]
	orrs r2, r3
	adds r1, r2, #0
_08008CBE:
	strh r1, [r0]
	ldr r0, _08008F38
	movs r1, #8
	strh r1, [r0]
	ldr r0, _08008F3C
	ldr r2, _08008F40
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08008F44
	adds r1, r7, #0
	adds r1, #8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	movs r2, #3
	mov ip, r2
	mov r2, ip
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08008F48
	ldr r3, _08008F40
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _08008F4C
	adds r1, r7, #0
	adds r1, #8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #2
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08008F50
	movs r1, #0xe0
	strh r1, [r0]
	ldr r0, _08008F54
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F58
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F5C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F60
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F50
	movs r1, #0xa0
	strh r1, [r0]
	ldr r0, _08008F54
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F58
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F5C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F60
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F64
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08008F68
	adds r1, r7, #0
	adds r1, #8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #4
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08008F6C
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _08008F70
	ldr r2, _08008F74
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	adds r1, r2, #1
	ldrb r2, [r0, #1]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r0, r1, #0x18
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	lsls r1, r2, #0x10
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	lsls r1, r2, #8
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	orrs r0, r2
	str r0, [r7, #0x18]
	ldr r0, _08008F78
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F7C
	adds r1, r7, #0
	adds r1, #0x18
	str r1, [r0]
	ldr r0, _08008F80
	ldr r1, _08008F84
	str r1, [r0]
	ldr r0, _08008F78
	movs r1, #0xb7
	lsls r1, r1, #0x18
	str r1, [r0]
	ldr r0, _08008F88
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F88
	adds r1, r7, #0
	adds r1, #0x10
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #8
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	adds r1, r2, #1
	ldrb r2, [r0, #1]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r0, r1, #0x18
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	lsls r1, r2, #0x10
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	lsls r1, r2, #8
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	orrs r0, r2
	str r0, [r7, #0x1c]
	ldr r0, _08008F8C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F90
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [r0]
	ldr r0, _08008F94
	ldr r1, _08008F98
	str r1, [r0]
	ldr r0, _08008F8C
	movs r1, #0xb7
	lsls r1, r1, #0x18
	str r1, [r0]
	ldr r0, _08008F9C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F9C
	adds r1, r7, #0
	adds r1, #0x10
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #8
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r0]
	bl sub_800EC94
	ldr r0, _08008FA0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08008F78
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F8C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F88
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F9C
	movs r1, #0
	str r1, [r0]
	movs r0, #0
	b _08008FA4
	.align 2, 0
_08008F38: .4byte 0x04000060
_08008F3C: .4byte 0x04000062
_08008F40: .4byte 0x0000F080
_08008F44: .4byte 0x04000064
_08008F48: .4byte 0x04000068
_08008F4C: .4byte 0x0400006C
_08008F50: .4byte 0x04000070
_08008F54: .4byte 0x04000090
_08008F58: .4byte 0x04000094
_08008F5C: .4byte 0x04000098
_08008F60: .4byte 0x0400009C
_08008F64: .4byte 0x04000072
_08008F68: .4byte 0x04000074
_08008F6C: .4byte 0x04000078
_08008F70: .4byte 0x0400007C
_08008F74: .4byte 0x00008037
_08008F78: .4byte 0x040000C4
_08008F7C: .4byte 0x040000BC
_08008F80: .4byte 0x040000C0
_08008F84: .4byte 0x040000A0
_08008F88: .4byte 0x04000100
_08008F8C: .4byte 0x040000D0
_08008F90: .4byte 0x040000C8
_08008F94: .4byte 0x040000CC
_08008F98: .4byte 0x040000A4
_08008F9C: .4byte 0x04000104
_08008FA0: .4byte 0x04000084
_08008FA4:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8008FB4
sub_8008FB4: @ 0x08008FB4
	push {r4, r7, lr}
	sub sp, #0x28
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, _08008FE8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r2, [r1]
	str r2, [r0]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x10
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x14]
	movs r0, #0
	str r0, [r7]
_08008FE0:
	ldr r0, [r7]
	cmp r0, #3
	bls _08008FEC
	b _08009058
	.align 2, 0
_08008FE8: .4byte gUnknown_080778B0
_08008FEC:
	movs r0, #0
	str r0, [r7, #4]
_08008FF0:
	ldr r0, [r7, #4]
	cmp r0, #3
	bls _08008FF8
	b _08009050
_08008FF8:
	ldr r0, _08009044
	ldr r1, _08009048
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r4, r3, #2
	ldr r3, _0800904C
	adds r2, r4, r3
	ldr r4, [r7, #4]
	lsls r3, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x10
	orrs r3, r4
	bl sub_800F150
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #8]
	ldr r0, [r0]
	cmp r1, r0
	beq _08009036
	movs r0, #1
	ldr r1, [r7, #0x14]
	lsls r0, r1
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
_08009036:
	ldr r0, [r7, #0x14]
	adds r1, r0, #1
	str r1, [r7, #0x14]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08008FF0
	.align 2, 0
_08009044: .4byte sub_800925C
_08009048: .4byte sub_8009294
_0800904C: .4byte 0x04000100
_08009050:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08008FE0
_08009058:
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800906A
_0800906A:
	add sp, #0x28
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8009074
sub_8009074: @ 0x08009074
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8008FB4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08009088
_08009088:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8009090
sub_8009090: @ 0x08009090
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0
	str r0, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _080090D8
	ldr r1, _080090DC
	ldr r2, _080090E0
	movs r3, #0
	bl sub_800F150
	str r0, [r7]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	beq _080090C6
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #4]
_080090C6:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _080090E4
	.align 2, 0
_080090D8: .4byte sub_8009294
_080090DC: .4byte sub_80092FC
_080090E0: .4byte 0x0000FFFE
_080090E4:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80090EC
sub_80090EC: @ 0x080090EC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8009090
	adds r1, r0, #0
	adds r0, r1, #0
	b _08009100
_08009100:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8009108
sub_8009108: @ 0x08009108
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #4]
_08009122:
	ldr r0, [r7, #4]
	cmp r0, #3
	bls _0800912A
	b _08009224
_0800912A:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _08009208
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800920C
	movs r1, #8
	ldr r2, [r7, #4]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _08009208
	adds r1, r0, r2
	ldr r0, _08009210
	str r0, [r1]
	ldr r0, _08009214
	ldr r1, _08009218
	ldr r2, _0800921C
	movs r3, #0
	bl sub_800F150
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _08009208
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800920C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #8
	ldr r2, [r7, #4]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	bne _08009194
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #1
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_08009194:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _08009208
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800920C
	movs r1, #8
	ldr r2, [r7, #4]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _08009208
	adds r1, r0, r2
	ldr r0, _08009220
	str r0, [r1]
	ldr r0, _08009214
	ldr r1, _08009218
	ldr r2, _0800921C
	movs r3, #0
	bl sub_800F150
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _08009208
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800920C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #8
	ldr r2, [r7, #4]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	beq _080091FE
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #2
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_080091FE:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08009122
	.align 2, 0
_08009208: .4byte 0x04000100
_0800920C: .4byte 0x04000202
_08009210: .4byte 0x00C0F000
_08009214: .4byte sub_80092FC
_08009218: .4byte 0x08009308
_0800921C: .4byte 0x0000040A
_08009220: .4byte 0x0080F000
_08009224:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _08009236
_08009236:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8009240
sub_8009240: @ 0x08009240
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8009108
	adds r1, r0, #0
	adds r0, r1, #0
	b _08009254
_08009254:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	ARM_FUNC_START sub_800925C
sub_800925C: @ sub_800925C
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #0x400
	mov r4, r0
	mov r5, #0
	str r5, [r4]
	str r1, [r4]
_08009274:
	subs r2, r2, #1
	bne _08009274
	mov r0, r0
	mov r0, r0
	ldrh r0, [r4]
	str r5, [r4]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	ARM_FUNC_START sub_8009294
sub_8009294: @ sub_8009294
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #0x400
	ldr r4, _080092F8
	mov fp, #0
	str fp, [r4]
	str fp, [r4, #4]
	str fp, [r4, #8]
	str fp, [r4, #0xc]
	mov r5, #0x840000
	str r5, [r4, #0xc]
	orr r5, r5, r0
	str r5, [r4, #8]
	str r5, [r4, #4]
	str r5, [r4]
_080092CC:
	subs r2, r2, #1
	bne _080092CC
	mov r0, r0
	mov r0, r0
	ldrh r0, [r4, #0xc]
	str fp, [r4]
	str fp, [r4, #4]
	str fp, [r4, #8]
	str fp, [r4, #0xc]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_080092F8: .4byte 0x04000100
sub_80092FC:
	subs r0, r0, #1
	bne sub_80092FC
	bx lr

	THUMB_FUNC_START sub_8009308
sub_8009308: @ sub_8009308
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08009378
	add sp, r4
	add r7, sp, #8
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x86
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x2c
	bl memset
	adds r1, r7, #4
	adds r0, r1, #0
	movs r1, #1
	movs r2, #2
	bl sub_800D790
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0800937C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800937C
	movs r1, #0x10
	strh r1, [r0]
	adds r0, r7, #0
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [r1]
	adds r0, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]
_08009366:
	adds r0, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0xff
	ble _08009380
	b _080093BC
	.align 2, 0
_08009378: .4byte 0xFFFFFD88
_0800937C: .4byte 0x04000004
_08009380:
	adds r1, r7, #0
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	adds r2, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r5, [r3]
	adds r2, r5, #0
	strb r2, [r1]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r1, r7, r3
	adds r2, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009366
_080093BC:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _080093EC
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
_080093DC:
	adds r0, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #1
	bls _080093F0
	b _0800990C
	.align 2, 0
_080093EC: .4byte 0x040000B8
_080093F0:
	adds r0, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]
_080093FC:
	adds r0, r7, #0
	movs r0, #0x93
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #2
	bls _0800940C
	b _080098EC
_0800940C:
	adds r0, r7, #0
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
_08009418:
	adds r0, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #3
	bls _08009428
	b _080098CC
_08009428:
	adds r0, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]
_08009434:
	adds r0, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #1
	bls _08009444
	b _080098AC
_08009444:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_800F2F0
	adds r0, r7, #0
	movs r0, #0x93
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #1
	beq _0800947E
	cmp r0, #1
	blo _0800946C
	cmp r0, #2
	beq _080094AA
	b _080094C0
_0800946C:
	adds r0, r7, #0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [r1]
	b _080094C0
_0800947E:
	adds r1, r7, #0
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r6, #0x9e
	lsls r6, r6, #1
	adds r4, r7, r6
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	cmp r1, #0
	beq _080094A4
	subs r1, r4, #4
	b _080094A6
_080094A4:
	subs r1, r4, #2
_080094A6:
	str r1, [r0]
	b _080094C0
_080094AA:
	adds r1, r7, #0
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r6, #0x9e
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r1, #0
	adds r2, #0x80
	str r2, [r0]
	b _080094C0
_080094C0:
	adds r0, r7, #0
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #1
	beq _080094EC
	cmp r0, #1
	blo _080094DC
	cmp r0, #2
	beq _08009518
	cmp r0, #3
	beq _0800952C
	b _0800953C
_080094DC:
	adds r0, r7, #0
	movs r2, #0x97
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1]
	b _0800953C
_080094EC:
	adds r1, r7, #0
	movs r3, #0x97
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	cmp r1, #0
	beq _0800950C
	ldr r1, _08009508
	b _0800950E
	.align 2, 0
_08009508: .4byte gUnknown_020000FC
_0800950C:
	ldr r1, _08009514
_0800950E:
	str r1, [r0]
	b _0800953C
	.align 2, 0
_08009514: .4byte gUnknown_020000FE
_08009518:
	adds r0, r7, #0
	movs r6, #0x97
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, _08009528
	str r0, [r1]
	b _0800953C
	.align 2, 0
_08009528: .4byte gUnknown_02000080
_0800952C:
	adds r0, r7, #0
	movs r0, #0x97
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1]
	b _0800953C
_0800953C:
	adds r0, r7, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0
	beq _0800955C
	cmp r0, #1
	beq _08009596
	b _080095D8
_0800955C:
	adds r1, r7, #0
	movs r5, #0x98
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	cmp r1, #0
	beq _08009582
	adds r1, r7, #0
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #0x40
	orrs r1, r2
	b _08009592
_08009582:
	adds r2, r7, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
_08009592:
	str r1, [r0]
	b _080095D8
_08009596:
	adds r1, r7, #0
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	cmp r1, #0
	beq _080095C0
	adds r1, r7, #0
	movs r6, #0x98
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	ldr r2, _080095BC
	orrs r1, r2
	b _080095D0
	.align 2, 0
_080095BC: .4byte 0x22000004
_080095C0:
	adds r2, r7, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	ldr r3, _080095D4
	adds r1, r2, #0
	orrs r1, r3
_080095D0:
	str r1, [r0]
	b _080095D8
	.align 2, 0
_080095D4: .4byte 0x22000008
_080095D8:
	adds r1, r7, #0
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r2, r7, #0
	movs r5, #0x98
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r3, r7, r6
	ldr r5, [r3]
	lsls r2, r5, #0x1a
	adds r3, r7, #0
	movs r3, #0x93
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r6, [r5]
	lsls r3, r6, #0x17
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r3, r5
	orrs r2, r3
	adds r3, r7, #0
	movs r6, #0x94
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r6, [r5]
	lsls r3, r6, #0x15
	orrs r2, r3
	ldr r1, [r1]
	orrs r2, r1
	str r2, [r0]
	adds r0, r7, #0
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08009630
	cmp r0, #1
	beq _08009694
	b _0800976C
_08009630:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _08009688
	adds r0, r2, r1
	adds r1, r7, #0
	movs r3, #0x96
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r5, _0800968C
	adds r0, r2, r5
	adds r1, r7, #0
	movs r6, #0x97
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _08009690
	adds r0, r2, r1
	adds r1, r7, #0
	movs r3, #0x98
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	str r1, [r0]
	b _0800976C
	.align 2, 0
_08009688: .4byte 0x040000B0
_0800968C: .4byte 0x040000B4
_08009690: .4byte 0x040000B8
_08009694:
	ldr r0, _080096A4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x8e
	bhi _080096A8
	b _080096AA
	.align 2, 0
_080096A4: .4byte 0x04000006
_080096A8:
	b _08009694
_080096AA:
	movs r0, #2
	bl sub_800D640
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r5, _08009720
	adds r0, r2, r5
	adds r1, r7, #0
	movs r6, #0x96
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _08009724
	adds r0, r2, r1
	adds r1, r7, #0
	movs r3, #0x97
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r5, _08009728
	adds r0, r2, r5
	adds r1, r7, #0
	movs r6, #0x98
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x91
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
_08009710:
	adds r0, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0xf
	ble _0800972C
	b _08009752
	.align 2, 0
_08009720: .4byte 0x040000B0
_08009724: .4byte 0x040000B4
_08009728: .4byte 0x040000B8
_0800972C:
	movs r0, #2
	bl sub_800D640
	adds r0, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r1, r7, r3
	adds r2, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009710
_08009752:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _08009768
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	b _0800976C
	.align 2, 0
_08009768: .4byte 0x040000B8
_0800976C:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r3, _08009788
	adds r1, r0, r3
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800978C
	b _0800978E
	.align 2, 0
_08009788: .4byte 0x040000B8
_0800978C:
	b _0800976C
_0800978E:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r3, r7, r5
	ldr r2, [r3]
	adds r5, r2, #0
	lsls r3, r5, #1
	adds r3, r3, r2
	lsls r2, r3, #0xb
	adds r3, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #0xb
	ldr r5, _080098A8
	adds r3, r3, r5
	adds r2, r2, r3
	adds r3, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #9
	adds r2, r2, r3
	adds r3, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #8
	adds r2, r2, r3
	movs r3, #0
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #0
	bl sub_800F188
	adds r1, r7, #0
	adds r1, #0x4c
	adds r2, r7, #0
	movs r2, #0x95
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r3, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #3
	adds r2, r2, r3
	adds r3, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #5
	adds r2, r2, r3
	adds r3, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r6, r3, #0
	lsls r5, r6, #1
	adds r5, r5, r3
	lsls r3, r5, #5
	adds r2, r2, r3
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r7, #0
	movs r6, #0x94
	lsls r6, r6, #2
	adds r3, r7, r6
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r1, r1, r2
	adds r2, r7, #0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #5
	adds r1, r1, r2
	adds r2, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r3, r7, r5
	ldr r2, [r3]
	adds r5, r2, #0
	lsls r3, r5, #1
	adds r3, r3, r2
	lsls r2, r3, #5
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08009886
	movs r0, #1
	str r0, [r7, #0x48]
_08009886:
	adds r0, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r2, r7, #0
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009434
	.align 2, 0
_080098A8: .4byte gUnknown_080778DC
_080098AC:
	adds r0, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x94
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r1, r7, #0
	movs r1, #0x94
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009418
_080098CC:
	adds r0, r7, #0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r2, r7, #0
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _080093FC
_080098EC:
	adds r0, r7, #0
	movs r6, #0x92
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r2, r7, #0
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _080093DC
_0800990C:
	adds r0, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009918
sub_08009918: @ 0x08009918
	adds r0, r7, #0
	movs r6, #0x92
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #1
	bls _0800992A
	bl sub_0800A1E8
_0800992A:
	adds r0, r7, #0
	movs r0, #0x93
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009936
sub_08009936: @ 0x08009936
	adds r0, r7, #0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #2
	bls _08009948
	bl sub_0800A1C6
_08009948:
	adds r0, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009954
sub_08009954: @ 0x08009954
	adds r0, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #3
	bls _08009966
	bl sub_0800A1A4
_08009966:
	adds r0, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009972
sub_08009972: @ 0x08009972
	adds r0, r7, #0
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #1
	bls _08009984
	bl sub_0800A182
_08009984:
	adds r0, r7, #0
	movs r2, #0x92
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _08009998
	cmp r0, #1
	beq _08009A46
	b _08009AF4
_08009998:
	movs r3, #0x86
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r5, #0x86
	lsls r5, r5, #1
	adds r1, r7, r5
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0]
	b _08009AF4
_08009A46:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #4]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #4]
	b _08009AF4
_08009AF4:
	adds r0, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #1
	beq _08009BBC
	cmp r0, #1
	blo _08009B0E
	cmp r0, #2
	bne _08009B0C
	b _08009C6A
_08009B0C:
	b _08009D18
_08009B0E:
	movs r6, #0x86
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #8]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #8]
	b _08009D18
_08009BBC:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0xc]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0xc]
	b _08009D18
_08009C6A:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x10]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x10]
	b _08009D18
_08009D18:
	adds r0, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #1
	beq _08009DE6
	cmp r0, #1
	blo _08009D38
	cmp r0, #2
	bne _08009D30
	b _08009E94
_08009D30:
	cmp r0, #3
	bne _08009D36
	b _08009F42
_08009D36:
	b _08009FF0
_08009D38:
	movs r6, #0x86
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x14]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x14]
	b _08009FF0
_08009DE6:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x18]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x18]
	b _08009FF0
_08009E94:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x1c]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x1c]
	b _08009FF0
_08009F42:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x20]
	b _08009FF0
_08009FF0:
	adds r0, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #0
	beq _0800A004
	cmp r0, #1
	beq _0800A0B2
	b _0800A160
_0800A004:
	movs r6, #0x86
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x24]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x24]
	b _0800A160
_0800A0B2:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x28]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x28]
	b _0800A160
_0800A160:
	adds r0, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r1, r7, #0
	movs r1, #0x95
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009972

	non_word_aligned_thumb_func_start sub_0800A182
sub_0800A182: @ 0x0800A182
	adds r0, r7, #0
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r2, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009954

	non_word_aligned_thumb_func_start sub_0800A1A4
sub_0800A1A4: @ 0x0800A1A4
	adds r0, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r2, r7, #0
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x93
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009936

	non_word_aligned_thumb_func_start sub_0800A1C6
sub_0800A1C6: @ 0x0800A1C6
	adds r0, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x92
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r1, r7, #0
	movs r1, #0x92
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009918

	non_word_aligned_thumb_func_start sub_0800A1E8
sub_0800A1E8: @ 0x0800A1E8
	adds r0, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
_0800A1F4:
	adds r0, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0xa
	ble _0800A204
	b _0800A254
_0800A204:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0800A234
	adds r0, r7, #0
	movs r0, #0x91
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	ldr r1, [r1]
	lsls r0, r1
	ldr r1, [r7, #0x48]
	orrs r0, r1
	str r0, [r7, #0x48]
_0800A234:
	adds r0, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r2, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800A1F4
_0800A254:
	ldr r0, _0800A270
	movs r6, #0x9c
	lsls r6, r6, #1
	adds r1, r7, r6
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	b _0800A274
	.align 2, 0
_0800A270: .4byte 0x04000004
_0800A274:
	movs r3, #0x9e
	lsls r3, r3, #2
	add sp, r3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A284
sub_800A284: @ 0x0800A284
	push {r7, lr}
	mov r7, sp
	movs r0, #0
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A294
_0800A294:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A29C
sub_800A29C: @ 0x0800A29C
	push {r7, lr}
	mov r7, sp
	movs r0, #1
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A2AC
_0800A2AC:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A2B4
sub_800A2B4: @ 0x0800A2B4
	push {r7, lr}
	mov r7, sp
	movs r0, #2
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A2C4
_0800A2C4:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A2CC
sub_800A2CC: @ 0x0800A2CC
	push {r7, lr}
	mov r7, sp
	movs r0, #3
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A2DC
_0800A2DC:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A2E4
sub_800A2E4: @ 0x0800A2E4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0
	strh r1, [r0]
_0800A2FA:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	cmp r1, #3
	bls _0800A306
	b _0800A33E
_0800A306:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl sub_8009308
	cmp r0, #0
	beq _0800A328
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	lsls r0, r1
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
_0800A328:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0800A2FA
_0800A33E:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800A344
_0800A344:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A34C
sub_800A34C: @ 0x0800A34C
	push {r7, lr}
	sub sp, #0x5c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800A38C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800A38C
	movs r1, #8
	strh r1, [r0]
	ldr r0, _0800A390
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x50]
	ldr r0, _0800A394
	str r0, [r7, #0x54]
	movs r0, #0
	str r0, [r7, #0x58]
_0800A384:
	ldr r0, [r7, #0x58]
	cmp r0, #3
	ble _0800A398
	b _0800A448
	.align 2, 0
_0800A38C: .4byte 0x04000004
_0800A390: .4byte 0x04000006
_0800A394: .4byte 0x91400001
_0800A398:
	ldr r0, _0800A3A8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A3AC
	b _0800A3AE
	.align 2, 0
_0800A3A8: .4byte 0x04000006
_0800A3AC:
	b _0800A398
_0800A3AE:
	ldr r0, _0800A3BC
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A3C0
	b _0800A3C2
	.align 2, 0
_0800A3BC: .4byte 0x04000006
_0800A3C0:
	b _0800A3AE
_0800A3C2:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A43C
	adds r1, r0, r2
	ldr r0, [r7, #0x4c]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A440
	adds r1, r0, r2
	ldr r0, [r7, #0x50]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A444
	adds r1, r0, r2
	ldr r0, [r7, #0x54]
	str r0, [r1]
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A444
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xa0
	beq _0800A432
	movs r0, #1
	ldr r1, [r7, #0x58]
	lsls r0, r1
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800A432:
	ldr r0, [r7, #0x58]
	adds r1, r0, #1
	str r1, [r7, #0x58]
	b _0800A384
	.align 2, 0
_0800A43C: .4byte 0x040000B0
_0800A440: .4byte 0x040000B4
_0800A444: .4byte 0x040000B8
_0800A448:
	ldr r0, _0800A460
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800A464
	.align 2, 0
_0800A460: .4byte 0x04000004
_0800A464:
	add sp, #0x5c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A46C
sub_800A46C: @ 0x0800A46C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A34C
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A480
_0800A480:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A488
sub_800A488: @ 0x0800A488
	push {r7, lr}
	sub sp, #0x64
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #2
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800A4C8
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800A4C8
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _0800A4CC
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x50]
	ldr r0, _0800A4D0
	str r0, [r7, #0x54]
	movs r0, #0
	str r0, [r7, #0x58]
_0800A4C0:
	ldr r0, [r7, #0x58]
	cmp r0, #3
	ble _0800A4D4
	b _0800A5EE
	.align 2, 0
_0800A4C8: .4byte 0x04000004
_0800A4CC: .4byte 0x04000006
_0800A4D0: .4byte 0xA3000001
_0800A4D4:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0xe4
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_800F2F0
_0800A4E4:
	ldr r0, _0800A4F4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A4F8
	b _0800A4FA
	.align 2, 0
_0800A4F4: .4byte 0x04000006
_0800A4F8:
	b _0800A4E4
_0800A4FA:
	ldr r0, _0800A508
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A50C
	b _0800A50E
	.align 2, 0
_0800A508: .4byte 0x04000006
_0800A50C:
	b _0800A4FA
_0800A50E:
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A550
	adds r1, r0, r2
	ldr r0, [r7, #0x4c]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A554
	adds r1, r0, r2
	ldr r0, [r7, #0x50]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A558
	adds r1, r0, r2
	ldr r0, [r7, #0x54]
	str r0, [r1]
	movs r0, #0
	str r0, [r7, #0x5c]
_0800A548:
	ldr r0, [r7, #0x5c]
	cmp r0, #0xe3
	ble _0800A55C
	b _0800A56A
	.align 2, 0
_0800A550: .4byte 0x040000B0
_0800A554: .4byte 0x040000B4
_0800A558: .4byte 0x040000B8
_0800A55C:
	movs r0, #2
	bl sub_800D640
	ldr r0, [r7, #0x5c]
	adds r1, r0, #1
	str r1, [r7, #0x5c]
	b _0800A548
_0800A56A:
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A590
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x60]
	movs r0, #0
	str r0, [r7, #0x5c]
_0800A586:
	ldr r0, [r7, #0x5c]
	cmp r0, #0x9f
	ble _0800A594
	b _0800A5BA
	.align 2, 0
_0800A590: .4byte 0x040000B8
_0800A594:
	adds r1, r7, #0
	adds r1, #0x60
	ldr r2, [r1]
	ldrh r0, [r2]
	adds r2, #2
	str r2, [r1]
	ldr r1, [r7, #0x5c]
	cmp r0, r1
	beq _0800A5B2
	movs r0, #1
	ldr r1, [r7, #0x58]
	lsls r0, r1
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800A5B2:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #1
	str r1, [r7, #0x5c]
	b _0800A586
_0800A5BA:
	ldr r0, [r7, #0x5c]
	cmp r0, #0xe3
	ble _0800A5C2
	b _0800A5E6
_0800A5C2:
	adds r0, r7, #0
	adds r0, #0x60
	ldr r1, [r0]
	ldrh r2, [r1]
	adds r1, #2
	str r1, [r0]
	cmp r2, #0
	beq _0800A5DE
	movs r0, #1
	ldr r1, [r7, #0x58]
	lsls r0, r1
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800A5DE:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #1
	str r1, [r7, #0x5c]
	b _0800A5BA
_0800A5E6:
	ldr r0, [r7, #0x58]
	adds r1, r0, #1
	str r1, [r7, #0x58]
	b _0800A4C0
_0800A5EE:
	ldr r0, _0800A608
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800A60C
	.align 2, 0
_0800A608: .4byte 0x04000004
_0800A60C:
	add sp, #0x64
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A614
sub_800A614: @ 0x0800A614
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A488
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A628
_0800A628:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A630
sub_800A630: @ 0x0800A630
	push {r4, r7, lr}
	sub sp, #0x1c
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x18
	strh r0, [r1]
	ldr r0, _0800A674
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #8]
	ldr r0, _0800A678
	str r0, [r7, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0xe4
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_800F2F0
_0800A664:
	ldr r0, _0800A674
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A67C
	b _0800A67E
	.align 2, 0
_0800A674: .4byte 0x04000006
_0800A678: .4byte 0xB3000001
_0800A67C:
	b _0800A664
_0800A67E:
	ldr r0, _0800A68C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A690
	b _0800A692
	.align 2, 0
_0800A68C: .4byte 0x04000006
_0800A690:
	b _0800A67E
_0800A692:
	ldr r0, _0800A6B4
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r0, _0800A6B8
	ldr r1, [r7, #8]
	str r1, [r0]
	ldr r0, _0800A6BC
	ldr r1, [r7, #0xc]
	str r1, [r0]
_0800A6A4:
	ldr r0, _0800A6C0
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A6C4
	b _0800A6C6
	.align 2, 0
_0800A6B4: .4byte 0x040000D4
_0800A6B8: .4byte 0x040000D8
_0800A6BC: .4byte 0x040000DC
_0800A6C0: .4byte 0x04000006
_0800A6C4:
	b _0800A6A4
_0800A6C6:
	ldr r0, _0800A6D4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A6D8
	b _0800A6DA
	.align 2, 0
_0800A6D4: .4byte 0x04000006
_0800A6D8:
	b _0800A6C6
_0800A6DA:
	ldr r0, _0800A6E8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xa2
	bne _0800A6EC
	b _0800A6EE
	.align 2, 0
_0800A6E8: .4byte 0x04000006
_0800A6EC:
	b _0800A6DA
_0800A6EE:
	ldr r0, _0800A71C
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _0800A702
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_0800A702:
	ldr r0, _0800A71C
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x14]
	movs r0, #0
	str r0, [r7, #0x10]
_0800A712:
	ldr r0, [r7, #0x10]
	cmp r0, #0x9f
	ble _0800A720
	b _0800A744
	.align 2, 0
_0800A71C: .4byte 0x040000DC
_0800A720:
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, [r0]
	ldrh r2, [r1]
	ldr r4, [r7, #0x10]
	adds r3, r4, #2
	adds r1, #2
	str r1, [r0]
	cmp r2, r3
	beq _0800A73C
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0800A73C:
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800A712
_0800A744:
	ldr r0, [r7, #0x10]
	cmp r0, #0xe3
	ble _0800A74C
	b _0800A76C
_0800A74C:
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, [r0]
	ldrh r2, [r1]
	adds r1, #2
	str r1, [r0]
	cmp r2, #0
	beq _0800A764
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0800A764:
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800A744
_0800A76C:
	adds r0, r7, #0
	adds r0, #0x18
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800A77E
_0800A77E:
	add sp, #0x1c
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A788
sub_800A788: @ 0x0800A788
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A630
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A79C
_0800A79C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A7A4
sub_800A7A4: @ 0x0800A7A4
	push {r7, lr}
	sub sp, #0x28
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x24
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [r7, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x10]
	ldr r0, _0800A81C
	str r0, [r7, #0x14]
	ldr r0, _0800A820
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800A824
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r0, _0800A828
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r0, _0800A82C
	ldr r1, [r7, #0x14]
	str r1, [r0]
	bl sub_800EC94
	ldr r0, _0800A82C
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r1, [r0]
	ldr r0, _0800A820
	cmp r1, r0
	beq _0800A80A
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #8]
_0800A80A:
	adds r0, r7, #0
	adds r0, #0x24
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _0800A830
	.align 2, 0
_0800A81C: .4byte 0x8D400001
_0800A820: .4byte 0x01234567
_0800A824: .4byte 0x040000D4
_0800A828: .4byte 0x040000D8
_0800A82C: .4byte 0x040000DC
_0800A830:
	add sp, #0x28
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A838
sub_800A838: @ 0x0800A838
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, _0800A868
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #8]
	ldr r0, _0800A86C
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
_0800A860:
	ldr r0, [r7, #0x10]
	cmp r0, #3
	ble _0800A870
	b _0800A9B8
	.align 2, 0
_0800A868: .4byte 0x04000006
_0800A86C: .4byte 0x81400001
_0800A870:
	ldr r0, _0800A8D4
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A8D8
	adds r1, r0, r2
	ldr r0, [r7, #4]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A8DC
	adds r1, r0, r2
	ldr r0, [r7, #8]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _0800A8E0
	adds r0, r2, r1
	ldr r1, [r7, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0]
_0800A8BA:
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A8E0
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800A8E4
	b _0800A8E6
	.align 2, 0
_0800A8D4: .4byte 0x04000202
_0800A8D8: .4byte 0x040000B0
_0800A8DC: .4byte 0x040000B4
_0800A8E0: .4byte 0x040000B8
_0800A8E4:
	b _0800A8BA
_0800A8E6:
	ldr r0, _0800A970
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	bne _0800A910
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #1
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_0800A910:
	ldr r0, _0800A970
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A974
	adds r1, r0, r2
	ldr r0, [r7, #4]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A978
	adds r1, r0, r2
	ldr r0, [r7, #8]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A97C
	adds r1, r0, r2
	ldr r0, [r7, #0xc]
	str r0, [r1]
_0800A954:
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A97C
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800A980
	b _0800A982
	.align 2, 0
_0800A970: .4byte 0x04000202
_0800A974: .4byte 0x040000B0
_0800A978: .4byte 0x040000B4
_0800A97C: .4byte 0x040000B8
_0800A980:
	b _0800A954
_0800A982:
	ldr r0, _0800A9B4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	beq _0800A9AC
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #2
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_0800A9AC:
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800A860
	.align 2, 0
_0800A9B4: .4byte 0x04000202
_0800A9B8:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800A9CA
_0800A9CA:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A9D4
sub_800A9D4: @ 0x0800A9D4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A838
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A9E8
_0800A9E8:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A9F0
sub_800A9F0: @ 0x0800A9F0
	push {r7, lr}
	sub sp, #0x38
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x36
	strh r0, [r1]
	ldr r0, _0800AA44
	str r0, [r7, #0x14]
	ldr r0, _0800AA44
	str r0, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0xc]
	ldr r0, _0800AA48
	str r0, [r7, #0x18]
	movs r0, #0x81
	lsls r0, r0, #0x18
	str r0, [r7, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #0x18
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x1c]
	ldr r1, _0800AA4C
	orrs r0, r1
	str r0, [r7, #0x1c]
	movs r0, #0
	str r0, [r7, #0x20]
_0800AA3A:
	ldr r0, [r7, #0x20]
	cmp r0, #2
	ble _0800AA50
	b _0800AC6E
	.align 2, 0
_0800AA44: .4byte 0x04000100
_0800AA48: .4byte gUnknown_02020000
_0800AA4C: .4byte 0x20000008
_0800AA50:
	ldr r0, _0800AA60
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800AA64
	b _0800AA66
	.align 2, 0
_0800AA60: .4byte 0x04000006
_0800AA64:
	b _0800AA50
_0800AA66:
	ldr r0, _0800AA74
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800AA78
	b _0800AA7A
	.align 2, 0
_0800AA74: .4byte 0x04000006
_0800AA78:
	b _0800AA66
_0800AA7A:
	ldr r0, _0800AB08
	movs r1, #0x80
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB0C
	adds r1, r0, r2
	ldr r0, [r7, #0x14]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB10
	adds r1, r0, r2
	ldr r0, [r7, #0x18]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB14
	adds r1, r0, r2
	ldr r0, [r7, #0x1c]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB18
	adds r1, r0, r2
	ldr r0, [r7, #8]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB1C
	adds r1, r0, r2
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB20
	adds r1, r0, r2
	ldr r0, [r7, #0x10]
	str r0, [r1]
_0800AAEE:
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB20
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800AB24
	b _0800AB26
	.align 2, 0
_0800AB08: .4byte 0x04000100
_0800AB0C: .4byte 0x040000B0
_0800AB10: .4byte 0x040000B4
_0800AB14: .4byte 0x040000B8
_0800AB18: .4byte 0x040000BC
_0800AB1C: .4byte 0x040000C0
_0800AB20: .4byte 0x040000C4
_0800AB24:
	b _0800AAEE
_0800AB26:
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB74
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB78
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800AB7C
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x2c]
	ldr r0, _0800AB80
	str r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0x34
	ldr r1, [r7, #0x2c]
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0
	str r0, [r7, #4]
_0800AB68:
	ldr r0, [r7, #0x2c]
	ldr r1, _0800AB84
	cmp r0, r1
	bls _0800AB88
	b _0800AC52
	.align 2, 0
_0800AB74: .4byte 0x040000B8
_0800AB78: .4byte 0x040000C4
_0800AB7C: .4byte 0x04000100
_0800AB80: .4byte gUnknown_02020000
_0800AB84: .4byte gUnknown_020003FF
_0800AB88:
	ldr r0, [r7, #4]
	cmp r0, #1
	beq _0800ABCC
	cmp r0, #1
	bgt _0800AB98
	cmp r0, #0
	beq _0800AB9E
	b _0800AC50
_0800AB98:
	cmp r0, #2
	beq _0800AC1A
	b _0800AC50
_0800AB9E:
	ldr r0, [r7, #0x2c]
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800ABB4
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800ABCA
_0800ABB4:
	ldr r0, [r7, #0x2c]
	adds r1, r0, #2
	str r1, [r7, #0x2c]
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r2, [r1]
	adds r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
_0800ABCA:
	b _0800AC50
_0800ABCC:
	movs r0, #0
	str r0, [r7, #0x28]
_0800ABD0:
	ldr r0, [r7, #0x28]
	cmp r0, #7
	ble _0800ABD8
	b _0800AC12
_0800ABD8:
	ldr r0, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800ABF4
	movs r0, #1
	ldr r1, [r7, #0x20]
	lsls r0, r1
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
	b _0800AC5A
_0800ABF4:
	ldr r0, [r7, #0x30]
	adds r1, r0, #2
	str r1, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r2, [r1]
	adds r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x28]
	adds r1, r0, #1
	str r1, [r7, #0x28]
	b _0800ABD0
_0800AC12:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800AC50
_0800AC1A:
	ldr r0, [r7, #0x2c]
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800AC38
	movs r0, #1
	ldr r1, [r7, #0x20]
	lsls r0, r1
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
	b _0800AC5A
	.byte 0x0A, 0xE0
_0800AC38:
	ldr r0, [r7, #0x2c]
	adds r1, r0, #2
	str r1, [r7, #0x2c]
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r2, [r1]
	adds r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	b _0800AC50
_0800AC50:
	b _0800AB68
_0800AC52:
	ldr r0, [r7, #4]
	cmp r0, #2
	bne _0800AC5A
	b _0800AC66
_0800AC5A:
	movs r0, #1
	ldr r1, [r7, #0x20]
	lsls r0, r1
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_0800AC66:
	ldr r0, [r7, #0x20]
	adds r1, r0, #1
	str r1, [r7, #0x20]
	b _0800AA3A
_0800AC6E:
	adds r0, r7, #0
	adds r0, #0x36
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800AC80
_0800AC80:
	add sp, #0x38
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800AC88
sub_800AC88: @ 0x0800AC88
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A9F0
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800AC9C
_0800AC9C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800ACA4
sub_800ACA4: @ 0x0800ACA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800ACDC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800ACE0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r2, [r1]
	cmp r2, #0
	beq _0800ACE4
	movs r1, #0x80
	lsls r1, r1, #7
	mov r8, r1
	b _0800ACE8
	.align 2, 0
_0800ACDC: .4byte 0x04000134
_0800ACE0: .4byte 0x04000128
_0800ACE4:
	movs r1, #0
	mov r8, r1
_0800ACE8:
	mov r6, r8
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800ACF8
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r6, r1
_0800ACF8:
	adds r5, r6, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x14
	ldr r2, [r1]
	cmp r2, #0
	beq _0800AD0A
	movs r1, #8
	orrs r5, r1
_0800AD0A:
	adds r4, r5, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800AD1C
	movs r1, #2
	orrs r4, r1
_0800AD1C:
	adds r1, r4, #0
	ldr r3, [r7]
	adds r2, r3, #4
	ldr r3, [r2]
	cmp r3, #0
	beq _0800AD2C
	movs r2, #1
	orrs r1, r2
_0800AD2C:
	strh r1, [r0]
	ldr r0, _0800AD4C
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #0
	beq _0800AD54
	ldr r0, _0800AD50
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	str r2, [r0]
	b _0800AD68
	.align 2, 0
_0800AD4C: .4byte 0x04000202
_0800AD50: .4byte 0x04000120
_0800AD54:
	ldr r0, _0800AD98
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #0xff
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
_0800AD68:
	bl sub_800EC94
	ldr r0, _0800AD9C
	ldr r1, _0800AD9C
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_800EC94
_0800AD80:
	ldr r0, _0800AD9C
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800ADA0
	b _0800ADA2
	.align 2, 0
_0800AD98: .4byte 0x0400012A
_0800AD9C: .4byte 0x04000128
_0800ADA0:
	b _0800AD80
_0800ADA2:
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #0
	beq _0800ADB8
	ldr r0, [r7, #4]
	ldr r1, _0800ADB4
	ldr r2, [r1]
	str r2, [r0]
	b _0800ADCC
	.align 2, 0
_0800ADB4: .4byte 0x04000120
_0800ADB8:
	ldr r0, [r7, #4]
	ldr r1, _0800AE18
	ldrh r2, [r1]
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
_0800ADCC:
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800AE1C
	ldrh r2, [r1]
	movs r3, #4
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800AE20
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
	b _0800AE24
	.align 2, 0
_0800AE18: .4byte 0x0400012A
_0800AE1C: .4byte 0x04000128
_0800AE20: .4byte 0x04000202
_0800AE24:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800AE30
sub_800AE30: @ 0x0800AE30
	push {r4, r7, lr}
	ldr r4, _0800AEC4
	add sp, r4
	mov r7, sp
	adds r0, r7, #0
	ldr r0, _0800AEC8
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r1, _0800AECC
	adds r0, r7, r1
	ldr r1, _0800AED0
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800AED0
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _0800AED4
	ldr r2, _0800AED8
	bl memcpy
	ldr r2, _0800AEDC
	movs r0, #0
	movs r1, #0
	bl DrawString
	bl sub_800B0A0
	ldr r2, _0800AEDC
	movs r0, #0
	movs r1, #0
	bl DrawString
	adds r0, r7, #0
	ldr r2, _0800AEC8
	adds r4, r7, r2
	bl sub_800B1F0
	adds r1, r7, #0
	ldr r1, _0800AEC8
	adds r2, r7, r1
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0800AED4
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _0800AED8
	bl memcpy
	ldr r0, _0800AED0
	ldr r2, _0800AECC
	adds r1, r7, r2
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	adds r0, r7, #0
	ldr r0, _0800AEC8
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	b _0800AEE0
	.align 2, 0
_0800AEC4: .4byte 0xFFFFEF50
_0800AEC8: .4byte 0x000010AC
_0800AECC: .4byte 0x000010A8
_0800AED0: .4byte 0x04000004
_0800AED4: .4byte gUnknown_03001B40
_0800AED8: .4byte 0x00001064
_0800AEDC: .4byte gUnknown_0807A8E0
_0800AEE0:
	ldr r3, _0800AEEC
	add sp, r3
	pop {r4, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800AEEC: .4byte 0x000010B0

	THUMB_FUNC_START sub_800AEF0
sub_800AEF0: @ 0x0800AEF0
	push {r4, r5, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800AF34
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800AF38
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #0x10
	lsrs r4, r1, #0x10
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	cmp r2, #0
	beq _0800AF3C
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800AF46
	.align 2, 0
_0800AF34: .4byte 0x04000134
_0800AF38: .4byte 0x04000128
_0800AF3C:
	movs r3, #0x80
	lsls r3, r3, #6
	adds r2, r4, #0
	orrs r2, r3
	adds r1, r2, #0
_0800AF46:
	strh r1, [r0]
	ldr r0, _0800AFC4
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800AFC8
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0800AFCC
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x1c
	ldr r1, _0800AFCC
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #3
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	bl sub_800EC94
	ldr r0, _0800AFCC
	ldr r1, _0800AFCC
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_800EC94
_0800AFAC:
	ldr r0, _0800AFCC
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800AFD0
	b _0800AFD2
	.align 2, 0
_0800AFC4: .4byte 0x04000202
_0800AFC8: .4byte 0x0400012A
_0800AFCC: .4byte 0x04000128
_0800AFD0:
	b _0800AFAC
_0800AFD2:
	ldr r0, [r7, #4]
	ldr r1, _0800B07C
	ldrh r2, [r1]
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	lsls r1, r2, #0x10
	ldr r2, _0800B080
	ldrh r3, [r2]
	lsls r5, r3, #0x10
	lsrs r2, r5, #0x10
	orrs r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B084
	ldrh r2, [r1]
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	lsls r1, r2, #0x10
	ldr r2, _0800B088
	ldrh r3, [r2]
	lsls r5, r3, #0x10
	lsrs r2, r5, #0x10
	orrs r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800B08C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B090
	ldrh r2, [r1]
	movs r3, #0x30
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800B090
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #6
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800B094
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
	b _0800B098
	.align 2, 0
_0800B07C: .4byte 0x04000120
_0800B080: .4byte 0x04000122
_0800B084: .4byte 0x04000124
_0800B088: .4byte 0x04000126
_0800B08C: .4byte 0x0400012A
_0800B090: .4byte 0x04000128
_0800B094: .4byte 0x04000202
_0800B098:
	add sp, #0xc
	pop {r4, r5, r7}
	pop {r1}
	bx r1

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

	THUMB_FUNC_START sub_800B724
sub_800B724: @ 0x0800B724
	push {r4, r5, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B770
	ldr r1, [r7]
	ldr r2, [r1]
	movs r1, #0xf
	adds r4, r2, #0
	ands r4, r1
	lsls r4, r4, #4
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	movs r1, #0xf
	adds r5, r2, #0
	ands r5, r1
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B774
	movs r2, #0x81
	lsls r2, r2, #8
	adds r1, r5, #0
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800B782
	.align 2, 0
_0800B770: .4byte 0x04000134
_0800B774:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r2, r5, #0
	orrs r2, r3
	adds r3, r4, #0
	orrs r3, r2
	adds r1, r3, #0
_0800B782:
	strh r1, [r0]
	ldr r0, _0800B7CC
	movs r1, #0x80
	strh r1, [r0]
	bl sub_800EC94
	ldr r0, [r7, #4]
	ldr r1, _0800B7D0
	ldrh r2, [r1]
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B7CC
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
	b _0800B7D4
	.align 2, 0
_0800B7CC: .4byte 0x04000202
_0800B7D0: .4byte 0x04000134
_0800B7D4:
	add sp, #0xc
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B7DC
sub_800B7DC: @ 0x0800B7DC
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B80C
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800B810
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B814
	movs r1, #0x41
	b _0800B816
	.align 2, 0
_0800B80C: .4byte 0x04000134
_0800B810: .4byte 0x04000140
_0800B814:
	movs r1, #1
_0800B816:
	strh r1, [r0]
	ldr r0, _0800B8BC
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800B8C0
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800B8C4
	ldrh r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800B8C0
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B8C4
	ldrh r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r0, _0800B8C4
	movs r1, #1
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800B8C4
	ldrh r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B8BC
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
	b _0800B8C8
	.align 2, 0
_0800B8BC: .4byte 0x04000202
_0800B8C0: .4byte 0x04000158
_0800B8C4: .4byte 0x04000140
_0800B8C8:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B8D0
sub_800B8D0: @ 0x0800B8D0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _0800B90C
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800B910
	ldr r1, [r7]
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800B910
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	movs r0, #0
	b _0800B914
	.align 2, 0
_0800B90C: .4byte 0x04000134
_0800B910: .4byte 0x04000158
_0800B914:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B91C
sub_800B91C: @ 0x0800B91C
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B94C
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800B950
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B954
	movs r1, #0x42
	b _0800B956
	.align 2, 0
_0800B94C: .4byte 0x04000134
_0800B950: .4byte 0x04000140
_0800B954:
	movs r1, #2
_0800B956:
	strh r1, [r0]
	ldr r0, _0800BA4C
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800BA50
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800BA54
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x1c
	ldr r1, _0800BA50
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800BA54
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800BA50
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800BA58
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800BA50
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, _0800BA54
	movs r1, #2
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800BA54
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0800BA4C
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
	b _0800BA5C
	.align 2, 0
_0800BA4C: .4byte 0x04000202
_0800BA50: .4byte 0x04000158
_0800BA54: .4byte 0x04000140
_0800BA58: .4byte 0x04000150
_0800BA5C:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800BA64
sub_800BA64: @ 0x0800BA64
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800BA94
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800BA98
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800BA9C
	movs r1, #0x44
	b _0800BA9E
	.align 2, 0
_0800BA94: .4byte 0x04000134
_0800BA98: .4byte 0x04000140
_0800BA9C:
	movs r1, #4
_0800BA9E:
	strh r1, [r0]
	ldr r0, _0800BB94
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800BB98
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800BB9C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, _0800BBA0
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800BB98
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #3
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0800BB98
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800BB9C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800BB98
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #3
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, _0800BB9C
	movs r1, #4
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800BB9C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800BB94
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
	b _0800BBA4
	.align 2, 0
_0800BB94: .4byte 0x04000202
_0800BB98: .4byte 0x04000158
_0800BB9C: .4byte 0x04000140
_0800BBA0: .4byte 0x04000154
_0800BBA4:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800BBAC
sub_800BBAC: @ 0x0800BBAC
	push {r4, r7, lr}
	ldr r4, _0800BC38
	add sp, r4
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800BC3C
	movs r2, #0xa8
	bl memcpy
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xfc
	movs r0, #0
	str r0, [r1]
	adds r1, r7, #4
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	movs r1, #0x83
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0800BC40
	ldrh r2, [r1]
	strh r2, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, _0800BC44
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, _0800BC48
	movs r0, #1
	bl sub_800D68C
	ldr r0, _0800BC40
	movs r1, #8
	strh r1, [r0]
	movs r0, #1
	bl SetIE
	movs r0, #1
	bl SetIME
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0800BC4C
	ldr r2, _0800BC50
	bl memcpy
	ldr r0, [r7]
	bl sub_800C0D4
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf4
	movs r0, #0
	str r0, [r1]
_0800BC28:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf4
	ldr r0, [r1]
	cmp r0, #0xd
	ble _0800BC54
	b _0800BFD0
	.align 2, 0
_0800BC38: .4byte 0xFFFFEE94
_0800BC3C: .4byte gUnknown_08082FC8
_0800BC40: .4byte 0x04000004
_0800BC44: .4byte 0x04000132
_0800BC48: .4byte sub_800C4E0+1
_0800BC4C: .4byte gUnknown_03001B40
_0800BC50: .4byte 0x00001064
_0800BC54:
	ldr r0, _0800BCA0
	adds r1, r7, #0
	adds r1, #0x48
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf4
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #1
	ldr r3, [r7]
	movs r4, #0x54
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, #2
	adds r2, r1, r2
	ldrh r1, [r2]
	strh r1, [r0]
	ldr r0, _0800BCA4
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
_0800BC90:
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #4
	ble _0800BCA8
	b _0800BFB6
	.align 2, 0
_0800BCA0: .4byte 0x04000132
_0800BCA4: .4byte 0x04000202
_0800BCA8:
	movs r0, #1
	bl sub_800D640
	adds r0, r7, #0
	adds r0, #0xf0
	ldr r1, _0800BCEC
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	ldr r0, [r7]
	bl sub_800C2C8
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	cmp r1, #4
	bls _0800BCDE
	b _0800BFB4
_0800BCDE:
	ldr r0, [r0]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, _0800BCF0
	adds r0, r0, r1
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_0800BCEC: .4byte 0x04000130
_0800BCF0: .4byte _0800BCF4
_0800BCF4: @ jump table
	.4byte _0800BD08 @ case 0
	.4byte _0800BD3A @ case 1
	.4byte _0800BD94 @ case 2
	.4byte _0800BDBE @ case 3
	.4byte _0800BEA0 @ case 4
_0800BD08:
	ldr r0, [r7]
	movs r1, #0
	bl sub_800C3C8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BFB4
_0800BD3A:
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800BD88
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xf8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #2
	ble _0800BD86
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
_0800BD86:
	b _0800BD92
_0800BD88:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
_0800BD92:
	b _0800BFB4
_0800BD94:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BFB4
_0800BDBE:
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r7]
	bl sub_800C3C8
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	movs r2, #0xc0
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xc0
	beq _0800BE12
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	movs r2, #0x30
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x30
	beq _0800BE12
	b _0800BE26
_0800BE12:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #0x10
	orrs r1, r2
	str r1, [r0]
_0800BE26:
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xf0
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0800BE94
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xf8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #2
	ble _0800BE92
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
_0800BE92:
	b _0800BE9E
_0800BE94:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
_0800BE9E:
	b _0800BFB4
_0800BEA0:
	ldr r0, _0800BF20
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	adds r1, r7, #0
	adds r1, #0x48
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf4
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #1
	ldr r3, [r7]
	movs r4, #0x54
	muls r3, r4, r3
	adds r2, r2, r3
	adds r3, r1, #4
	adds r1, r3, r2
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800BF94
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800BF24
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _0800BF38
	.align 2, 0
_0800BF20: .4byte 0x04000202
_0800BF24:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
_0800BF38:
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800BF80
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #8
	orrs r1, r2
	str r1, [r0]
	b _0800BF94
_0800BF80:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #4
	orrs r1, r2
	str r1, [r0]
_0800BF94:
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BFB4
_0800BFB4:
	b _0800BC90
_0800BFB6:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf4
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xf4
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BC28
_0800BFD0:
	ldr r0, _0800C00C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r2, _0800C010
	bl memcpy
	ldr r0, _0800C014
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C018
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_800D854
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xfc
	ldr r2, [r1]
	adds r0, r2, #0
	b _0800C01C
	.align 2, 0
_0800C00C: .4byte gUnknown_03001B40
_0800C010: .4byte 0x00001064
_0800C014: .4byte 0x04000132
_0800C018: .4byte 0x04000004
_0800C01C:
	ldr r3, _0800C028
	add sp, r3
	pop {r4, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C028: .4byte 0x0000116C

	THUMB_FUNC_START sub_800C02C
sub_800C02C: @ 0x0800C02C
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800C040
	ldr r1, [r0, #4]
	adds r0, r1, #0
	bl sub_800BBAC
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C044
	.align 2, 0
_0800C040: .4byte gUnknown_03002BB0
_0800C044:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

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

	THUMB_FUNC_START sub_800C2C8
sub_800C2C8: @ 0x0800C2C8
	push {r4, r5, r7, lr}
	sub sp, #0xac
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800C2FC
	movs r2, #0xa0
	bl memcpy
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa8
	movs r0, #0
	str r0, [r1]
_0800C2EC:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa8
	ldr r0, [r1]
	cmp r0, #9
	ble _0800C300
	b _0800C3C0
	.align 2, 0
_0800C2FC: .4byte gUnknown_0808317C
_0800C300:
	ldr r0, _0800C3B0
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xa8
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #2
	adds r4, r4, r3
	lsls r3, r4, #4
	adds r2, r2, r3
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _0800C3B0
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xa8
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #2
	adds r4, r4, r3
	lsls r3, r4, #4
	adds r2, r2, r3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0, #4]
	adds r1, r7, #4
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xa8
	ldr r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C37A
	ldr r0, _0800C3B0
	adds r1, r0, #0
	ldr r1, _0800C3B4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _0800C3B8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800C37A:
	ldr r2, _0800C3BC
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _0800C3B0
	adds r1, r0, #0
	ldr r1, _0800C3B4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa8
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xa8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xa8
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800C2EC
	.align 2, 0
_0800C3B0: .4byte gUnknown_03001B40
_0800C3B4: .4byte 0x00001008
_0800C3B8: .4byte 0x0000405F
_0800C3BC: .4byte gUnknown_0808321C
_0800C3C0:
	add sp, #0xac
	pop {r4, r5, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800C3C8
sub_800C3C8: @ 0x0800C3C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x17c
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800C3FC
	movs r2, #0xf0
	bl memcpy
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
_0800C3EC:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #9
	ble _0800C400
	b _0800C4D8
	.align 2, 0
_0800C3FC: .4byte gUnknown_0808322C
_0800C400:
	ldr r0, _0800C4A8
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #4
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _0800C4A8
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #4
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, #8
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0, #4]
	adds r1, r7, #4
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C4B0
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r1, _0800C4AC
	adds r2, r7, #0
	adds r2, #8
	adds r3, r7, #0
	adds r4, r7, #0
	adds r4, #0xf8
	ldr r3, [r4]
	adds r5, r3, #0
	lsls r4, r5, #1
	adds r4, r4, r3
	lsls r3, r4, #2
	ldr r4, [r7]
	adds r6, r4, #0
	lsls r5, r6, #4
	subs r5, r5, r4
	lsls r4, r5, #3
	adds r3, r3, r4
	adds r4, r2, r3
	ldr r2, [r4]
	bl sprintf
	adds r2, r7, #0
	adds r2, #0xfc
	movs r0, #1
	movs r1, #1
	bl DrawString
	b _0800C4BA
	.align 2, 0
_0800C4A8: .4byte gUnknown_03001B40
_0800C4AC: .4byte gUnknown_0808331C
_0800C4B0:
	ldr r2, _0800C4D4
	movs r0, #1
	movs r1, #1
	bl DrawString
_0800C4BA:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xf8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800C3EC
	.align 2, 0
_0800C4D4: .4byte gUnknown_0808321C
_0800C4D8:
	add sp, #0x17c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800C4E0
sub_800C4E0: @ 0x0800C4E0
	push {r7, lr}
	mov r7, sp
	bl sub_800DFB0
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C4F0
sub_800C4F0: @ 0x0800C4F0
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800C5AC
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C5AC
	movs r1, #8
	strh r1, [r0]
	ldr r0, _0800C5B0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C5B4
	movs r1, #1
	strh r1, [r0]
	movs r0, #1
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003874
	movs r0, #0
	bl SetIME
	ldr r0, _0800C5B0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C554
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C554:
	ldr r0, _0800C5B0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C5B4
	movs r1, #1
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003874
	movs r0, #0
	bl SetIME
	ldr r0, _0800C5B0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C592
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C592:
	ldr r0, _0800C5AC
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C5B8
	.align 2, 0
_0800C5AC: .4byte 0x04000004
_0800C5B0: .4byte gUnknown_03007FF8
_0800C5B4: .4byte 0x04000202
_0800C5B8:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C5C0
sub_800C5C0: @ 0x0800C5C0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C4F0
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C5D4
_0800C5D4:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C5DC
sub_800C5DC: @ 0x0800C5DC
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800C698
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C698
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _0800C69C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C6A0
	movs r1, #2
	strh r1, [r0]
	movs r0, #2
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003760
	movs r0, #0
	bl SetIME
	ldr r0, _0800C69C
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C640
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C640:
	ldr r0, _0800C69C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C6A0
	movs r1, #2
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003760
	movs r0, #0
	bl SetIME
	ldr r0, _0800C69C
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C67E
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C67E:
	ldr r0, _0800C698
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C6A4
	.align 2, 0
_0800C698: .4byte 0x04000004
_0800C69C: .4byte gUnknown_03007FF8
_0800C6A0: .4byte 0x04000202
_0800C6A4:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C6AC
sub_800C6AC: @ 0x0800C6AC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C5DC
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C6C0
_0800C6C0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C6C8
sub_800C6C8: @ 0x0800C6C8
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800C784
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C784
	movs r1, #0x20
	strh r1, [r0]
	ldr r0, _0800C788
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C78C
	movs r1, #4
	strh r1, [r0]
	movs r0, #4
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800362C
	movs r0, #0
	bl SetIME
	ldr r0, _0800C788
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C72C
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C72C:
	ldr r0, _0800C788
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C78C
	movs r1, #4
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800362C
	movs r0, #0
	bl SetIME
	ldr r0, _0800C788
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C76A
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C76A:
	ldr r0, _0800C784
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C790
	.align 2, 0
_0800C784: .4byte 0x04000004
_0800C788: .4byte gUnknown_03007FF8
_0800C78C: .4byte 0x04000202
_0800C790:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C798
sub_800C798: @ 0x0800C798
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C6C8
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C7AC
_0800C7AC:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C7B4
sub_800C7B4: @ 0x0800C7B4
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	movs r0, #0
	str r0, [r7, #0x48]
_0800C7CE:
	ldr r0, [r7, #0x48]
	cmp r0, #3
	ble _0800C7D6
	b _0800C894
_0800C7D6:
	ldr r0, _0800C88C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C890
	movs r1, #8
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #8
	ldr r1, [r7, #0x48]
	lsls r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800C8C8
	movs r0, #0
	bl SetIME
	ldr r0, _0800C88C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #8
	ldr r2, [r7, #0x48]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	bne _0800C836
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #1
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C836:
	ldr r0, _0800C88C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C890
	movs r1, #8
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800C8C8
	movs r0, #0
	bl SetIME
	ldr r0, _0800C88C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0
	beq _0800C882
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #2
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C882:
	ldr r0, [r7, #0x48]
	adds r1, r0, #1
	str r1, [r7, #0x48]
	b _0800C7CE
	.align 2, 0
_0800C88C: .4byte gUnknown_03007FF8
_0800C890: .4byte 0x04000202
_0800C894:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C8A2
_0800C8A2:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C8AC
sub_800C8AC: @ 0x0800C8AC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C7B4
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C8C0
_0800C8C0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C8C8
sub_800C8C8: @ 0x0800C8C8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _0800C910
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _0800C910
	adds r1, r0, r2
	ldr r0, _0800C914
	str r0, [r1]
	ldr r0, _0800C918
	ldr r1, _0800C91C
	ldr r2, _0800C920
	movs r3, #0
	bl sub_800F150
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _0800C910
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C910: .4byte 0x04000100
_0800C914: .4byte 0x00C0F000
_0800C918: .4byte sub_80092FC
_0800C91C: .4byte 0x08009308
_0800C920: .4byte 0x0000040A

	THUMB_FUNC_START sub_800C924
sub_800C924: @ 0x0800C924
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	ldr r0, _0800C9C4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C9C8
	movs r1, #0x80
	strh r1, [r0]
	movs r0, #0x80
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800C9F0
	movs r0, #0
	bl SetIME
	ldr r0, _0800C9C4
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C978
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C978:
	ldr r0, _0800C9C4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C9C8
	movs r1, #0x80
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800C9F0
	movs r0, #0
	bl SetIME
	ldr r0, _0800C9C4
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C9B6
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C9B6:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C9CC
	.align 2, 0
_0800C9C4: .4byte gUnknown_03007FF8
_0800C9C8: .4byte 0x04000202
_0800C9CC:
	add sp, #0x48
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C9D4
sub_800C9D4: @ 0x0800C9D4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C924
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C9E8
_0800C9E8:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C9F0
sub_800C9F0: @ 0x0800C9F0
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800CA30
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CA34
	ldr r2, _0800CA38
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800CA3C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CA34
	ldr r1, _0800CA34
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800CA18:
	ldr r0, _0800CA34
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800CA40
	b _0800CA42
	.align 2, 0
_0800CA30: .4byte 0x04000134
_0800CA34: .4byte 0x04000128
_0800CA38: .4byte 0x00004003
_0800CA3C: .4byte 0x0400012A
_0800CA40:
	b _0800CA18
_0800CA42:
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800CA48
sub_800CA48: @ 0x0800CA48
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	movs r0, #0
	str r0, [r7, #0x48]
_0800CA62:
	ldr r0, [r7, #0x48]
	cmp r0, #3
	ble _0800CA6A
	b _0800CB38
_0800CA6A:
	ldr r0, _0800CB30
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CB34
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [r7, #0x48]
	lsls r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800CB6C
	movs r0, #0
	bl SetIME
	ldr r0, _0800CB30
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	bne _0800CAD0
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #1
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CAD0:
	ldr r0, _0800CB30
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CB34
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800CB6C
	movs r0, #0
	bl SetIME
	ldr r0, _0800CB30
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	beq _0800CB28
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #2
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CB28:
	ldr r0, [r7, #0x48]
	adds r1, r0, #1
	str r1, [r7, #0x48]
	b _0800CA62
	.align 2, 0
_0800CB30: .4byte gUnknown_03007FF8
_0800CB34: .4byte 0x04000202
_0800CB38:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800CB46
_0800CB46:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800CB50
sub_800CB50: @ 0x0800CB50
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800CA48
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800CB64
_0800CB64:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CB6C
sub_800CB6C: @ 0x0800CB6C
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #8
	str r0, [r7, #0x10]
	ldr r0, _0800CBD4
	str r0, [r7, #0x14]
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBD8
	adds r1, r0, r2
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBDC
	adds r1, r0, r2
	ldr r0, [r7, #0x10]
	str r0, [r1]
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBE0
	adds r1, r0, r2
	ldr r0, [r7, #0x14]
	str r0, [r1]
_0800CBB8:
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBE0
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800CBE4
	b _0800CBE6
	.align 2, 0
_0800CBD4: .4byte 0xC5400001
_0800CBD8: .4byte 0x040000B0
_0800CBDC: .4byte 0x040000B4
_0800CBE0: .4byte 0x040000B8
_0800CBE4:
	b _0800CBB8
_0800CBE6:
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800CBF0
sub_800CBF0: @ 0x0800CBF0
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	ldr r0, _0800CCA8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CCAC
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	bl SetIE
	ldr r0, _0800CCA8
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl SetIME
	bl sub_800CCD4
	movs r0, #0
	bl SetIME
	ldr r0, _0800CCA8
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800CC54
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CC54:
	ldr r0, _0800CCA8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CCAC
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800CCD4
	movs r0, #0
	bl SetIME
	ldr r0, _0800CCA8
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800CC98
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CC98:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800CCB0
	.align 2, 0
_0800CCA8: .4byte gUnknown_03007FF8
_0800CCAC: .4byte 0x04000202
_0800CCB0:
	add sp, #0x48
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CCB8
sub_800CCB8: @ 0x0800CCB8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800CBF0
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800CCCC
_0800CCCC:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CCD4
sub_800CCD4: @ 0x0800CCD4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _0800CD00
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800CD04
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	mvns r1, r0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	cmp r0, #0
	bne _0800CD08
	ldr r0, _0800CD00
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	b _0800CD10
	.align 2, 0
_0800CD00: .4byte 0x04000132
_0800CD04: .4byte 0x04000130
_0800CD08:
	ldr r0, _0800CD2C
	ldr r2, _0800CD30
	adds r1, r2, #0
	strh r1, [r0]
_0800CD10:
	ldr r0, _0800CD34
	ldr r1, _0800CD38
	movs r2, #1
	movs r3, #0
	bl sub_800F150
	ldr r0, _0800CD2C
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CD2C: .4byte 0x04000132
_0800CD30: .4byte 0x000043FF
_0800CD34: .4byte sub_80092FC
_0800CD38: .4byte 0x08009308

	THUMB_FUNC_START sub_800CD3C
sub_800CD3C: @ 0x0800CD3C
	push {r7, lr}
	sub sp, #0x50
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	ldr r0, _0800CDF4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CDF8
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800EC94
	movs r0, #0
	bl SetIME
	ldr r0, _0800CDF4
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800CDA0
	ldr r0, [r7, #0x4c]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x4c]
_0800CDA0:
	ldr r0, _0800CDF4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CDF8
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800EC94
	movs r0, #0
	bl SetIME
	ldr r0, _0800CDF4
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800CDE4
	ldr r0, [r7, #0x4c]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x4c]
_0800CDE4:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x4c]
	adds r0, r1, #0
	b _0800CDFC
	.align 2, 0
_0800CDF4: .4byte gUnknown_03007FF8
_0800CDF8: .4byte 0x04000202
_0800CDFC:
	add sp, #0x50
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CE04
sub_800CE04: @ 0x0800CE04
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #1
	bl sub_800D790
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl sub_800D854
	movs r0, #0
	b _0800CE34
_0800CE34:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CE3C
sub_800CE3C: @ 0x0800CE3C
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #1
	bl sub_800D790
	svc #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl sub_800D854
	movs r0, #0
	b _0800CE64
_0800CE64:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CE6C
sub_800CE6C: @ 0x0800CE6C
	push {r7, lr}
	sub sp, #0x20
	add r7, sp, #8
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r2, #0
	str r3, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #8
	strb r0, [r1]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	adds r0, r7, #0
	adds r0, #8
	ldrb r2, [r0]
	ldr r0, [r7]
	movs r3, #0
	bl sub_800F2F0
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	adds r0, r7, #0
	adds r0, #8
	ldrb r2, [r0]
	ldr r0, [r7, #0xc]
	str r0, [sp]
	ldr r0, [r7, #0x20]
	str r0, [sp, #4]
	ldr r0, [r7]
	movs r3, #0
	bl sub_800F1F4
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800CED0
_0800CED0:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CED8
sub_800CED8: @ 0x0800CED8
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r0, [r7]
	bl sub_800F338
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r2, [r7, #8]
	ldr r3, [r7, #0xc]
	ldr r0, [r7]
	bl sub_800F260
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800CF22
_0800CF22:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800CF2C
sub_800CF2C: @ 0x0800CF2C
	push {r7, lr}
	sub sp, #0x20
	add r7, sp, #8
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r2, [r7, #8]
	ldr r0, [r7]
	movs r3, #2
	bl sub_800F2F0
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r2, [r7, #8]
	ldr r0, [r7, #0xc]
	str r0, [sp]
	ldr r0, [r7, #0x20]
	str r0, [sp, #4]
	ldr r0, [r7]
	movs r3, #2
	bl sub_800F1F4
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800CF82
_0800CF82:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800CF8C
sub_800CF8C: @ 0x0800CF8C
	push {r7, lr}
	sub sp, #0x11c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0xc
	strh r0, [r1]
	ldr r0, _0800CFF4
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800CFF4
	movs r1, #0x80
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800CFF8
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800CFFC
	ldr r1, _0800CFF4
	str r1, [r0]
	ldr r0, _0800D000
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800CFF8
	ldr r1, _0800D004
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0800CFFC
	str r0, [r1]
_0800CFD8:
	adds r0, r7, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D008
	b _0800D00A
	.align 2, 0
_0800CFF4: .4byte 0x04000100
_0800CFF8: .4byte 0x040000DC
_0800CFFC: .4byte 0x040000D4
_0800D000: .4byte 0x040000D8
_0800D004: .4byte 0x81000080
_0800D008:
	b _0800CFD8
_0800D00A:
	ldr r0, _0800D04C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D050
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D054
	adds r1, r7, #0
	adds r1, #0x10
	str r1, [r0]
	ldr r0, _0800D04C
	ldr r1, _0800D058
	str r1, [r0]
	adds r0, r7, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _0800D050
	str r0, [r1]
_0800D030:
	adds r0, r7, #0
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D05C
	b _0800D05E
	.align 2, 0
_0800D04C: .4byte 0x040000DC
_0800D050: .4byte 0x040000D4
_0800D054: .4byte 0x040000D8
_0800D058: .4byte 0x80000080
_0800D05C:
	b _0800D030
_0800D05E:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r2, r1, #2
	adds r1, r2, #0
	strh r1, [r0]
	movs r2, #0x89
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
_0800D088:
	adds r0, r7, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x7f
	bls _0800D098
	b _0800D0FC
_0800D098:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800D0C0
	movs r0, #1
	str r0, [r7, #8]
	b _0800D0FC
_0800D0C0:
	movs r3, #0x89
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r2, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800D088
_0800D0FC:
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _0800D10E
_0800D10E:
	add sp, #0x11c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800D118
sub_800D118: @ 0x0800D118
	push {r4, r5, r7, lr}
	sub sp, #0x124
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x10
	strh r0, [r1]
	ldr r0, _0800D180
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D180
	movs r1, #0x80
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800D184
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D188
	ldr r1, _0800D180
	str r1, [r0]
	ldr r0, _0800D18C
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D184
	ldr r1, _0800D190
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0800D188
	str r0, [r1]
_0800D166:
	adds r0, r7, #0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D194
	b _0800D196
	.align 2, 0
_0800D180: .4byte 0x04000100
_0800D184: .4byte 0x040000DC
_0800D188: .4byte 0x040000D4
_0800D18C: .4byte 0x040000D8
_0800D190: .4byte 0x85000040
_0800D194:
	b _0800D166
_0800D196:
	ldr r0, _0800D1D8
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D1DC
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D1E0
	adds r1, r7, #0
	adds r1, #0x14
	str r1, [r0]
	ldr r0, _0800D1D8
	ldr r1, _0800D1E4
	str r1, [r0]
	adds r0, r7, #0
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _0800D1DC
	str r0, [r1]
_0800D1BC:
	adds r0, r7, #0
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D1E8
	b _0800D1EA
	.align 2, 0
_0800D1D8: .4byte 0x040000DC
_0800D1DC: .4byte 0x040000D4
_0800D1E0: .4byte 0x040000D8
_0800D1E4: .4byte 0x84000040
_0800D1E8:
	b _0800D1BC
_0800D1EA:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r7, #4]
	adds r5, r0, #1
	movs r0, #0x20
	ldr r1, [r7, #8]
	bl __divsi3
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r0, #1
	adds r0, r1, #0
	strh r0, [r4]
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	strh r2, [r0]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, _0800D240
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
_0800D22E:
	adds r0, r7, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x7f
	bls _0800D244
	b _0800D2CA
	.align 2, 0
_0800D240: .4byte 0x04000102
_0800D244:
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	movs r2, #0x8b
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800D26C
	movs r0, #1
	str r0, [r7, #0xc]
	b _0800D2CA
_0800D26C:
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r3, [r2]
	adds r1, r3, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800D296
	movs r0, #1
	str r0, [r7, #0xc]
	b _0800D2CA
_0800D296:
	movs r3, #0x8b
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r2, #0x8b
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r1, r7, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #2
	str r2, [r0]
	b _0800D22E
_0800D2CA:
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D2DC
_0800D2DC:
	add sp, #0x124
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D2E4
sub_800D2E4: @ 0x0800D2E4
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	subs r0, r0, r1
	lsrs r1, r0, #8
	str r1, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #0x14]
_0800D302:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	blt _0800D30C
	b _0800D32A
_0800D30C:
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	bl sub_800CF8C
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	adds r1, r0, #1
	str r1, [r7, #0x14]
	b _0800D302
_0800D32A:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D330
_0800D330:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D338
sub_800D338: @ 0x0800D338
	push {r7, lr}
	sub sp, #0x1c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	subs r0, r0, r1
	lsrs r1, r0, #8
	str r1, [r7, #0x14]
	movs r0, #0
	str r0, [r7, #0x18]
_0800D358:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x14]
	cmp r0, r1
	blt _0800D362
	b _0800D382
_0800D362:
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	ldr r2, [r7, #0xc]
	bl sub_800D118
	ldr r1, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x18]
	adds r1, r0, #1
	str r1, [r7, #0x18]
	b _0800D358
_0800D382:
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800D388
_0800D388:
	add sp, #0x1c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D390
sub_800D390: @ 0x0800D390
	push {r7, lr}
	sub sp, #0x11c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0xc
	strh r0, [r1]
	adds r0, r7, #0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r7, #4]
	str r0, [r1]
	ldr r0, _0800D3F8
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D3FC
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	str r1, [r0]
	ldr r0, _0800D400
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D3F8
	ldr r1, _0800D404
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0800D3FC
	str r0, [r1]
_0800D3DE:
	adds r0, r7, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D408
	b _0800D40A
	.align 2, 0
_0800D3F8: .4byte 0x040000DC
_0800D3FC: .4byte 0x040000D4
_0800D400: .4byte 0x040000D8
_0800D404: .4byte 0x85000040
_0800D408:
	b _0800D3DE
_0800D40A:
	ldr r0, _0800D44C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D450
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D454
	adds r1, r7, #0
	adds r1, #0x10
	str r1, [r0]
	ldr r0, _0800D44C
	ldr r1, _0800D458
	str r1, [r0]
	adds r0, r7, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _0800D450
	str r0, [r1]
_0800D430:
	adds r0, r7, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r7, r0
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D45C
	b _0800D45E
	.align 2, 0
_0800D44C: .4byte 0x040000DC
_0800D450: .4byte 0x040000D4
_0800D454: .4byte 0x040000D8
_0800D458: .4byte 0x84000040
_0800D45C:
	b _0800D430
_0800D45E:
	adds r0, r7, #0
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
_0800D46A:
	adds r0, r7, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x3f
	bls _0800D47A
	b _0800D4BC
_0800D47A:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0800D49C
	movs r0, #1
	str r0, [r7, #8]
	b _0800D4BC
_0800D49C:
	adds r0, r7, #0
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800D46A
_0800D4BC:
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _0800D4CE
_0800D4CE:
	add sp, #0x11c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800D4D8
sub_800D4D8: @ 0x0800D4D8
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	subs r0, r0, r1
	lsrs r1, r0, #8
	str r1, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #0x14]
_0800D4F6:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	blt _0800D500
	b _0800D51E
_0800D500:
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	bl sub_800D390
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	adds r1, r0, #1
	str r1, [r7, #0x14]
	b _0800D4F6
_0800D51E:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D524
_0800D524:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D52C
sub_800D52C: @ 0x0800D52C
	push {r7, lr}
	sub sp, #0x28
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7]
	str r0, [r7, #0x20]
	ldr r0, [r7, #8]
	str r0, [r7, #0x1c]
_0800D552:
	ldr r0, [r7, #0x20]
	ldr r1, [r7, #4]
	cmp r0, r1
	bne _0800D55C
	b _0800D584
_0800D55C:
	ldr r0, [r7, #0x1c]
	ldr r1, _0800D57C
	muls r0, r1, r0
	ldr r2, _0800D580
	adds r1, r0, r2
	str r1, [r7, #0x18]
	ldr r0, [r7, #0x20]
	ldr r1, [r7, #0x18]
	str r1, [r0]
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x20]
	adds r1, r0, #4
	str r1, [r7, #0x20]
	b _0800D552
	.align 2, 0
_0800D57C: .4byte 0x00010DCD
_0800D580: .4byte 0x0019660D
_0800D584:
	ldr r0, [r7]
	str r0, [r7, #0x20]
	ldr r0, [r7, #8]
	str r0, [r7, #0x1c]
_0800D58C:
	ldr r0, [r7, #0x20]
	ldr r1, [r7, #4]
	cmp r0, r1
	bne _0800D596
	b _0800D5D8
_0800D596:
	ldr r0, [r7, #0x1c]
	ldr r1, _0800D5C4
	muls r0, r1, r0
	ldr r2, _0800D5C8
	adds r1, r0, r2
	str r1, [r7, #0x18]
	ldr r0, [r7, #0x20]
	ldr r1, [r0]
	str r1, [r7, #0x24]
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x18]
	cmp r0, r1
	beq _0800D5CC
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x20]
	str r1, [r0]
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x24]
	str r1, [r0]
	movs r0, #1
	str r0, [r7, #0x10]
	b _0800D5D8
	.align 2, 0
_0800D5C4: .4byte 0x00010DCD
_0800D5C8: .4byte 0x0019660D
_0800D5CC:
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x20]
	adds r1, r0, #4
	str r1, [r7, #0x20]
	b _0800D58C
_0800D5D8:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800D5EA
_0800D5EA:
	add sp, #0x28
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800D5F4
sub_800D5F4: @ 0x0800D5F4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _0800D62C
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800D630
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800D634
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800D638
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800D63C
	ldr r1, _0800D634
	str r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D62C: .4byte 0x040000D4
_0800D630: .4byte sub_800F04C
_0800D634: .4byte gUnknown_030010A8
_0800D638: .4byte 0x84000041
_0800D63C: .4byte gUnknown_03007FFC

	THUMB_FUNC_START sub_800D640
sub_800D640: @ 0x0800D640
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	ldr r0, _0800D67C
	ldr r1, _0800D67C
	adds r2, r7, #0
	ldrh r3, [r2]
	mvns r2, r3
	ldrh r1, [r1]
	adds r3, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800D65E:
	ldr r0, _0800D67C
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
	bne _0800D680
	b _0800D682
	.align 2, 0
_0800D67C: .4byte gUnknown_03007FF8
_0800D680:
	b _0800D65E
_0800D682:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800D68C
sub_800D68C: @ 0x0800D68C
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
_0800D69C:
	ldr r0, [r7, #8]
	cmp r0, #0xf
	bgt _0800D6B8
	adds r0, r7, #0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800D6B8
	b _0800D6BA
_0800D6B8:
	b _0800D6CE
_0800D6BA:
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	adds r0, r7, #0
	adds r1, r7, #0
	ldrh r2, [r1]
	lsrs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0800D69C
_0800D6CE:
	ldr r0, _0800D6F0
	ldr r1, [r7, #8]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r7, #0xc]
	ldr r0, _0800D6F0
	ldr r1, [r7, #8]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D6F4
	.align 2, 0
_0800D6F0: .4byte gUnknown_0300041C
_0800D6F4:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D6FC
sub_800D6FC: @ 0x0800D6FC
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_0800D706:
	ldr r0, [r7]
	cmp r0, #0xf
	ble _0800D70E
	b _0800D728
_0800D70E:
	ldr r0, _0800D724
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800D706
	.align 2, 0
_0800D724: .4byte gUnknown_0300041C
_0800D728:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START SetIME
SetIME: @ 0x0800D730
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #2
	ldr r1, _0800D754
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800D754
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800D758
	.align 2, 0
_0800D754: .4byte 0x04000208
_0800D758:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START SetIE
SetIE: @ 0x0800D760
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #2
	ldr r1, _0800D784
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800D784
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800D788
	.align 2, 0
_0800D784: .4byte 0x04000200
_0800D788:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D790
sub_800D790: @ 0x0800D790
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
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIE
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
_0800D7F2:
	ldr r0, [r7, #0xc]
	cmp r0, #0xf
	ble _0800D7FA
	b _0800D830
_0800D7FA:
	ldr r0, [r7]
	ldr r1, [r7, #0xc]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r0, #4
	adds r0, r2, r1
	ldr r1, _0800D82C
	ldr r2, [r7, #0xc]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _0800D82C
	ldr r1, [r7, #0xc]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800D7F2
	.align 2, 0
_0800D82C: .4byte gUnknown_0300041C
_0800D830:
	ldr r0, _0800D84C
	ldr r2, _0800D850
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #4
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D84C: .4byte 0x04000202
_0800D850: .4byte 0x00003FFF

	THUMB_FUNC_START sub_800D854
sub_800D854: @ 0x0800D854
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	movs r0, #0
	bl SetIME
	movs r0, #0
	str r0, [r7, #4]
_0800D866:
	ldr r0, [r7, #4]
	cmp r0, #0xf
	ble _0800D86E
	b _0800D894
_0800D86E:
	ldr r0, _0800D890
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
	b _0800D866
	.align 2, 0
_0800D890: .4byte gUnknown_0300041C
_0800D894:
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	adds r0, r1, #0
	bl SetIE
	ldr r0, [r7]
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800D8B0
sub_800D8B0: @ 0x0800D8B0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _0800D918
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800D91C
	adds r1, r7, #0
	ldr r2, _0800D91C
	ldrh r1, [r1]
	ldrh r2, [r2]
	eors r1, r2
	adds r2, r7, #0
	ldrh r2, [r2]
	adds r3, r2, #0
	ands r1, r3
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r0, _0800D91C
	adds r1, r7, #0
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800D91C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0800D9D0
	movs r0, #0
	str r0, [r7, #4]
_0800D90E:
	ldr r0, [r7, #4]
	cmp r0, #9
	ble _0800D920
	b _0800D9D0
	.align 2, 0
_0800D918: .4byte 0x04000130
_0800D91C: .4byte gUnknown_03000460
_0800D920:
	ldr r0, _0800D95C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D964
	ldr r0, _0800D960
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r3, r2, #2
	adds r1, r0, r3
	ldr r0, _0800D960
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, _0800D960
	ldr r2, [r7, #4]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	b _0800D972
	.align 2, 0
_0800D95C: .4byte gUnknown_03000460
_0800D960: .4byte gUnknown_030011B0
_0800D964:
	ldr r0, _0800D9C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_0800D972:
	ldr r0, _0800D9C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, _0800D9CC
	ldr r0, [r0]
	ldr r1, [r1, #4]
	cmp r0, r1
	ble _0800D9BE
	ldr r0, _0800D9C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r2, _0800D9CC
	ldr r1, [r2, #8]
	ldr r2, [r0]
	adds r0, r2, #0
	bl __modsi3
	cmp r0, #0
	bne _0800D9BE
	ldr r0, _0800D9CC
	ldr r1, _0800D9CC
	movs r2, #1
	ldr r3, [r7, #4]
	lsls r2, r3
	ldrh r1, [r1, #2]
	orrs r1, r2
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
_0800D9BE:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800D90E
	.align 2, 0
_0800D9C8: .4byte gUnknown_030011B0
_0800D9CC: .4byte gUnknown_03000460
_0800D9D0:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800D9D8
sub_800D9D8: @ 0x0800D9D8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _0800DA20
	ldr r1, _0800DA24
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DA20
	ldrh r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _0800DA20
	movs r1, #0x18
	str r1, [r0, #4]
	ldr r0, _0800DA20
	movs r1, #4
	str r1, [r0, #8]
	movs r0, #0
	str r0, [r7]
_0800DA18:
	ldr r0, [r7]
	cmp r0, #9
	ble _0800DA28
	b _0800DA44
	.align 2, 0
_0800DA20: .4byte gUnknown_03000460
_0800DA24: .4byte 0x04000130
_0800DA28:
	ldr r0, _0800DA40
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800DA18
	.align 2, 0
_0800DA40: .4byte gUnknown_030011B0
_0800DA44:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800DA4C
sub_800DA4C: @ 0x0800DA4C
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DBE8
	movs r3, #0xe0
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _0800DBEC
	ldr r4, _0800DBF0
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _0800DBF4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DBF8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DBFC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC00
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC04
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC08
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC0C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC10
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC14
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC18
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC1C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC20
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DC24
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC28
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC2C
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _0800DC30
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	strh r1, [r0]
	ldr r0, _0800DC34
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC38
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC3C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DC40
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC44
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC48
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC4C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC50
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC54
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC58
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC5C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC60
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC64
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC68
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC6C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC70
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800DC74
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800DC74
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0
	str r0, [r7, #4]
	ldr r0, _0800DC78
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #4
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _0800DC7C
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800DC80
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
	ldr r0, _0800DC78
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800DC84
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800DC80
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800DC74
	adds r1, r0, #0
	ldr r3, _0800DC88
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _0800DC74
	adds r0, r1, #0
	ldr r4, _0800DC8C
	adds r1, r1, r4
	ldr r2, _0800DC90
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r0, _0800DC74
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
_0800DBDE:
	ldr r0, [r7]
	cmp r0, #7
	ble _0800DC94
	b _0800DCDC
	.align 2, 0
_0800DBE8: .4byte 0x04000008
_0800DBEC: .4byte 0x0400000A
_0800DBF0: .4byte 0x00001D01
_0800DBF4: .4byte 0x04000010
_0800DBF8: .4byte 0x04000012
_0800DBFC: .4byte 0x04000014
_0800DC00: .4byte 0x04000016
_0800DC04: .4byte 0x0400000C
_0800DC08: .4byte 0x0400000E
_0800DC0C: .4byte 0x0400004C
_0800DC10: .4byte 0x04000028
_0800DC14: .4byte 0x0400002C
_0800DC18: .4byte 0x04000038
_0800DC1C: .4byte 0x0400003C
_0800DC20: .4byte 0x04000020
_0800DC24: .4byte 0x04000022
_0800DC28: .4byte 0x04000024
_0800DC2C: .4byte 0x04000026
_0800DC30: .4byte 0x04000030
_0800DC34: .4byte 0x04000032
_0800DC38: .4byte 0x04000034
_0800DC3C: .4byte 0x04000036
_0800DC40: .4byte 0x04000018
_0800DC44: .4byte 0x0400001A
_0800DC48: .4byte 0x0400001C
_0800DC4C: .4byte 0x0400001E
_0800DC50: .4byte 0x04000040
_0800DC54: .4byte 0x04000044
_0800DC58: .4byte 0x04000042
_0800DC5C: .4byte 0x04000046
_0800DC60: .4byte 0x04000048
_0800DC64: .4byte 0x0400004A
_0800DC68: .4byte 0x04000050
_0800DC6C: .4byte 0x04000052
_0800DC70: .4byte 0x04000054
_0800DC74: .4byte gUnknown_03001B40
_0800DC78: .4byte 0x040000D4
_0800DC7C: .4byte gUnknown_03001B48
_0800DC80: .4byte 0x85000200
_0800DC84: .4byte gUnknown_03002348
_0800DC88: .4byte 0x00001008
_0800DC8C: .4byte 0x0000100C
_0800DC90: .4byte gUnknown_08100C1C
_0800DC94:
	ldr r0, _0800DCCC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _0800DCD0
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, _0800DCD4
	str r0, [r1]
	ldr r0, _0800DCCC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	adds r1, r0, #0
	ldr r3, _0800DCD8
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800DBDE
	.align 2, 0
_0800DCCC: .4byte gUnknown_03001B40
_0800DCD0: .4byte 0x00001024
_0800DCD4: .4byte sub_800E224+1
_0800DCD8: .4byte 0x00001028
_0800DCDC:
	bl sub_800DFB0
	movs r0, #0
	movs r1, #0
	bl sub_800DE38
	movs r0, #1
	movs r1, #0x1f
	bl sub_800DE38
	ldr r1, _0800DD38
	movs r0, #2
	bl sub_800DE38
	ldr r1, _0800DD3C
	movs r0, #3
	bl sub_800DE38
	ldr r1, _0800DD40
	movs r0, #4
	bl sub_800DE38
	ldr r1, _0800DD44
	movs r0, #5
	bl sub_800DE38
	ldr r1, _0800DD48
	movs r0, #6
	bl sub_800DE38
	ldr r1, _0800DD4C
	movs r0, #7
	bl sub_800DE38
	movs r0, #0
	bl sub_800E6E8
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r4, _0800DD4C
	adds r1, r4, #0
	strh r1, [r0]
	add sp, #0xc
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD38: .4byte 0x00001683
_0800DD3C: .4byte 0x000003FF
_0800DD40: .4byte 0x00005863
_0800DD44: .4byte 0x00005CBF
_0800DD48: .4byte 0x000073A5
_0800DD4C: .4byte 0x00007FFF

	THUMB_FUNC_START sub_800DD50
sub_800DD50: @ 0x0800DD50
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	ldr r0, _0800DE28
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r1, _0800DE28
	adds r2, r1, #0
	movs r2, #0x81
	lsls r2, r2, #5
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r3, _0800DE2C
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
	ldr r0, _0800DE28
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _0800DE30
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, _0800DE34
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _0800DE28
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r3, r1, r2
	adds r1, r3, #0
	ldr r1, _0800DE2C
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
	bge _0800DDDA
	adds r1, #3
_0800DDDA:
	asrs r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800DE28
	ldr r1, _0800DE28
	adds r2, r1, #0
	movs r2, #0x81
	lsls r2, r2, #5
	adds r1, r1, r2
	ldr r3, [r7, #8]
	adds r2, r3, #0
	cmp r2, #0
	bge _0800DE02
	adds r2, #0x1f
_0800DE02:
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
_0800DE28: .4byte gUnknown_03001B40
_0800DE2C: .4byte 0x00001028
_0800DE30: .4byte 0x00001024
_0800DE34: .4byte 0x040000D4

	THUMB_FUNC_START sub_800DE38
sub_800DE38: @ 0x0800DE38
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
	ldr r3, _0800DF24
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF28
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF2C
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF30
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF34
	adds r2, r3, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldr r3, _0800DF38
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
_0800DF1A:
	ldr r0, [r7, #0x10]
	cmp r0, #7
	ble _0800DF3C
	b _0800DFA0
	.align 2, 0
_0800DF24: .4byte 0x00001683
_0800DF28: .4byte 0x000003FF
_0800DF2C: .4byte 0x00005863
_0800DF30: .4byte 0x00005CBF
_0800DF34: .4byte 0x000073A5
_0800DF38: .4byte 0x00007FFF
_0800DF3C:
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
	bge _0800DF5A
	adds r3, #7
_0800DF5A:
	asrs r2, r3, #3
	adds r1, r2, #0
	adds r2, r7, #0
	adds r2, #8
	ldrh r3, [r2]
	ldr r2, [r7, #0x10]
	muls r3, r2, r3
	adds r2, r3, #0
	cmp r2, #0
	bge _0800DF70
	adds r2, #7
_0800DF70:
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
	bge _0800DF8C
	adds r2, #7
_0800DF8C:
	asrs r2, r2, #3
	adds r3, r2, #0
	lsls r2, r3, #0xa
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800DF1A
_0800DFA0:
	ldr r0, [r7, #0xc]
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800DFB0
sub_800DFB0: @ 0x0800DFB0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _0800E008
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800E00C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800E010
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800E014
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800E008
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800E018
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800E01C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800E014
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
_0800E008: .4byte 0x040000D4
_0800E00C: .4byte gUnknown_03001B48
_0800E010: .4byte 0x0600E000
_0800E014: .4byte 0x84000200
_0800E018: .4byte gUnknown_03002348
_0800E01C: .4byte 0x0600E800

	THUMB_FUNC_START DrawString
DrawString: @ 0x0800E020
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
_0800E030:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800E03E
	b _0800E21C
_0800E03E:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _0800E074
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _0800E0BC
	ldr r0, [r7, #8]
	ldr r2, [r7, #0xc]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xc
	beq _0800E08A
	cmp r0, #0xc
	bgt _0800E078
	cmp r0, #0xa
	beq _0800E07E
	b _0800E0B4
	.align 2, 0
_0800E074: .4byte gUnknown_08141E81
_0800E078:
	cmp r0, #0x1b
	beq _0800E096
	b _0800E0B4
_0800E07E:
	bl sub_800E4E8
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800E0BA
_0800E08A:
	bl sub_800E508
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800E0BA
_0800E096:
	adds r1, r7, #4
	ldr r0, [r7, #8]
	ldr r2, [r7, #0xc]
	adds r0, r0, r2
	adds r2, r0, #1
	adds r0, r7, #0
	bl sub_800E5F0
	ldr r1, [r7, #0xc]
	adds r0, r1, r0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800E0BA
_0800E0B4:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
_0800E0BA:
	b _0800E21A
_0800E0BC:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _0800E0CC
	b _0800E214
_0800E0CC:
	bl sub_800E258
	ldr r0, _0800E110
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r0, #0
	ldr r2, _0800E114
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
	ldr r0, _0800E118
	cmp r1, r0
	bne _0800E11C
	adds r0, r7, #0
	adds r0, #0x10
	movs r1, #0
	strh r1, [r0]
	b _0800E156
	.align 2, 0
_0800E110: .4byte gUnknown_03001B40
_0800E114: .4byte 0x00001024
_0800E118: .4byte 0x0000FFFF
_0800E11C:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	ldr r2, _0800E1FC
	ldr r3, [r7]
	adds r4, r3, #0
	lsls r3, r4, #3
	adds r4, r2, r3
	adds r2, r4, #0
	ldr r2, _0800E200
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
_0800E156:
	ldr r0, _0800E1FC
	ldr r2, _0800E1FC
	adds r1, r2, #0
	ldr r1, _0800E204
	adds r2, r2, r1
	ldr r1, _0800E1FC
	ldr r2, [r2]
	ldr r3, [r1]
	adds r1, r2, r3
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r3, _0800E1FC
	adds r2, r3, #0
	ldr r2, _0800E208
	adds r3, r3, r2
	ldr r2, _0800E1FC
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
	ldr r0, _0800E1FC
	ldr r2, _0800E1FC
	adds r1, r2, #0
	ldr r1, _0800E204
	adds r2, r2, r1
	ldr r1, _0800E1FC
	ldr r2, [r2]
	ldr r3, [r1]
	adds r1, r2, r3
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r3, _0800E1FC
	adds r2, r3, #0
	ldr r2, _0800E208
	adds r3, r3, r2
	ldr r2, _0800E1FC
	ldr r3, [r3]
	ldr r4, [r2, #4]
	adds r2, r3, r4
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r2, _0800E20C
	adds r3, r0, r2
	adds r0, r3, r1
	ldr r1, _0800E1FC
	adds r2, r1, #0
	ldr r2, _0800E210
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
	ldr r1, _0800E1FC
	ldr r0, _0800E1FC
	ldr r1, _0800E1FC
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	b _0800E21A
	.align 2, 0
_0800E1FC: .4byte gUnknown_03001B40
_0800E200: .4byte 0x00001028
_0800E204: .4byte 0x0000100C
_0800E208: .4byte 0x00001010
_0800E20C: .4byte 0x00000808
_0800E210: .4byte 0x00001008
_0800E214:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
_0800E21A:
	b _0800E030
_0800E21C:
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E224
sub_800E224: @ 0x0800E224
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
	b _0800E24E
_0800E24E:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E258
sub_800E258: @ 0x0800E258
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	ldr r0, _0800E2C0
	ldr r2, _0800E2C0
	adds r1, r2, #0
	ldr r1, _0800E2C4
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	blt _0800E274
	bl sub_800E4E8
_0800E274:
	ldr r0, _0800E2C0
	ldr r2, _0800E2C0
	adds r1, r2, #0
	ldr r1, _0800E2C8
	adds r2, r2, r1
	ldr r0, [r0, #4]
	ldr r1, [r2]
	cmp r0, r1
	bge _0800E288
	b _0800E4C0
_0800E288:
	ldr r0, _0800E2C0
	ldr r2, _0800E2C0
	adds r1, r2, #0
	ldr r1, _0800E2C8
	adds r2, r2, r1
	ldr r1, [r2]
	subs r2, r1, #1
	str r2, [r0, #4]
	ldr r1, _0800E2C0
	adds r0, r1, #0
	ldr r2, _0800E2CC
	adds r1, r1, r2
	ldr r0, [r1]
	cmp r0, #1
	beq _0800E2A8
	b _0800E4C0
_0800E2A8:
	movs r0, #0
	str r0, [r7]
_0800E2AC:
	ldr r1, _0800E2C0
	adds r0, r1, #0
	ldr r0, _0800E2C8
	adds r1, r1, r0
	ldr r2, [r1]
	subs r0, r2, #1
	ldr r1, [r7]
	cmp r1, r0
	blt _0800E2D0
	b _0800E3F0
	.align 2, 0
_0800E2C0: .4byte gUnknown_03001B40
_0800E2C4: .4byte 0x00001014
_0800E2C8: .4byte 0x00001018
_0800E2CC: .4byte 0x0000101C
_0800E2D0:
	ldr r0, _0800E3CC
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3DC
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3E0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3E4
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
	ldr r0, _0800E3CC
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3E8
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3D4
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, [r7]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E3D0
	adds r2, r3, #0
	ldr r2, _0800E3D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E3EC
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E3D0
	adds r1, r2, #0
	ldr r1, _0800E3E4
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
	b _0800E2AC
	.align 2, 0
_0800E3CC: .4byte 0x040000D4
_0800E3D0: .4byte gUnknown_03001B40
_0800E3D4: .4byte 0x00001010
_0800E3D8: .4byte 0x0000100C
_0800E3DC: .4byte gUnknown_03001B88
_0800E3E0: .4byte gUnknown_03001B48
_0800E3E4: .4byte 0x00001014
_0800E3E8: .4byte gUnknown_03002388
_0800E3EC: .4byte gUnknown_03002348
_0800E3F0:
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800E4C8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800E4CC
	adds r2, r1, #0
	ldr r2, _0800E4D0
	adds r1, r1, r2
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D4
	adds r3, r3, r2
	ldr r1, [r1]
	ldr r2, [r3]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E4DC
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E4CC
	adds r1, r2, #0
	ldr r1, _0800E4E0
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
	ldr r0, _0800E4C8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800E4CC
	adds r2, r1, #0
	ldr r2, _0800E4D0
	adds r1, r1, r2
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D4
	adds r3, r3, r2
	ldr r1, [r1]
	ldr r2, [r3]
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldr r3, _0800E4CC
	adds r2, r3, #0
	ldr r2, _0800E4D8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, _0800E4E4
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r2, _0800E4CC
	adds r1, r2, #0
	ldr r1, _0800E4E0
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
_0800E4C0:
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4C8: .4byte 0x040000D4
_0800E4CC: .4byte gUnknown_03001B40
_0800E4D0: .4byte 0x00001010
_0800E4D4: .4byte 0x00001018
_0800E4D8: .4byte 0x0000100C
_0800E4DC: .4byte gUnknown_03001B08
_0800E4E0: .4byte 0x00001014
_0800E4E4: .4byte gUnknown_03002308

	THUMB_FUNC_START sub_800E4E8
sub_800E4E8: @ 0x0800E4E8
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800E504
	movs r1, #0
	str r1, [r0]
	ldr r1, _0800E504
	ldr r0, _0800E504
	ldr r1, _0800E504
	ldr r2, [r1, #4]
	adds r1, r2, #1
	str r1, [r0, #4]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E504: .4byte gUnknown_03001B40

	THUMB_FUNC_START sub_800E508
sub_800E508: @ 0x0800E508
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	ldr r1, _0800E538
	adds r0, r1, #0
	ldr r0, _0800E53C
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r7]
_0800E51A:
	ldr r0, _0800E538
	adds r1, r0, #0
	ldr r1, _0800E53C
	adds r0, r0, r1
	ldr r2, _0800E538
	adds r1, r2, #0
	ldr r1, _0800E540
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [r7]
	cmp r1, r0
	blt _0800E544
	b _0800E5D8
	.align 2, 0
_0800E538: .4byte gUnknown_03001B40
_0800E53C: .4byte 0x00001010
_0800E540: .4byte 0x00001018
_0800E544:
	ldr r1, _0800E570
	adds r0, r1, #0
	ldr r2, _0800E574
	adds r1, r1, r2
	ldr r0, [r1]
	str r0, [r7, #4]
_0800E550:
	ldr r0, _0800E570
	adds r1, r0, #0
	ldr r1, _0800E574
	adds r0, r0, r1
	ldr r2, _0800E570
	adds r1, r2, #0
	ldr r1, _0800E578
	adds r2, r2, r1
	ldr r0, [r0]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [r7, #4]
	cmp r1, r0
	blt _0800E57C
	b _0800E5D0
	.align 2, 0
_0800E570: .4byte gUnknown_03001B40
_0800E574: .4byte 0x0000100C
_0800E578: .4byte 0x00001014
_0800E57C:
	ldr r0, _0800E5C8
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
	ldr r0, _0800E5C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #6
	adds r1, r1, r2
	adds r2, r0, #0
	ldr r2, _0800E5CC
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
	b _0800E550
	.align 2, 0
_0800E5C8: .4byte gUnknown_03001B40
_0800E5CC: .4byte 0x00000808
_0800E5D0:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800E51A
_0800E5D8:
	ldr r0, _0800E5EC
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800E5EC
	movs r1, #0
	str r1, [r0, #4]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5EC: .4byte gUnknown_03001B40

	THUMB_FUNC_START sub_800E5F0
sub_800E5F0: @ 0x0800E5F0
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
	beq _0800E610
	movs r0, #0
	b _0800E64C
_0800E610:
	adds r1, r7, #0
	adds r1, #8
	ldr r2, [r1]
	ldrb r0, [r2]
	adds r2, #1
	str r2, [r1]
	cmp r0, #0x46
	beq _0800E626
	cmp r0, #0x50
	beq _0800E636
	b _0800E648
_0800E626:
	ldr r0, [r7, #8]
	ldrb r1, [r0]
	ldr r0, [r7]
	bl sub_800E654
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800E64C
_0800E636:
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldrb r2, [r1]
	adds r1, r2, #0
	bl sub_800E690
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800E64C
_0800E648:
	movs r0, #0
	b _0800E64C
_0800E64C:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800E654
sub_800E654: @ 0x0800E654
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
	blt _0800E684
	ldr r0, [r7, #8]
	cmp r0, #7
	bgt _0800E684
	ldr r0, [r7]
	ldr r1, [r7, #8]
	str r1, [r0]
	movs r0, #3
	b _0800E688
	.byte 0x01, 0xE0
_0800E684:
	movs r0, #0
	b _0800E688
_0800E688:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800E690
sub_800E690: @ 0x0800E690
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
	bls _0800E6C2
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #0x46
	bhi _0800E6C2
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x37
	str r0, [r7, #8]
_0800E6C2:
	ldr r0, [r7, #8]
	cmp r0, #0
	blt _0800E6DA
	ldr r0, [r7, #8]
	cmp r0, #0xf
	bgt _0800E6DA
	ldr r0, [r7]
	ldr r1, [r7, #8]
	str r1, [r0]
	movs r0, #3
	b _0800E6DE
	.byte 0x01, 0xE0
_0800E6DA:
	movs r0, #0
	b _0800E6DE
_0800E6DE:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E6E8
sub_800E6E8: @ 0x0800E6E8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0800E708
	movs r2, #0xc0
	lsls r2, r2, #4
	ldr r3, _0800E70C
	ldr r0, [r7]
	bl sub_800DD50
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E708: .4byte gUnknown_08100C7C
_0800E70C: .4byte sub_800E224+1

	THUMB_FUNC_START sub_800E710
sub_800E710: @ 0x0800E710
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0800E730
	movs r2, #0xc0
	lsls r2, r2, #1
	ldr r3, _0800E734
	ldr r0, [r7]
	bl sub_800DD50
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E730: .4byte gUnknown_08101884
_0800E734: .4byte sub_800E738+1

	THUMB_FUNC_START sub_800E738
sub_800E738: @ 0x0800E738
	push {r4, r5, r7, lr}
	sub sp, #0xc
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
	subs r0, #0x43
	cmp r0, #0x32
	bls _0800E75C
	b _0800E9A0
_0800E75C:
	lsls r1, r0, #2
	ldr r2, _0800E768
	adds r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_0800E768: .4byte _0800E76C
_0800E76C: @ jump table
	.4byte _0800E948 @ case 0
	.4byte _0800E91C @ case 1
	.4byte _0800E9A0 @ case 2
	.4byte _0800E9A0 @ case 3
	.4byte _0800E9A0 @ case 4
	.4byte _0800E9A0 @ case 5
	.4byte _0800E9A0 @ case 6
	.4byte _0800E9A0 @ case 7
	.4byte _0800E9A0 @ case 8
	.4byte _0800E8C4 @ case 9
	.4byte _0800E9A0 @ case 10
	.4byte _0800E9A0 @ case 11
	.4byte _0800E9A0 @ case 12
	.4byte _0800E974 @ case 13
	.4byte _0800E9A0 @ case 14
	.4byte _0800E898 @ case 15
	.4byte _0800E9A0 @ case 16
	.4byte _0800E9A0 @ case 17
	.4byte _0800E8F0 @ case 18
	.4byte _0800E9A0 @ case 19
	.4byte _0800E9A0 @ case 20
	.4byte _0800E9A0 @ case 21
	.4byte _0800E9A0 @ case 22
	.4byte _0800E9A0 @ case 23
	.4byte _0800E9A0 @ case 24
	.4byte _0800E9A0 @ case 25
	.4byte _0800E9A0 @ case 26
	.4byte _0800E9A0 @ case 27
	.4byte _0800E9A0 @ case 28
	.4byte _0800E9A0 @ case 29
	.4byte _0800E9A0 @ case 30
	.4byte _0800E9A0 @ case 31
	.4byte _0800E878 @ case 32
	.4byte _0800E868 @ case 33
	.4byte _0800E9A0 @ case 34
	.4byte _0800E9A0 @ case 35
	.4byte _0800E9A0 @ case 36
	.4byte _0800E9A0 @ case 37
	.4byte _0800E9A0 @ case 38
	.4byte _0800E9A0 @ case 39
	.4byte _0800E9A0 @ case 40
	.4byte _0800E848 @ case 41
	.4byte _0800E9A0 @ case 42
	.4byte _0800E9A0 @ case 43
	.4byte _0800E9A0 @ case 44
	.4byte _0800E888 @ case 45
	.4byte _0800E9A0 @ case 46
	.4byte _0800E838 @ case 47
	.4byte _0800E9A0 @ case 48
	.4byte _0800E9A0 @ case 49
	.4byte _0800E858 @ case 50
_0800E838:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E844
	ldrh r2, [r1]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E844: .4byte gUnknown_08101A04
_0800E848:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E854
	ldrh r2, [r1, #0xc]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E854: .4byte gUnknown_08101A04
_0800E858:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E864
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E864: .4byte gUnknown_08101A04
_0800E868:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E874
	ldrh r2, [r1, #0x24]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E874: .4byte gUnknown_08101A04
_0800E878:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E884
	ldrh r2, [r1, #0x30]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E884: .4byte gUnknown_08101A04
_0800E888:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E894
	ldrh r2, [r1, #0x3c]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E894: .4byte gUnknown_08101A04
_0800E898:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E8BC
	ldr r0, _0800E8C0
	ldr r1, _0800E8BC
	ldr r0, [r0]
	ldr r1, [r1, #8]
	lsrs r0, r1
	ldr r1, _0800E8BC
	ldr r1, [r1, #4]
	bl __umodsi3
	ldrh r1, [r5]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E8BC: .4byte gUnknown_08101A04
_0800E8C0: .4byte gUnknown_0300045C
_0800E8C4:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E8E8
	ldr r0, _0800E8EC
	ldr r1, _0800E8E8
	ldr r0, [r0]
	ldr r1, [r1, #0x14]
	lsrs r0, r1
	ldr r1, _0800E8E8
	ldr r1, [r1, #0x10]
	bl __umodsi3
	ldrh r1, [r5, #0xc]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E8E8: .4byte gUnknown_08101A04
_0800E8EC: .4byte gUnknown_0300045C
_0800E8F0:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E914
	ldr r0, _0800E918
	ldr r1, _0800E914
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	lsrs r0, r1
	ldr r1, _0800E914
	ldr r1, [r1, #0x1c]
	bl __umodsi3
	ldrh r1, [r5, #0x18]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E914: .4byte gUnknown_08101A04
_0800E918: .4byte gUnknown_0300045C
_0800E91C:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E940
	ldr r0, _0800E944
	ldr r1, _0800E940
	ldr r0, [r0]
	ldr r1, [r1, #0x2c]
	lsrs r0, r1
	ldr r1, _0800E940
	ldr r1, [r1, #0x28]
	bl __umodsi3
	ldrh r1, [r5, #0x24]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E940: .4byte gUnknown_08101A04
_0800E944: .4byte gUnknown_0300045C
_0800E948:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E96C
	ldr r0, _0800E970
	ldr r1, _0800E96C
	ldr r0, [r0]
	ldr r1, [r1, #0x38]
	lsrs r0, r1
	ldr r1, _0800E96C
	ldr r1, [r1, #0x34]
	bl __umodsi3
	ldrh r1, [r5, #0x30]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E96C: .4byte gUnknown_08101A04
_0800E970: .4byte gUnknown_0300045C
_0800E974:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E998
	ldr r0, _0800E99C
	ldr r1, _0800E998
	ldr r0, [r0]
	ldr r1, [r1, #0x44]
	lsrs r0, r1
	ldr r1, _0800E998
	ldr r1, [r1, #0x40]
	bl __umodsi3
	ldrh r1, [r5, #0x3c]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E998: .4byte gUnknown_08101A04
_0800E99C: .4byte gUnknown_0300045C
_0800E9A0:
	adds r0, r7, #0
	adds r0, #8
	ldr r2, _0800E9B4
	adds r1, r2, #0
	strh r1, [r0]
_0800E9AA:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800E9B8
	.align 2, 0
_0800E9B4: .4byte 0x0000FFFF
_0800E9B8:
	add sp, #0xc
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800E9C0
sub_800E9C0: @ 0x0800E9C0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0800E9E0
	movs r2, #0xd0
	lsls r2, r2, #1
	ldr r3, _0800E9E4
	ldr r0, [r7]
	bl sub_800DD50
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9E0: .4byte gUnknown_08101A60
_0800E9E4: .4byte sub_800E9E8+1

	THUMB_FUNC_START sub_800E9E8
sub_800E9E8: @ 0x0800E9E8
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
	ldr r0, _0800EA14
	ldr r1, [r7, #4]
	ldrb r2, [r1]
	adds r1, r2, #0
	subs r1, #0x20
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800EA18
	.align 2, 0
_0800EA14: .4byte gUnknown_0300046C
_0800EA18:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EA20
sub_800EA20: @ 0x0800EA20
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800EAD0
	ldr r2, _0800EAD4
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800EAD8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800EADC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800EAE0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800EAE4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800EAE8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800EAEC
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _0800EAE4
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800EAE0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800EAF0
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800EAF4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800EAF8
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800EAE0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800EAFC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800EB00
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800EB04
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
_0800EAD0: .4byte 0x0400000E
_0800EAD4: .4byte 0x00001F0B
_0800EAD8: .4byte 0x0400001C
_0800EADC: .4byte 0x0400001E
_0800EAE0: .4byte 0x040000D4
_0800EAE4: .4byte gUnknown_08101C48
_0800EAE8: .4byte 0x050001E0
_0800EAEC: .4byte 0x84000008
_0800EAF0: .4byte gUnknown_08101C68
_0800EAF4: .4byte 0x06008000
_0800EAF8: .4byte 0x840012C8
_0800EAFC: .4byte gUnknown_08106788
_0800EB00: .4byte 0x0600F800
_0800EB04: .4byte 0x84000200

	THUMB_FUNC_START sub_800EB08
sub_800EB08: @ 0x0800EB08
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800EB2C
	ldr r1, [r0]
	cmp r1, #0
	beq _0800EB20
	ldr r0, _0800EB30
	ldr r1, _0800EB34
	ldrh r2, [r1]
	strh r2, [r0]
_0800EB20:
	ldr r0, [r7]
	cmp r0, #0
	beq _0800EB38
	cmp r0, #1
	beq _0800EB4C
	b _0800EB68
	.align 2, 0
_0800EB2C: .4byte gUnknown_0300052C
_0800EB30: .4byte gUnknown_030011D8
_0800EB34: .4byte 0x04000204
_0800EB38:
	movs r0, #4
	bl sub_8012174
	ldr r1, _0800EB48
	movs r0, #0
	bl sub_80121DC
	b _0800EB68
	.align 2, 0
_0800EB48: .4byte gUnknown_03000428
_0800EB4C:
	ldr r0, _0800EB5C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800EB60
	ldr r1, _0800EB64
	ldrh r2, [r1]
	strh r2, [r0]
	b _0800EB68
	.align 2, 0
_0800EB5C: .4byte 0x04000100
_0800EB60: .4byte 0x04000204
_0800EB64: .4byte gUnknown_030011D8
_0800EB68:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800EB70
sub_800EB70: @ 0x0800EB70
	push {r7, lr}
	sub sp, #0x54
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	bl sub_800D790
	ldr r1, _0800EBE4
	movs r0, #0
	bl sub_80121DC
	adds r0, r7, #0
	ldrh r1, [r0]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_8012410
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800EBB4
	ldr r0, [r7, #0x50]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x50]
_0800EBB4:
	adds r0, r7, #0
	ldrh r1, [r0]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80124EC
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800EBD2
	ldr r0, [r7, #0x50]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x50]
_0800EBD2:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x50]
	adds r0, r1, #0
	b _0800EBE8
	.align 2, 0
_0800EBE4: .4byte gUnknown_03000428
_0800EBE8:
	add sp, #0x54
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EBF0
sub_800EBF0: @ 0x0800EBF0
	push {r7, lr}
	sub sp, #0x54
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	bl sub_800D790
	ldr r1, _0800EC44
	movs r0, #0
	bl sub_80121DC
	adds r0, r7, #0
	ldrh r1, [r0]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_8012360
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800EC34
	ldr r0, [r7, #0x50]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x50]
_0800EC34:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x50]
	adds r0, r1, #0
	b _0800EC48
	.align 2, 0
_0800EC44: .4byte gUnknown_03000428
_0800EC48:
	add sp, #0x54
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EC50
sub_800EC50: @ 0x0800EC50
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	adds r1, r7, #0
	movs r0, #0
	bl sub_800EBF0
	ldr r0, _0800EC84
	adds r1, r7, #0
	bl strcmp
	cmp r0, #0
	beq _0800EC88
	adds r0, r7, #0
	ldr r1, _0800EC84
	bl sprintf
	adds r1, r7, #0
	movs r0, #0
	bl sub_800EB70
	cmp r0, #0
	beq _0800EC88
	movs r0, #1
	b _0800EC8C
	.align 2, 0
_0800EC84: .4byte gUnknown_08101C2C
_0800EC88:
	movs r0, #0
	b _0800EC8C
_0800EC8C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EC94
sub_800EC94: @ 0x0800EC94
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800ECAC
	movs r1, #0
	strh r1, [r0]
	bl sub_800ECB4
	ldr r1, _0800ECB0
	ldrh r0, [r1]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECAC: .4byte 0x0E001FFE
_0800ECB0: .4byte 0x0E001FFC

	THUMB_FUNC_START sub_800ECB4
sub_800ECB4: @ 0x0800ECB4
	push {r7, lr}
	mov r7, sp
_0800ECB8:
	ldr r0, _0800ECC8
	ldr r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0800ECCC
	b _0800ECCE
	.align 2, 0
_0800ECC8: .4byte 0x09FFFFF8
_0800ECCC:
	b _0800ECB8
_0800ECCE:
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800ECD4
sub_800ECD4: @ 0x0800ECD4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, _0800ED04
	adds r0, r1, #0
	bl sub_800EDD0
	adds r1, r0, #0
	adds r0, r1, #0
	bl sub_800EE5C
	ldr r1, [r7]
	str r0, [r1]
	ldr r0, _0800ED08
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #8]
_0800ECFA:
	ldr r0, [r7, #8]
	cmp r0, #7
	ble _0800ED0C
	b _0800ED36
	.align 2, 0
_0800ED04: .4byte 0x0E001000
_0800ED08: .4byte 0x0E001004
_0800ED0C:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	bl sub_800EDD0
	adds r1, r0, #0
	adds r0, r1, #0
	bl sub_800EE5C
	adds r2, r0, #0
	adds r0, r7, #4
	ldr r1, [r0]
	str r2, [r1]
	adds r1, #4
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #4
	str r1, [r7, #0xc]
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	b _0800ECFA
_0800ED36:
	ldr r1, _0800ED44
	ldrh r0, [r1]
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED44: .4byte 0x0E001FFC

	THUMB_FUNC_START sub_800ED48
sub_800ED48: @ 0x0800ED48
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	ldr r4, _0800ED88
	ldr r0, [r7]
	bl sub_800EE5C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800EE1C
	ldr r4, _0800ED8C
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_800EE5C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800EE1C
	ldr r0, _0800ED90
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #0xc]
_0800ED7E:
	ldr r0, [r7, #0xc]
	cmp r0, #7
	ble _0800ED94
	b _0800EDBE
	.align 2, 0
_0800ED88: .4byte 0x0E001400
_0800ED8C: .4byte 0x0E001404
_0800ED90: .4byte 0x0E001408
_0800ED94:
	ldr r4, [r7, #0x10]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, [r7, #8]
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	bl sub_800EE5C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800EE1C
	ldr r0, [r7, #0x10]
	adds r1, r0, #4
	str r1, [r7, #0x10]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800ED7E
_0800EDBE:
	ldr r0, _0800EDCC
	movs r1, #0
	strh r1, [r0]
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EDCC: .4byte 0x0E001FFE

	THUMB_FUNC_START sub_800EDD0
sub_800EDD0: @ 0x0800EDD0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r0, r2, #0x18
	ldr r2, [r7]
	adds r1, r2, #1
	ldrb r2, [r1]
	lsls r3, r2, #0x18
	lsrs r1, r3, #0x18
	lsls r2, r1, #8
	orrs r0, r2
	ldr r2, [r7]
	adds r1, r2, #2
	ldrb r2, [r1]
	lsls r3, r2, #0x18
	lsrs r1, r3, #0x18
	lsls r2, r1, #0x10
	orrs r0, r2
	ldr r2, [r7]
	adds r1, r2, #3
	ldrb r2, [r1]
	lsls r3, r2, #0x18
	lsrs r1, r3, #0x18
	lsls r2, r1, #0x18
	orrs r0, r2
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _0800EE12
_0800EE12:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EE1C
sub_800EE1C: @ 0x0800EE1C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #1
	ldr r2, [r7, #4]
	lsrs r1, r2, #8
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #2
	ldr r2, [r7, #4]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #3
	ldr r2, [r7, #4]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	strb r2, [r0]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EE5C
sub_800EE5C: @ 0x0800EE5C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	lsrs r1, r0, #0x18
	movs r0, #0xff
	ands r1, r0
	ldr r2, [r7]
	lsrs r0, r2, #8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	orrs r1, r0
	ldr r2, [r7]
	lsls r0, r2, #8
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r0, r2
	orrs r1, r0
	ldr r2, [r7]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #0x18
	orrs r1, r0
	adds r0, r1, #0
	b _0800EE92
_0800EE92:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EE9C
sub_800EE9C: @ 0x0800EE9C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_0800EEA6:
	ldr r0, [r7]
	cmp r0, #5
	bls _0800EEAE
	b _0800EED0
_0800EEAE:
	ldr r0, _0800EECC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800EEA6
	.align 2, 0
_0800EECC: .4byte gUnknown_03002BB0
_0800EED0:
	movs r0, #0
	str r0, [r7]
_0800EED4:
	ldr r0, [r7]
	cmp r0, #4
	bls _0800EEDC
	b _0800EF00
_0800EEDC:
	ldr r0, _0800EEFC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r2, r0, #0
	adds r2, #0xc
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800EED4
	.align 2, 0
_0800EEFC: .4byte gUnknown_03002BB0
_0800EF00:
	ldr r0, _0800EF30
	movs r1, #4
	str r1, [r0]
	ldr r0, _0800EF30
	movs r1, #1
	str r1, [r0, #4]
	ldr r0, _0800EF30
	movs r1, #0xb4
	str r1, [r0, #8]
	bl sub_800EFFC
	adds r1, r0, #0
	ldr r0, _0800EF30
	ldrh r2, [r0, #0x16]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EF30: .4byte gUnknown_03002BB0

	THUMB_FUNC_START sub_800EF34
sub_800EF34: @ 0x0800EF34
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
_0800EF42:
	ldr r0, [r7, #4]
	cmp r0, #2
	bls _0800EF4A
	b _0800EF70
_0800EF4A:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r1, r0, #1
	adds r0, r1, #0
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, _0800EF6C
	adds r1, r1, r2
	bl sub_800EBF0
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800EF42
	.align 2, 0
_0800EF6C: .4byte gUnknown_03002BB0
_0800EF70:
	ldr r4, _0800EF94
	bl sub_800EFFC
	adds r1, r0, #0
	ldrh r0, [r4, #0x16]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	cmp r0, r1
	beq _0800EF8E
	bl sub_800EE9C
	bl sub_800EFA0
	movs r0, #1
	str r0, [r7]
_0800EF8E:
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800EF98
	.align 2, 0
_0800EF94: .4byte gUnknown_03002BB0
_0800EF98:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EFA0
sub_800EFA0: @ 0x0800EFA0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	bl sub_800EFFC
	adds r1, r0, #0
	ldr r0, _0800EFC8
	ldrh r2, [r0, #0x16]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	movs r0, #0
	str r0, [r7]
_0800EFC0:
	ldr r0, [r7]
	cmp r0, #2
	bls _0800EFCC
	b _0800EFF4
	.align 2, 0
_0800EFC8: .4byte gUnknown_03002BB0
_0800EFCC:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, r0, #1
	adds r0, r1, #0
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, _0800EFF0
	adds r1, r1, r2
	bl sub_800EB70
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800EFC0
	.align 2, 0
_0800EFF0: .4byte gUnknown_03002BB0
_0800EFF4:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800EFFC
sub_800EFFC: @ 0x0800EFFC
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
	movs r0, #0
	str r0, [r7, #4]
_0800F00C:
	ldr r0, [r7, #4]
	cmp r0, #5
	bls _0800F014
	b _0800F03C
_0800F014:
	adds r0, r7, #0
	adds r1, r7, #0
	ldr r2, _0800F038
	ldr r3, [r7, #4]
	adds r4, r3, #0
	lsls r3, r4, #1
	adds r2, r2, r3
	ldrh r3, [r2]
	mvns r2, r3
	ldrh r1, [r1]
	adds r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800F00C
	.align 2, 0
_0800F038: .4byte gUnknown_03002BB0
_0800F03C:
	adds r0, r7, #0
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800F044
_0800F044:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	ARM_FUNC_START sub_800F04C
sub_800F04C: @ sub_800F04C
	ldr r3, _0800F140
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #1
	bne _0800F100
	add r2, r2, #4
	ands r0, r1, #2
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #4
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #8
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x2000
	b _0800F110
_0800F100:
	ldr r3, _0800F144
	ldr r1, [r3]
	add r1, r1, #1
	str r1, [r3]
_0800F110:
	ldr r3, _0800F140
	strh r0, [r3, #2]
	ldr r3, _0800F148
	ldr r1, [r3]
	orr r1, r1, r0
	str r1, [r3]
	ldr r1, _0800F14C
	add r1, r1, r2
	ldr r0, [r1]
	tst r0, r0
	bxne r0
	.byte 0x1E, 0xFF, 0x2F, 0xE1
_0800F140: .4byte 0x04000200
_0800F144: .4byte gUnknown_0300045C
_0800F148: .4byte gUnknown_03007FF8
_0800F14C: .4byte gUnknown_0300041C

	THUMB_FUNC_START sub_800F150
sub_800F150: @ 0x0800F150
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r2, [r7]
	str r3, [r7, #4]
	subs r4, r1, r0
	mov r2, sp
	subs r2, r2, r4
	mov sp, r2
	movs r1, #0
_0800F164:
	ldr r3, [r0, r1]
	str r3, [r2, r1]
	adds r1, #4
	cmp r1, r4
	bne _0800F164
	ldr r0, _0800F184
	mov lr, r0
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bx sp
_0800F178:
    add sp, r4
    add sp, sp, #8
    pop {r4,r7}
    pop {r1}
    bx  r1
    
    .byte 0x00, 0x00
_0800F184: .4byte _0800F178+1

	THUMB_FUNC_START sub_800F188
sub_800F188: @ 0x0800F188
	push {r0, r1, r2, r3}
	push {r4, r5, r7, lr}
	add r7, sp, #0x10
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	movs r3, #0
	ldr r4, [r7, #0xc]
	movs r5, #2
	tst r4, r5
	bne _0800F1C6
	movs r5, #1
	tst r4, r5
	bne _0800F1B6
	b _0800F1A6
_0800F1A6:
	ldrb r4, [r0, r3]
	ldrb r5, [r1, r3]
	cmp r4, r5
	bne _0800F1D6
	adds r3, #1
	cmp r2, r3
	bne _0800F1A6
	b _0800F1DC
_0800F1B6:
	ldrh r4, [r0, r3]
	ldrh r5, [r1, r3]
	cmp r4, r5
	bne _0800F1D6
	adds r3, #2
	cmp r2, r3
	bne _0800F1B6
	b _0800F1DC
_0800F1C6:
	ldr r4, [r0, r3]
	ldr r5, [r1, r3]
	cmp r4, r5
	bne _0800F1D6
	adds r3, #4
	cmp r2, r3
	bne _0800F1C6
	b _0800F1DC
_0800F1D6:
	adds r3, r3, r0
	movs r0, #1
	b _0800F1E4
_0800F1DC:
	movs r0, #0
	movs r3, #0
	movs r4, #0
	b _0800F1E4
_0800F1E4:
	ldr r1, [r7, #0x10]
	str r3, [r1]
	ldr r1, [r7, #0x14]
	str r4, [r1]
	pop {r4, r5, r7}
	pop {r1}
	add sp, #0x10
	bx r1

	THUMB_FUNC_START sub_800F1F4
sub_800F1F4: @ 0x0800F1F4
	push {r0, r1, r2, r3}
	push {r4, r5, r7, lr}
	add r7, sp, #0x10
	ldr r0, [r7]
	ldr r2, [r7, #4]
	movs r3, #0
	ldr r4, [r7, #0xc]
	movs r5, #2
	tst r4, r5
	bne _0800F230
	movs r5, #1
	tst r4, r5
	bne _0800F220
	b _0800F210
_0800F210:
	ldrb r5, [r7, #8]
_0800F212:
	ldrb r4, [r0, r3]
	cmp r4, r5
	bne _0800F240
	adds r3, #1
	cmp r2, r3
	bne _0800F212
	b _0800F246
_0800F220:
	ldrh r5, [r7, #8]
_0800F222:
	ldrh r4, [r0, r3]
	cmp r4, r5
	bne _0800F240
	adds r3, #2
	cmp r2, r3
	bne _0800F222
	b _0800F246
_0800F230:
	ldr r5, [r7, #8]
_0800F232:
	ldr r4, [r0, r3]
	cmp r4, r5
	bne _0800F240
	adds r3, #4
	cmp r2, r3
	bne _0800F232
	b _0800F246
_0800F240:
	adds r3, r3, r0
	movs r0, #1
	b _0800F24E
_0800F246:
	movs r0, #0
	movs r3, #0
	movs r4, #0
	b _0800F24E
_0800F24E:
	ldr r1, [r7, #0x10]
	str r3, [r1]
	ldr r1, [r7, #0x14]
	str r4, [r1]
	pop {r4, r5, r7}
	pop {r1}
	add sp, #0x10
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800F260
sub_800F260: @ 0x0800F260
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	add r7, sp, #0x14
	ldr r0, [r7]
	movs r1, #0
	ldr r2, [r7, #4]
	movs r3, #0
_0800F26E:
	lsrs r5, r1, #0x10
	adds r5, r5, r1
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrh r4, [r0, r3]
	cmp r4, r5
	bne _0800F286
	adds r3, #2
	adds r1, #1
	cmp r2, r3
	bne _0800F26E
	b _0800F28C
_0800F286:
	adds r3, r3, r0
	movs r0, #1
	b _0800F294
_0800F28C:
	movs r0, #0
	movs r3, #0
	movs r4, #0
	b _0800F294
_0800F294:
	ldr r1, [r7, #8]
	str r3, [r1]
	ldr r1, [r7, #0xc]
	str r4, [r1]
	pop {r4, r5, r6, r7}
	pop {r1}
	add sp, #0x10
	bx r1

	THUMB_FUNC_START sub_800F2A4
sub_800F2A4: @ 0x0800F2A4
	push {r0, r1, r2, r3}
	push {r4, r5, r7, lr}
	add r7, sp, #0x10
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	movs r3, #0
	ldr r4, [r7, #0xc]
	movs r5, #2
	tst r4, r5
	bne _0800F2DA
	movs r5, #1
	tst r4, r5
	bne _0800F2CE
	b _0800F2C2
_0800F2C2:
	ldrb r4, [r1, r3]
	strb r4, [r0, r3]
	adds r3, #1
	cmp r2, r3
	bne _0800F2C2
	b _0800F2E6
_0800F2CE:
	ldrh r4, [r1, r3]
	strh r4, [r0, r3]
	adds r3, #2
	cmp r2, r3
	bne _0800F2CE
	b _0800F2E6
_0800F2DA:
	ldr r4, [r1, r3]
	str r4, [r0, r3]
	adds r3, #4
	cmp r2, r3
	bne _0800F2DA
	b _0800F2E6
_0800F2E6:
	pop {r4, r5, r7}
	pop {r1}
	add sp, #0x10
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800F2F0
sub_800F2F0: @ 0x0800F2F0
	push {r0, r1, r2, r3}
	push {r4, r5, r7, lr}
	add r7, sp, #0x10
	ldr r0, [r7]
	ldr r2, [r7, #4]
	movs r3, #0
	ldr r4, [r7, #0xc]
	movs r5, #2
	tst r4, r5
	bne _0800F324
	movs r5, #1
	tst r4, r5
	bne _0800F318
	b _0800F30C
_0800F30C:
	ldrb r4, [r7, #8]
_0800F30E:
	strb r4, [r0, r3]
	adds r3, #1
	cmp r2, r3
	bne _0800F30E
	b _0800F330
_0800F318:
	ldrh r4, [r7, #8]
_0800F31A:
	strh r4, [r0, r3]
	adds r3, #2
	cmp r2, r3
	bne _0800F31A
	b _0800F330
_0800F324:
	ldr r4, [r7, #8]
_0800F326:
	str r4, [r0, r3]
	adds r3, #4
	cmp r2, r3
	bne _0800F326
	b _0800F330
_0800F330:
	pop {r4, r5, r7}
	pop {r1}
	add sp, #0x10
	bx r1

	THUMB_FUNC_START sub_800F338
sub_800F338: @ 0x0800F338
	push {r0, r1, r2, r3}
	push {r4, r5, r7, lr}
	add r7, sp, #0x10
	ldr r0, [r7]
	movs r1, #0
	ldr r2, [r7, #4]
	movs r3, #0
_0800F346:
	lsrs r4, r1, #0x10
	adds r4, r4, r1
	strh r4, [r0, r3]
	adds r3, #2
	adds r1, #1
	cmp r2, r3
	bne _0800F346
	pop {r4, r5, r7}
	pop {r1}
	add sp, #0x10
	bx r1

	THUMB_FUNC_START sub_800F35C
sub_800F35C: @ 0x0800F35C
	push {r0, r1, r2, r3}
	push {r4, r5, r7, lr}
	add r7, sp, #0x10
	movs r3, #0
	ldr r4, [r2]
	ldr r5, [r2, #4]
_0800F368:
	str r4, [r0, r3]
	adds r3, #4
	str r5, [r0, r3]
	adds r3, #4
	cmp r1, r3
	bne _0800F368
	pop {r4, r5, r7}
	pop {r1}
	add sp, #0x10
	bx r1

	THUMB_FUNC_START sub_800F37C
sub_800F37C: @ 0x0800F37C
	svc #0xd
	bx lr

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
_080100A0: .4byte gUnknown_03002BD0
_080100A4: .4byte gUnknown_03003C10
_080100A8: .4byte 0x0097F800
_080100AC: .4byte 0x00000004
_080100B0: .4byte gUnknown_08107BF8
_080100B4: .4byte gUnknown_03003DD0

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
_080103D8: .4byte gUnknown_03003B80
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
_08010530: .4byte gUnknown_03003B80
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
_08011440: .4byte gUnknown_03003B80

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

	THUMB_FUNC_START sub_8011534
sub_8011534: @ 0x08011534
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1e]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1d]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1d]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #0x16]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	ldr r0, _080115B0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080115B4
	ldr r2, _080115B8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080115BC
	movs r1, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080115B0: .4byte 0x04000134
_080115B4: .4byte 0x04000128
_080115B8: .4byte 0x00002003
_080115BC: .4byte 0x0400012A

	THUMB_FUNC_START sub_80115C0
sub_80115C0: @ 0x080115C0
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_8011F08
	cmp r0, #0
	beq _080115D8
	movs r0, #0
	bl _08011CEA
_080115D8:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #0xf
	bls _08011610
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x4a
	ldrb r3, [r2]
	subs r1, r3, #1
	adds r2, r0, #0
	adds r0, #0x4a
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	movs r0, #0
	bl _08011CEA
_08011610:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801165C
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08011658
	ldrh r1, [r0]
	movs r2, #0xfc
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #8
	beq _0801165C
	ldr r0, [r7]
	bl sub_8011534
	ldr r0, [r7, #4]
	movs r2, #8
	adds r1, r0, #0
	eors r1, r2
	adds r0, r1, #0
	b _08011CEA
	.align 2, 0
_08011658: .4byte 0x04000128
_0801165C:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xdf
	bls _080116D6
	ldr r0, [r7]
	bl sub_8011F28
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08011678
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08011CEA
_08011678:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4b
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801169C
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xe1
	bls _0801169C
	ldr r0, [r7]
	bl sub_8011F08
	cmp r0, #0
	bne _0801169C
	bl sub_8012100
	b _08011610
_0801169C:
	ldr r0, [r7]
	bl sub_8011F08
	cmp r0, #0
	bne _080116D2
	ldr r0, [r7]
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	bne _080116B8
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x71
	b _08011CEA
_080116B8:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #0x16]
	subs r1, r2, #1
	ldrh r2, [r0, #0x16]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x16]
_080116D2:
	movs r0, #0
	b _08011CEA
_080116D6:
	ldr r1, [r7]
	ldrb r0, [r1, #0x18]
	cmp r0, #2
	bne _080116E0
	b _0801193C
_080116E0:
	cmp r0, #2
	bgt _080116F0
	cmp r0, #0
	beq _080116FE
	cmp r0, #1
	bne _080116EE
	b _08011854
_080116EE:
	b _08011B9A
_080116F0:
	cmp r0, #0xd0
	bne _080116F6
	b _080119BA
_080116F6:
	cmp r0, #0xd1
	bne _080116FC
	b _08011AEA
_080116FC:
	b _08011B9A
_080116FE:
	movs r0, #0xe
	str r0, [r7, #0xc]
	movs r0, #3
	str r0, [r7, #4]
_08011706:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0801170E
	b _0801173E
_0801170E:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011728
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	ldr r1, _0801172C
	cmp r0, r1
	beq _08011730
	b _0801173E
	.align 2, 0
_08011728: .4byte 0x04000120
_0801172C: .4byte 0x0000FFFF
_08011730:
	ldr r0, [r7, #0xc]
	asrs r1, r0, #1
	str r1, [r7, #0xc]
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011706
_0801173E:
	ldr r0, [r7, #0xc]
	movs r1, #0xe
	ands r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7]
	ldr r2, [r7, #0xc]
	adds r1, r2, #0
	ldrb r2, [r0, #0x1d]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x1d]
	movs r0, #3
	str r0, [r7, #4]
_0801175E:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011766
	b _080117B0
_08011766:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _080117A4
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080117A8
	movs r0, #1
	ldr r1, [r7, #4]
	lsls r0, r1
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, [r7, #8]
	cmp r1, r0
	beq _080117A8
	movs r0, #0
	str r0, [r7, #0xc]
	b _080117B0
	.align 2, 0
_080117A4: .4byte 0x04000120
_080117A8:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _0801175E
_080117B0:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r3, [r7, #0xc]
	adds r2, r3, #0
	ldrb r1, [r1, #0x1e]
	adds r3, r1, #0
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0, #0x1e]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x1e]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080117EE
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
_080117EE:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08011822
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x4a
	ldrb r3, [r2]
	subs r1, r3, #1
	adds r2, r0, #0
	adds r0, #0x4a
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	b _08011836
_08011822:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r0, [r0, #0x1d]
	ldrb r1, [r1, #0x1e]
	cmp r0, r1
	beq _08011836
	ldr r0, [r7]
	bl sub_8011D70
	b _08011854
_08011836:
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	adds r0, r1, #0
	movs r1, #0xc4
	lsls r1, r1, #7
	orrs r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_08011854:
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x49
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	movs r0, #3
	str r0, [r7, #4]
_08011868:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011870
	b _080118F4
_08011870:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _080118EC
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x72
	bne _080118E2
	ldr r0, _080118F0
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldr r2, [r7, #8]
	adds r1, r2, #0
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #8]
	movs r1, #0xff
	ands r0, r1
	str r0, [r7, #8]
	movs r0, #1
	ldr r1, [r7, #4]
	lsls r0, r1
	ldr r1, [r7, #8]
	cmp r1, r0
	bne _080118E2
	ldr r0, [r7]
	ldr r1, [r7]
	adds r2, r1, #0
	adds r1, #0x49
	ldr r3, [r7, #8]
	adds r2, r3, #0
	ldrb r3, [r1]
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r0, #0
	adds r0, #0x49
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_080118E2:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011868
	.align 2, 0
_080118EC: .4byte 0x04000120
_080118F0: .4byte gUnknown_03001640
_080118F4:
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x49
	ldrb r0, [r0, #0x1d]
	ldrb r1, [r2]
	cmp r0, r1
	beq _08011906
	b _08011836
_08011906:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r2, [r1]
	adds r0, r2, #0
	movs r1, #0xc2
	lsls r1, r1, #7
	orrs r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_0801193C:
	movs r0, #3
	str r0, [r7, #4]
_08011940:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011948
	b _080119B8
_08011948:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080119A8
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _080119B0
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, _080119B4
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r7, #8]
	cmp r0, r1
	beq _080119A8
	ldr r0, [r7]
	ldr r1, [r7]
	adds r2, r1, #0
	adds r1, #0x49
	movs r2, #1
	ldr r3, [r7, #4]
	lsls r2, r3
	ldrb r1, [r1]
	eors r1, r2
	adds r2, r0, #0
	adds r0, #0x49
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_080119A8:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011940
	.align 2, 0
_080119B0: .4byte 0x04000120
_080119B4: .4byte gUnknown_03001640
_080119B8:
	b _08011C5E
_080119BA:
	movs r0, #1
	str r0, [r7, #0xc]
	movs r0, #3
	str r0, [r7, #4]
_080119C2:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080119CA
	b _08011A50
_080119CA:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011A28
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r0, #0
	adds r2, #0x19
	adds r0, r2, r1
	ldr r2, [r7, #8]
	adds r1, r2, #0
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011A44
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x72
	beq _08011A2C
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x73
	beq _08011A2C
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x60
	b _08011CEA
	.align 2, 0
_08011A28: .4byte 0x04000120
_08011A2C:
	ldr r0, _08011A4C
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r7, #8]
	cmp r0, r1
	bne _08011A44
	movs r0, #0
	str r0, [r7, #0xc]
_08011A44:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _080119C2
	.align 2, 0
_08011A4C: .4byte gUnknown_03001640
_08011A50:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _08011A74
	ldr r0, [r7]
	ldrb r1, [r0, #0x1c]
	adds r0, r1, #0
	movs r1, #0xc6
	lsls r1, r1, #7
	orrs r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_08011A74:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xd1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	movs r0, #0x11
	str r0, [r7, #0xc]
	movs r0, #3
	str r0, [r7, #4]
_08011A90:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011A98
	b _08011AB2
_08011A98:
	ldr r0, [r7]
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r0, #0x19
	adds r1, r0, r1
	ldrb r0, [r1]
	ldr r1, [r7, #0xc]
	adds r0, r1, r0
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011A90
_08011AB2:
	ldr r0, [r7]
	ldr r2, [r7, #0xc]
	adds r1, r2, #0
	ldrb r2, [r0, #0x14]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x14]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	movs r1, #0xff
	ands r0, r1
	adds r1, r0, #0
	movs r2, #0xc8
	lsls r2, r2, #7
	adds r0, r1, #0
	orrs r0, r2
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_08011AEA:
	movs r0, #3
	str r0, [r7, #4]
_08011AEE:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011AF6
	b _08011B3C
_08011AF6:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011B30
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011B34
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x73
	beq _08011B34
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x60
	b _08011CEA
	.align 2, 0
_08011B30: .4byte 0x04000120
_08011B34:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011AEE
_08011B3C:
	ldr r0, [r7]
	bl MultiBoot
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011B78
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xe0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, [r7]
	ldrh r1, [r0, #0x16]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	movs r0, #0
	b _08011CEA
_08011B78:
	ldr r0, [r7]
	bl sub_8011534
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x1e
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	movs r0, #0x70
	b _08011CEA
_08011B9A:
	movs r0, #3
	str r0, [r7, #4]
_08011B9E:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011BA6
	b _08011C2A
_08011BA6:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011C22
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011BF8
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	lsrs r1, r2, #1
	adds r3, r1, #0
	lsls r2, r3, #0x18
	lsrs r1, r2, #0x18
	movs r2, #0x62
	subs r1, r2, r1
	cmp r0, r1
	bne _08011BFC
	ldr r0, [r7, #8]
	movs r1, #0xff
	ands r0, r1
	movs r1, #1
	ldr r2, [r7, #4]
	lsls r1, r2
	cmp r0, r1
	bne _08011BFC
	b _08011C22
	.align 2, 0
_08011BF8: .4byte 0x04000120
_08011BFC:
	ldr r0, [r7]
	ldr r1, [r7]
	adds r2, r1, #0
	adds r1, #0x49
	movs r2, #1
	ldr r3, [r7, #4]
	lsls r2, r3
	ldrb r1, [r1]
	eors r1, r2
	adds r2, r0, #0
	adds r0, #0x49
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_08011C22:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011B9E
_08011C2A:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xc4
	bne _08011C5E
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r2, #0xe
	ands r1, r2
	ldrb r2, [r0, #0x1e]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x1e]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	b _08011836
_08011C5E:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	cmp r0, #0
	bne _08011C74
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x50
	b _08011CEA
_08011C74:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	adds r1, r2, #2
	ldrb r2, [r0, #0x18]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x18]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xc4
	bne _08011C96
	b _08011836
_08011C96:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	ldr r1, [r0, #0x28]
	adds r0, r2, r1
	subs r1, r0, #3
	ldrb r0, [r1]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	ldr r2, [r7]
	ldrb r3, [r2, #0x18]
	ldr r2, [r1, #0x28]
	adds r1, r3, r2
	subs r2, r1, #4
	ldrb r3, [r2]
	adds r1, r3, #0
	orrs r1, r0
	adds r2, r1, #0
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08011CD4
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08011CEA
_08011CD4:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4b
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011CE6
	bl sub_8012100
	b _08011610
_08011CE6:
	movs r0, #0
	b _08011CEA
_08011CEA:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011CF4
sub_8011CF4: @ 0x08011CF4
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	ldr r0, _08011D2C
	ldrh r1, [r0]
	movs r2, #0x8c
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #8
	beq _08011D30
	ldr r0, [r7]
	bl sub_8011534
	ldr r0, [r7, #8]
	movs r2, #8
	adds r1, r0, #0
	eors r1, r2
	adds r0, r1, #0
	b _08011D68
	.align 2, 0
_08011D2C: .4byte 0x04000128
_08011D30:
	ldr r0, _08011D5C
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08011D60
	ldr r2, _08011D64
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	movs r0, #0
	b _08011D68
	.align 2, 0
_08011D5C: .4byte 0x0400012A
_08011D60: .4byte 0x04000128
_08011D64: .4byte 0x00002083
_08011D68:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8011D70
sub_8011D70: @ 0x08011D70
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	beq _08011D88
	ldr r0, [r7]
	bl sub_8011534
	b _08011DB8
_08011D88:
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1e]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
_08011DB8:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8011DC0
sub_8011DC0: @ 0x08011DC0
	push {r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	adds r1, r3, #0
	ldr r0, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0xc
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0xd
	strb r0, [r1]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _08011DFA
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	cmp r1, #0
	beq _08011DFA
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #0
	bne _08011DFA
	b _08011E02
_08011DFA:
	ldr r0, [r7]
	bl sub_8011534
	b _08011F00
_08011E02:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r1, [r0, #0x20]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #0xf
	movs r1, #0xf
	bics r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0xff
	ble _08011E26
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bgt _08011E26
	b _08011E2E
_08011E26:
	ldr r0, [r7]
	bl sub_8011534
	b _08011F00
_08011E2E:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, [r7, #8]
	adds r1, r1, r2
	str r1, [r0, #0x24]
	adds r0, r7, #0
	adds r0, #0xd
	ldrb r1, [r0]
	adds r0, r1, #4
	adds r2, r0, #0
	lsls r1, r2, #0x18
	asrs r0, r1, #0x18
	cmp r0, #8
	bhi _08011EC4
	lsls r1, r0, #2
	ldr r2, _08011E54
	adds r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_08011E54: .4byte _08011E58
_08011E58: @ jump table
	.4byte _08011E7C @ case 0
	.4byte _08011E7C @ case 1
	.4byte _08011E7C @ case 2
	.4byte _08011E7C @ case 3
	.4byte _08011E96 @ case 4
	.4byte _08011EAC @ case 5
	.4byte _08011EAC @ case 6
	.4byte _08011EAC @ case 7
	.4byte _08011EAC @ case 8
_08011E7C:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r1, r7, #0
	adds r1, #0xd
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r3, #3
	subs r1, r3, r2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08011EC4
_08011E96:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	movs r2, #0x38
	adds r0, r1, #0
	orrs r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	str r0, [r7, #0x10]
	b _08011EC4
_08011EAC:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r1, r7, #0
	adds r1, #0xd
	movs r2, #0
	ldrsb r2, [r1, r2]
	subs r1, r2, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08011EC4
_08011EC4:
	ldr r0, [r7]
	ldr r2, [r7, #0x10]
	adds r1, r2, #0
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r2, r1, #0
	movs r3, #0x7f
	rsbs r3, r3, #0
	adds r1, r2, #0
	orrs r1, r3
	ldrb r2, [r0, #0x1c]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x1c]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xd0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
_08011F00:
	add sp, #0x14
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8011F08
sub_8011F08: @ 0x08011F08
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xe9
	bne _08011F1C
	movs r0, #1
	b _08011F20
_08011F1C:
	movs r0, #0
	b _08011F20
_08011F20:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8011F28
sub_8011F28: @ 0x08011F28
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldrb r0, [r1, #0x18]
	cmp r0, #0xe0
	beq _08011F46
	cmp r0, #0xe0
	blt _08011F76
	cmp r0, #0xe8
	bgt _08011F76
	cmp r0, #0xe7
	blt _08011F76
	b _08012034
_08011F46:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xe1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, [r7]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #0xd
	str r1, [r0]
	ldr r0, [r7]
	movs r1, #0
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _080120D0
_08011F76:
	movs r0, #3
	str r0, [r7, #4]
_08011F7A:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011F82
	b _08011FC0
_08011F82:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011FB4
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011FB8
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r0, [r0, #4]
	cmp r1, r0
	beq _08011FB8
	b _08011F46
	.align 2, 0
_08011FB4: .4byte 0x04000120
_08011FB8:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011F7A
_08011FC0:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	adds r1, r2, #1
	ldrb r2, [r0, #0x18]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x18]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #0
	bne _08012014
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r3, [r1, #0x28]
	adds r2, r3, #0
	adds r2, #0xac
	ldrb r1, [r2]
	ldr r2, [r7]
	ldr r3, [r2, #0x28]
	adds r2, r3, #0
	adds r2, #0xad
	ldrb r3, [r2]
	lsls r2, r3, #8
	orrs r1, r2
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #4]
	lsls r1, r2, #5
	str r1, [r0]
_08012014:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1]
	lsrs r1, r2, #5
	str r1, [r0]
_0801201E:
	ldr r0, [r7]
	ldr r1, [r0]
	adds r0, r1, #0
	lsls r2, r0, #0x10
	lsrs r1, r2, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _080120D0
_08012034:
	movs r0, #3
	str r0, [r7, #4]
_08012038:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08012040
	b _08012084
_08012040:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08012078
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801207C
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r0, [r0, #4]
	cmp r1, r0
	beq _0801207C
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x71
	b _080120D0
	.align 2, 0
_08012078: .4byte 0x04000120
_0801207C:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08012038
_08012084:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	adds r1, r2, #1
	ldrb r2, [r0, #0x18]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x18]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xe9
	bne _080120AA
	movs r0, #0
	b _080120D0
_080120AA:
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r4, [r2, #0x28]
	adds r3, r4, #0
	adds r3, #0xae
	ldrb r2, [r3]
	ldr r3, [r7]
	ldr r4, [r3, #0x28]
	adds r3, r4, #0
	adds r3, #0xaf
	ldrb r4, [r3]
	lsls r3, r4, #8
	orrs r2, r3
	str r2, [r1]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r3, [r2]
	str r3, [r1, #4]
	b _0801201E
_080120D0:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80120D8
sub_80120D8: @ 0x080120D8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _080120F2
	movs r1, #0xd
	cmp r2, #8
	beq _080120F2
	movs r1, #4
_080120F2:
	subs r0, r0, r1
	bgt _080120F2
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012100
sub_8012100: @ 0x08012100
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_0801210A:
	ldr r0, [r7]
	ldr r1, _08012114
	cmp r0, r1
	ble _08012118
	b _0801213C
	.align 2, 0
_08012114: .4byte 0x0000795C
_08012118:
	ldr r0, _08012130
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _08012134
	b _0801213C
	.align 2, 0
_08012130: .4byte 0x04000128
_08012134:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0801210A
_0801213C:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r1, #0
	bl sub_80120D8
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START BgAffineSet
BgAffineSet: @ 0x08012150
	svc #0xe
	bx lr

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x08012154
	svc #0xb
	bx lr

	THUMB_FUNC_START MultiBoot
MultiBoot: @ 0x08012158
	movs r1, #1
	svc #0x25
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ObjAffineSet
ObjAffineSet: @ 0x08012160
	svc #0xf
	bx lr

	THUMB_FUNC_START SoundBiasReset
SoundBiasReset: @ 0x08012164
	movs r0, #0
	svc #0x19
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START SoundBiasSet
SoundBiasSet: @ 0x0801216C
	movs r0, #1
	svc #0x19
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012174
sub_8012174: @ 0x08012174
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _08012190
	ldr r1, _08012188
	ldr r0, _0801218C
	str r0, [r1]
	b _080121AC
	.align 2, 0
_08012188: .4byte gUnknown_03003E20
_0801218C: .4byte gUnknown_08141E08
_08012190:
	cmp r0, #0x40
	bne _080121A4
	ldr r1, _0801219C
	ldr r0, _080121A0
	str r0, [r1]
	b _080121AC
	.align 2, 0
_0801219C: .4byte gUnknown_03003E20
_080121A0: .4byte gUnknown_08141E14
_080121A4:
	ldr r1, _080121B0
	ldr r0, _080121B4
	str r0, [r1]
	movs r2, #1
_080121AC:
	adds r0, r2, #0
	bx lr
	.align 2, 0
_080121B0: .4byte gUnknown_03003E20
_080121B4: .4byte gUnknown_08141E08

	THUMB_FUNC_START sub_80121B8
sub_80121B8: @ 0x080121B8
	ldr r1, _080121D4
	ldrh r0, [r1]
	cmp r0, #0
	beq _080121D2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080121D2
	ldr r1, _080121D8
	movs r0, #1
	strb r0, [r1]
_080121D2:
	bx lr
	.align 2, 0
_080121D4: .4byte gUnknown_0300164A
_080121D8: .4byte gUnknown_0300164C

	THUMB_FUNC_START sub_80121DC
sub_80121DC: @ 0x080121DC
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08012210
	ldr r0, _08012200
	strb r1, [r0]
	ldr r1, _08012204
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08012208
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0801220C
	str r0, [r2]
	movs r0, #0
	b _08012212
	.align 2, 0
_08012200: .4byte gUnknown_03001648
_08012204: .4byte gUnknown_03001650
_08012208: .4byte 0x04000100
_0801220C: .4byte sub_80121B8+1
_08012210:
	movs r0, #1
_08012212:
	bx lr

	THUMB_FUNC_START sub_8012214
sub_8012214: @ 0x08012214
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08012280
	ldr r1, _08012284
	mov sb, r1
	ldrh r1, [r1]
	strh r1, [r2]
	movs r6, #0
	mov r2, sb
	strh r6, [r2]
	ldr r3, _08012288
	mov r8, r3
	ldr r5, [r3]
	strh r6, [r5, #2]
	ldr r3, _0801228C
	ldr r4, _08012290
	ldrb r1, [r4]
	movs r2, #8
	adds r7, r2, #0
	lsls r7, r1
	adds r1, r7, #0
	strh r1, [r3]
	subs r3, #2
	ldrb r1, [r4]
	lsls r2, r1
	ldrh r1, [r3]
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08012294
	strb r6, [r1]
	ldr r2, _08012298
	ldrh r1, [r0]
	strh r1, [r2]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r5]
	adds r1, r5, #2
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	str r5, [r2]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012280: .4byte gUnknown_03001654
_08012284: .4byte 0x04000208
_08012288: .4byte gUnknown_03001650
_0801228C: .4byte 0x04000202
_08012290: .4byte gUnknown_03001648
_08012294: .4byte gUnknown_0300164C
_08012298: .4byte gUnknown_0300164A

	THUMB_FUNC_START sub_801229C
sub_801229C: @ 0x0801229C
	ldr r3, _080122CC
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080122D0
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _080122D4
	ldr r0, _080122D8
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080122DC
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_080122CC: .4byte 0x04000208
_080122D0: .4byte gUnknown_03001650
_080122D4: .4byte 0x04000200
_080122D8: .4byte gUnknown_03001648
_080122DC: .4byte gUnknown_03001654

	THUMB_FUNC_START sub_80122E0
sub_80122E0: @ 0x080122E0
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08012340
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _08012344
	ldrh r4, [r5]
	ldr r3, _08012348
	ands r4, r3
	ldr r3, _0801234C
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _08012350
	str r0, [r3]
	ldr r0, _08012354
	str r1, [r0]
	ldr r1, _08012358
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08012334
	ldr r2, _0801235C
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_0801232C:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801232C
_08012334:
	ldr r0, _08012340
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012340: .4byte 0x04000208
_08012344: .4byte 0x04000204
_08012348: .4byte 0x0000F8FF
_0801234C: .4byte gUnknown_03003E20
_08012350: .4byte 0x040000D4
_08012354: .4byte 0x040000D8
_08012358: .4byte 0x040000DC
_0801235C: .4byte 0x040000DE

	THUMB_FUNC_START sub_8012360
sub_8012360: @ 0x08012360
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08012378
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _08012380
	ldr r0, _0801237C
	b _08012402
	.align 2, 0
_08012378: .4byte gUnknown_03003E20
_0801237C: .4byte 0x000080FF
_08012380:
	ldr r0, _0801240C
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _080123AA
_08012396:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _08012396
_080123AA:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _0801240C
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl sub_80122E0
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl sub_80122E0
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_080123D8:
	movs r1, #0
	movs r3, #0
_080123DC:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _080123DC
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080123D8
	movs r0, #0
_08012402:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801240C: .4byte gUnknown_03003E20

	THUMB_FUNC_START sub_8012410
sub_8012410: @ 0x08012410
	push {r4, r5, lr}
	sub sp, #0xa4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08012428
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _08012430
	ldr r0, _0801242C
	b _080124D4
	.align 2, 0
_08012428: .4byte gUnknown_03003E20
_0801242C: .4byte 0x000080FF
_08012430:
	ldr r0, _08012470
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r1, #0
_08012446:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_0801244C:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0801244C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08012446
	movs r1, #0
	ldr r0, _08012470
	adds r2, r0, #0
	ldr r0, [r0]
	b _08012482
	.align 2, 0
_08012470: .4byte gUnknown_03003E20
_08012474:
	strh r4, [r3]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r2]
_08012482:
	ldrb r0, [r0, #8]
	cmp r1, r0
	blo _08012474
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd0
	lsls r1, r1, #0x14
	ldr r0, _080124DC
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	bl sub_80122E0
	ldr r0, _080124E0
	bl sub_8012214
	movs r4, #0
	movs r1, #0xd0
	lsls r1, r1, #0x14
	movs r3, #1
	ldr r2, _080124E4
_080124B4:
	ldrh r0, [r1]
	ands r0, r3
	cmp r0, #0
	bne _080124CE
	ldrb r0, [r2]
	cmp r0, #0
	beq _080124B4
	ldrh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080124CE
	ldr r4, _080124E8
_080124CE:
	bl sub_801229C
	adds r0, r4, #0
_080124D4:
	add sp, #0xa4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080124DC: .4byte gUnknown_03003E20
_080124E0: .4byte gUnknown_08141E20
_080124E4: .4byte gUnknown_0300164C
_080124E8: .4byte 0x0000C001

	THUMB_FUNC_START sub_80124EC
sub_80124EC: @ 0x080124EC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _08012508
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _08012510
	ldr r0, _0801250C
	b _0801253A
	.align 2, 0
_08012508: .4byte gUnknown_03003E20
_0801250C: .4byte 0x000080FF
_08012510:
	adds r0, r1, #0
	mov r1, sp
	bl sub_8012360
	mov r2, sp
	movs r3, #0
	b _08012528
_0801251E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _08012538
_08012528:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _0801251E
	movs r5, #0x80
	lsls r5, r5, #8
_08012538:
	adds r0, r5, #0
_0801253A:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012544
sub_8012544: @ 0x08012544
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08012556
_08012550:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08012556:
	cmp r6, #2
	bhi _0801257A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8012410
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08012550
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80124EC
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08012550
_0801257A:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START _call_via_r0
_call_via_r0: @ 0x08012584
	bx r0
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r1
_call_via_r1: @ 0x08012588
	bx r1
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r2
_call_via_r2: @ 0x0801258C
	bx r2
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r3
_call_via_r3: @ 0x08012590
	bx r3
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r4
_call_via_r4: @ 0x08012594
	bx r4
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r5
_call_via_r5: @ 0x08012598
	bx r5
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r6
_call_via_r6: @ 0x0801259C
	bx r6
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r7
_call_via_r7: @ 0x080125A0
	bx r7
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r8
_call_via_r8: @ 0x080125A4
	bx r8
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_r9
_call_via_r9: @ 0x080125A8
	bx sb
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_sl
_call_via_sl: @ 0x080125AC
	bx sl
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_fp
_call_via_fp: @ 0x080125B0
	bx fp
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_ip
_call_via_ip: @ 0x080125B4
	bx ip
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_sp
_call_via_sp: @ 0x080125B8
	bx sp
	.byte 0xC0, 0x46

	THUMB_FUNC_START _call_via_lr
_call_via_lr: @ 0x080125BC
	bx lr
	.byte 0xC0, 0x46

	THUMB_FUNC_START __divsi3
__divsi3: @ 0x080125C0
	cmp r1, #0
	beq _08012648
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _080125D6
	rsbs r1, r1, #0
_080125D6:
	cmp r0, #0
	bpl _080125DC
	rsbs r0, r0, #0
_080125DC:
	cmp r0, r1
	blo _0801263A
	movs r4, #1
	lsls r4, r4, #0x1c
_080125E4:
	cmp r1, r4
	bhs _080125F2
	cmp r1, r0
	bhs _080125F2
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080125E4
_080125F2:
	lsls r4, r4, #3
_080125F4:
	cmp r1, r4
	bhs _08012602
	cmp r1, r0
	bhs _08012602
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080125F4
_08012602:
	cmp r0, r1
	blo _0801260A
	subs r0, r0, r1
	orrs r2, r3
_0801260A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08012616
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08012616:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08012622
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08012622:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0801262E
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0801262E:
	cmp r0, #0
	beq _0801263A
	lsrs r3, r3, #4
	beq _0801263A
	lsrs r1, r1, #4
	b _08012602
_0801263A:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08012644
	rsbs r0, r0, #0
_08012644:
	pop {r4}
	mov pc, lr
_08012648:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __div0
__div0: @ 0x08012654
	mov pc, lr
	.byte 0x00, 0x00

	THUMB_FUNC_START __modsi3
__modsi3: @ 0x08012658
	movs r3, #1
	cmp r1, #0
	beq _0801271C
	bpl _08012662
	rsbs r1, r1, #0
_08012662:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _0801266C
	rsbs r0, r0, #0
_0801266C:
	cmp r0, r1
	blo _08012710
	movs r4, #1
	lsls r4, r4, #0x1c
_08012674:
	cmp r1, r4
	bhs _08012682
	cmp r1, r0
	bhs _08012682
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08012674
_08012682:
	lsls r4, r4, #3
_08012684:
	cmp r1, r4
	bhs _08012692
	cmp r1, r0
	bhs _08012692
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08012684
_08012692:
	movs r2, #0
	cmp r0, r1
	blo _0801269A
	subs r0, r0, r1
_0801269A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080126AC
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080126AC:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080126BE
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080126BE:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080126D0
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080126D0:
	mov ip, r3
	cmp r0, #0
	beq _080126DE
	lsrs r3, r3, #4
	beq _080126DE
	lsrs r1, r1, #4
	b _08012692
_080126DE:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _08012710
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080126F4
	lsrs r4, r1, #3
	adds r0, r0, r4
_080126F4:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08012702
	lsrs r4, r1, #2
	adds r0, r0, r4
_08012702:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08012710
	lsrs r4, r1, #1
	adds r0, r0, r4
_08012710:
	pop {r4}
	cmp r4, #0
	bpl _08012718
	rsbs r0, r0, #0
_08012718:
	pop {r4}
	mov pc, lr
_0801271C:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __umodsi3
__umodsi3: @ 0x08012728
	cmp r1, #0
	beq _080127DE
	movs r3, #1
	cmp r0, r1
	bhs _08012734
	mov pc, lr
_08012734:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0801273A:
	cmp r1, r4
	bhs _08012748
	cmp r1, r0
	bhs _08012748
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0801273A
_08012748:
	lsls r4, r4, #3
_0801274A:
	cmp r1, r4
	bhs _08012758
	cmp r1, r0
	bhs _08012758
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0801274A
_08012758:
	movs r2, #0
	cmp r0, r1
	blo _08012760
	subs r0, r0, r1
_08012760:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08012772
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08012772:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08012784
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08012784:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08012796
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08012796:
	mov ip, r3
	cmp r0, #0
	beq _080127A4
	lsrs r3, r3, #4
	beq _080127A4
	lsrs r1, r1, #4
	b _08012758
_080127A4:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080127B0
	pop {r4}
	mov pc, lr
_080127B0:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080127BE
	lsrs r4, r1, #3
	adds r0, r0, r4
_080127BE:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080127CC
	lsrs r4, r1, #2
	adds r0, r0, r4
_080127CC:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080127DA
	lsrs r4, r1, #1
	adds r0, r0, r4
_080127DA:
	pop {r4}
	mov pc, lr
_080127DE:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START memcpy
memcpy: @ 0x080127E8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _08012828
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08012828
	adds r1, r5, #0
_08012802:
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
	bhi _08012802
	cmp r2, #3
	bls _08012826
_0801281C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0801281C
_08012826:
	adds r4, r1, #0
_08012828:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08012842
	adds r1, r0, #0
_08012834:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08012834
_08012842:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START memset
memset: @ 0x08012848
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _0801288E
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0801288E
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _08012882
_0801286E:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0801286E
	b _08012882
_0801287E:
	stm r1!, {r3}
	subs r2, #4
_08012882:
	cmp r2, #3
	bhi _0801287E
	adds r3, r1, #0
	b _0801288E
_0801288A:
	strb r4, [r3]
	adds r3, #1
_0801288E:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0801288A
	adds r0, r5, #0
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _sprintf_r
_sprintf_r: @ 0x0801289C
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
	ldr r1, _080128D4
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
_080128D4: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sprintf
sprintf: @ 0x080128D8
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
	ldr r0, _08012910
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _08012914
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
_08012910: .4byte 0x7FFFFFFF
_08012914: .4byte gUnknown_0300081C

	THUMB_FUNC_START strcmp
strcmp: @ 0x08012918
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801295E
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _0801295E
	ldr r5, _08012944
	ldr r4, _08012948
_08012934:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0801294C
	movs r0, #0
	b _08012970
	.align 2, 0
_08012944: .4byte 0xFEFEFEFF
_08012948: .4byte 0x80808080
_0801294C:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _08012934
	b _0801295E
_0801295A:
	adds r2, #1
	adds r3, #1
_0801295E:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801296A
	ldrb r1, [r3]
	cmp r0, r1
	beq _0801295A
_0801296A:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_08012970:
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START strlen
strlen: @ 0x08012974
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080129AC
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _08012990
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _08012994
	b _080129A0
	.align 2, 0
_08012990: .4byte 0xFEFEFEFF
_08012994: .4byte 0x80808080
_08012998:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080129A0:
	ands r0, r3
	cmp r0, #0
	beq _08012998
	adds r1, r2, #0
	b _080129AC
_080129AA:
	adds r1, #1
_080129AC:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080129AA
	subs r0, r1, r5
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __sprint
__sprint: @ 0x080129B8
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _080129D0
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _080129D4
_080129D0:
	str r1, [r4, #4]
	movs r0, #0
_080129D4:
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __sbprintf
__sbprintf: @ 0x080129D8
	push {r4, r5, lr}
	ldr r4, _08012A48
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
	blt _08012A28
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _08012A28
	movs r4, #1
	rsbs r4, r4, #0
_08012A28:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08012A3C
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_08012A3C:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_08012A48: .4byte 0xFFFFFBA8

	THUMB_FUNC_START vfprintf
vfprintf: @ 0x08012A4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vfprintf_r
	pop {r4, r5, pc}

	THUMB_FUNC_START _vfprintf_r
_vfprintf_r: @ 0x08012A60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08012AC8
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
	bne _08012A92
	ldr r0, _08012ACC
	ldr r0, [r0]
	str r0, [r1, #0x54]
_08012A92:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08012AA2
	adds r0, r1, #0
	bl __sinit
_08012AA2:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08012AB6
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _08012AD0
_08012AB6:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _08012AD0
	movs r0, #1
	rsbs r0, r0, #0
	bl _080139B0
	.align 2, 0
_08012AC8: .4byte 0xFFFFFDE0
_08012ACC: .4byte gUnknown_0300081C
_08012AD0:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _08012AF4
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08012AF4
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl _080139B0
_08012AF4:
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
_08012B18:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_08012B1C:
	ldr r0, _08012BC8
	ldr r0, [r0]
	ldr r1, _08012BCC
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _08012B4A
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _08012B1C
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_08012B4A:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _08012B82
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
	ble _08012B7C
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08012B7A
	bl _0801399C
_08012B7A:
	add r5, sp, #0x28
_08012B7C:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_08012B82:
	cmp r4, #0
	bgt _08012B8A
	bl _08013984
_08012B8A:
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
	ldr r0, _08012BD0
	add r0, sp
	strb r2, [r0]
_08012BA6:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_08012BB2:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _08012BBC
	b _0801326E
_08012BBC:
	lsls r0, r0, #2
	ldr r1, _08012BD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012BC8: .4byte gUnknown_0300081C
_08012BCC: .4byte gUnknown_03000820
_08012BD0: .4byte 0x000001C9
_08012BD4: .4byte _08012BD8
_08012BD8: @ jump table
	.4byte _08012D3C @ case 0
	.4byte _0801326E @ case 1
	.4byte _0801326E @ case 2
	.4byte _08012D54 @ case 3
	.4byte _0801326E @ case 4
	.4byte _0801326E @ case 5
	.4byte _0801326E @ case 6
	.4byte _0801326E @ case 7
	.4byte _0801326E @ case 8
	.4byte _0801326E @ case 9
	.4byte _08012D58 @ case 10
	.4byte _08012D72 @ case 11
	.4byte _0801326E @ case 12
	.4byte _08012D6E @ case 13
	.4byte _08012D80 @ case 14
	.4byte _0801326E @ case 15
	.4byte _08012DE0 @ case 16
	.4byte _08012DE4 @ case 17
	.4byte _08012DE4 @ case 18
	.4byte _08012DE4 @ case 19
	.4byte _08012DE4 @ case 20
	.4byte _08012DE4 @ case 21
	.4byte _08012DE4 @ case 22
	.4byte _08012DE4 @ case 23
	.4byte _08012DE4 @ case 24
	.4byte _08012DE4 @ case 25
	.4byte _0801326E @ case 26
	.4byte _0801326E @ case 27
	.4byte _0801326E @ case 28
	.4byte _0801326E @ case 29
	.4byte _0801326E @ case 30
	.4byte _0801326E @ case 31
	.4byte _0801326E @ case 32
	.4byte _0801326E @ case 33
	.4byte _0801326E @ case 34
	.4byte _0801326E @ case 35
	.4byte _08012E4E @ case 36
	.4byte _08012EA0 @ case 37
	.4byte _0801326E @ case 38
	.4byte _08012EA0 @ case 39
	.4byte _0801326E @ case 40
	.4byte _0801326E @ case 41
	.4byte _0801326E @ case 42
	.4byte _0801326E @ case 43
	.4byte _08012E08 @ case 44
	.4byte _0801326E @ case 45
	.4byte _0801326E @ case 46
	.4byte _08013056 @ case 47
	.4byte _0801326E @ case 48
	.4byte _0801326E @ case 49
	.4byte _0801326E @ case 50
	.4byte _0801326E @ case 51
	.4byte _0801326E @ case 52
	.4byte _080130EE @ case 53
	.4byte _0801326E @ case 54
	.4byte _0801326E @ case 55
	.4byte _0801312A @ case 56
	.4byte _0801326E @ case 57
	.4byte _0801326E @ case 58
	.4byte _0801326E @ case 59
	.4byte _0801326E @ case 60
	.4byte _0801326E @ case 61
	.4byte _0801326E @ case 62
	.4byte _0801326E @ case 63
	.4byte _0801326E @ case 64
	.4byte _0801326E @ case 65
	.4byte _0801326E @ case 66
	.4byte _08012E3C @ case 67
	.4byte _08012E56 @ case 68
	.4byte _08012EA0 @ case 69
	.4byte _08012EA0 @ case 70
	.4byte _08012EA0 @ case 71
	.4byte _08012E0C @ case 72
	.4byte _08012E56 @ case 73
	.4byte _0801326E @ case 74
	.4byte _0801326E @ case 75
	.4byte _08012E10 @ case 76
	.4byte _0801326E @ case 77
	.4byte _08013010 @ case 78
	.4byte _0801305E @ case 79
	.4byte _0801308C @ case 80
	.4byte _08012E32 @ case 81
	.4byte _0801326E @ case 82
	.4byte _080130AC @ case 83
	.4byte _0801326E @ case 84
	.4byte _080130F6 @ case 85
	.4byte _0801326E @ case 86
	.4byte _0801326E @ case 87
	.4byte _08013134 @ case 88
_08012D3C:
	ldr r1, _08012D50
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _08012D48
	b _08012BA6
_08012D48:
	movs r0, #0x20
	strb r0, [r1]
	b _08012BA6
	.align 2, 0
_08012D50: .4byte 0x000001C9
_08012D54:
	movs r0, #1
	b _08012E20
_08012D58:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _08012D6A
	b _08012BA6
_08012D6A:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_08012D6E:
	movs r0, #4
	b _08012E34
_08012D72:
	ldr r1, _08012D7C
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _08012BA6
	.align 2, 0
_08012D7C: .4byte 0x000001C9
_08012D80:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _08012DAA
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _08012DA6
	b _08012BA6
_08012DA6:
	adds r6, r0, #0
	b _08012BA6
_08012DAA:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _08012DCA
_08012DB0:
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
_08012DCA:
	subs r0, #0x30
	cmp r0, #9
	bls _08012DB0
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _08012DDC
	b _08012BB2
_08012DDC:
	adds r6, r0, #0
	b _08012BB2
_08012DE0:
	movs r0, #0x80
	b _08012E34
_08012DE4:
	movs r4, #0
_08012DE6:
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
	bls _08012DE6
	str r4, [sp, #0x1f4]
	b _08012BB2
_08012E08:
	movs r0, #8
	b _08012E20
_08012E0C:
	movs r0, #0x40
	b _08012E2A
_08012E10:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _08012E28
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_08012E20:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _08012BA6
_08012E28:
	movs r0, #0x10
_08012E2A:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _08012BA6
_08012E32:
	movs r0, #0x20
_08012E34:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _08012BA6
_08012E3C:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _0801327C
_08012E4E:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_08012E56:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08012E66
	movs r4, #4
	add sl, r4
	b _08012E82
_08012E66:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08012E7E
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _08012E88
_08012E7E:
	movs r2, #4
	add sl, r2
_08012E82:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08012E88:
	cmp r4, #0
	bge _08012E96
	rsbs r4, r4, #0
	ldr r1, _08012E9C
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_08012E96:
	movs r2, #1
	b _08013182
	.align 2, 0
_08012E9C: .4byte 0x000001C9
_08012EA0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08012EAC
	movs r6, #6
	b _08012EBC
_08012EAC:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _08012EB6
	cmp r4, #0x47
	bne _08012EBC
_08012EB6:
	cmp r6, #0
	bne _08012EBC
	movs r6, #1
_08012EBC:
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
	beq _08012F10
	ldr r3, _08012F04
	ldr r2, _08012F00
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __ltdf2
	cmp r0, #0
	bge _08012EF6
	ldr r1, _08012F08
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_08012EF6:
	ldr r2, _08012F0C
	mov r8, r2
	movs r3, #3
	b _08013286
	.align 2, 0
_08012F00: .4byte 0x00000000
_08012F04: .4byte 0x00000000
_08012F08: .4byte 0x000001C9
_08012F0C: .4byte gUnknown_08141FA4
_08012F10:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _08012F28
	ldr r4, _08012F24
	mov r8, r4
	movs r3, #3
	b _08013286
	.align 2, 0
_08012F24: .4byte gUnknown_08141FA8
_08012F28:
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
	beq _08012F5C
	cmp r4, #0x47
	bne _08012F7E
_08012F5C:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08012F6C
	cmp r1, r6
	ble _08012F7A
_08012F6C:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _08012F76
	movs r0, #0x65
_08012F76:
	str r0, [sp, #0x1e8]
	b _08012F7E
_08012F7A:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_08012F7E:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _08012FA4
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
	bgt _08012FE4
	b _08012FDA
_08012FA4:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _08012FCC
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _08012FC8
	adds r3, r0, #0
	cmp r6, #0
	bne _08012FC2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08012FF4
_08012FC2:
	adds r0, r3, #1
	adds r3, r0, r6
	b _08012FF4
_08012FC8:
	adds r3, r6, #2
	b _08012FF4
_08012FCC:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _08012FE8
	adds r3, r1, #0
_08012FDA:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08012FF4
_08012FE4:
	adds r3, #1
	b _08012FF4
_08012FE8:
	cmp r1, #0
	bgt _08012FF2
	adds r0, #2
	subs r3, r0, r1
	b _08012FF4
_08012FF2:
	adds r3, r0, #1
_08012FF4:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _08013002
	b _0801328A
_08013002:
	ldr r1, _0801300C
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _0801328A
	.align 2, 0
_0801300C: .4byte 0x000001C9
_08013010:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _0801302A
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _08012B18
_0801302A:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _08013046
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _08012B18
_08013046:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _08012B18
_08013056:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_0801305E:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0801307E
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0801307E
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08013088
_0801307E:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08013088:
	movs r2, #0
	b _0801317A
_0801308C:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _080130A8
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _0801317A
	.align 2, 0
_080130A8: .4byte gUnknown_08141FAC
_080130AC:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080130C0
	ldr r4, _080130E0
	mov r8, r4
_080130C0:
	cmp r6, #0
	blt _080130E4
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _080130DC
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _080130DC
	b _0801327E
_080130DC:
	adds r3, r6, #0
	b _0801327E
	.align 2, 0
_080130E0: .4byte gUnknown_08141FC0
_080130E4:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _0801327E
_080130EE:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_080130F6:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _08013106
	movs r0, #4
	add sl, r0
	b _08013120
_08013106:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0801311C
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08013126
_0801311C:
	movs r4, #4
	add sl, r4
_08013120:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08013126:
	movs r2, #1
	b _0801317A
_0801312A:
	ldr r0, _08013130
	str r0, [sp, #0x210]
	b _08013138
	.align 2, 0
_08013130: .4byte gUnknown_08141FC8
_08013134:
	ldr r1, _08013158
	str r1, [sp, #0x210]
_08013138:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0801315C
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0801315C
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08013166
	.align 2, 0
_08013158: .4byte gUnknown_08141FAC
_0801315C:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08013166:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0801317A
	cmp r4, #0
	beq _0801317A
	orrs r1, r2
	str r1, [sp, #0x1ec]
_0801317A:
	ldr r1, _080131C4
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_08013182:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _08013192
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_08013192:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _080131A8
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _08013260
_080131A8:
	cmp r2, #1
	beq _08013206
	cmp r2, #1
	blo _080131CC
	cmp r2, #2
	beq _08013240
	ldr r2, _080131C8
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _08013286
	.align 2, 0
_080131C4: .4byte 0x000001C9
_080131C8: .4byte gUnknown_08141FDC
_080131CC:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_080131D2:
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
	bne _080131D2
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08013260
	cmp r1, #0x30
	beq _08013260
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _08013260
_08013206:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _08013230
_0801320E:
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
	bhi _0801320E
_08013230:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _08013260
_08013240:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_08013246:
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
	bne _08013246
_08013260:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _0801328A
_0801326E:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _08013276
	b _08013984
_08013276:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_0801327C:
	movs r3, #1
_0801327E:
	ldr r1, _080132A8
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_08013286:
	adds r7, r5, #0
	adds r7, #8
_0801328A:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _08013294
	str r2, [sp, #0x20c]
_08013294:
	ldr r0, _080132A8
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080132AC
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _080132BC
	.align 2, 0
_080132A8: .4byte 0x000001C9
_080132AC:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080132BC
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_080132BC:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _0801333C
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0801333C
	ldr r1, _08013368
	cmp r4, #0x10
	ble _08013310
	mov r6, sb
_080132D8:
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
	ble _08013306
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08013302
	b _0801399C
_08013302:
	add r5, sp, #0x28
	ldr r1, _08013368
_08013306:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _080132D8
_08013310:
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
	ble _0801333C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0801333A
	b _0801399C
_0801333A:
	add r5, sp, #0x28
_0801333C:
	ldr r1, _0801336C
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013370
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
	ble _080133B0
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _080133A0
	.align 2, 0
_08013368: .4byte gUnknown_08141F84
_0801336C: .4byte 0x000001C9
_08013370:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080133B0
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
	ble _080133B0
	ldr r0, [sp, #0x1e0]
_080133A0:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080133AE
	b _0801399C
_080133AE:
	add r5, sp, #0x28
_080133B0:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _0801342C
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0801342C
	ldr r1, _080134C8
	cmp r4, #0x10
	ble _08013400
	mov r6, sb
_080133CC:
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
	ble _080133FA
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080133F6
	b _0801399C
_080133F6:
	add r5, sp, #0x28
	ldr r1, _080134C8
_080133FA:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080133CC
_08013400:
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
	ble _0801342C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0801342A
	b _0801399C
_0801342A:
	add r5, sp, #0x28
_0801342C:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _0801349A
	ldr r1, _080134C8
	cmp r4, #0x10
	ble _08013470
	mov r6, sb
_0801343C:
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
	ble _0801346A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08013466
	b _0801399C
_08013466:
	add r5, sp, #0x28
	ldr r1, _080134C8
_0801346A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0801343C
_08013470:
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
	ble _0801349A
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08013498
	b _0801399C
_08013498:
	add r5, sp, #0x28
_0801349A:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080134CC
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
	bgt _080134C2
	b _080138E2
_080134C2:
	ldr r0, [sp, #0x1e0]
	b _080138D8
	.align 2, 0
_080134C8: .4byte gUnknown_08141F94
_080134CC:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _080134D4
	b _080137B8
_080134D4:
	ldr r3, _080135A0
	ldr r2, _0801359C
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __eqdf2
	cmp r0, #0
	bne _080135AC
	ldr r0, _080135A4
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
	ble _08013510
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0801350E
	b _0801399C
_0801350E:
	add r5, sp, #0x28
_08013510:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _08013526
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _08013526
	b _080138E2
_08013526:
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
	ble _0801354E
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0801354C
	b _0801399C
_0801354C:
	add r5, sp, #0x28
_0801354E:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _08013558
	b _080138E2
_08013558:
	ldr r1, _080135A8
	cmp r4, #0x10
	ble _08013590
	mov r6, sb
_08013560:
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
	ble _0801358A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08013586
	b _0801399C
_08013586:
	add r5, sp, #0x28
	ldr r1, _080135A8
_0801358A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08013560
_08013590:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _080138C6
	.align 2, 0
_0801359C: .4byte 0x00000000
_080135A0: .4byte 0x00000000
_080135A4: .4byte gUnknown_08141FF8
_080135A8: .4byte gUnknown_08141F94
_080135AC:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _08013694
	ldr r0, _0801368C
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
	ble _080135DE
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080135DC
	b _0801399C
_080135DC:
	add r5, sp, #0x28
_080135DE:
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
	ble _08013608
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08013606
	b _0801399C
_08013606:
	add r5, sp, #0x28
_08013608:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _0801366E
	ldr r1, _08013690
	cmp r4, #0x10
	ble _08013648
	mov r6, sb
_08013618:
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
	ble _08013642
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0801363E
	b _0801399C
_0801363E:
	add r5, sp, #0x28
	ldr r1, _08013690
_08013642:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08013618
_08013648:
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
	ble _0801366E
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0801366C
	b _0801399C
_0801366C:
	add r5, sp, #0x28
_0801366E:
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
	b _080138D0
	.align 2, 0
_0801368C: .4byte gUnknown_08141FF8
_08013690: .4byte gUnknown_08141F94
_08013694:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _08013750
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
	ble _080136C6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080136C4
	b _0801399C
_080136C4:
	add r5, sp, #0x28
_080136C6:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _0801372E
	ldr r1, _08013748
	cmp r4, #0x10
	ble _08013708
	mov r6, sb
_080136D8:
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
	ble _08013702
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080136FE
	b _0801399C
_080136FE:
	add r5, sp, #0x28
	ldr r1, _08013748
_08013702:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080136D8
_08013708:
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
	ble _0801372E
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0801372C
	b _0801399C
_0801372C:
	add r5, sp, #0x28
_0801372E:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _0801373A
	b _080138E2
_0801373A:
	ldr r0, _0801374C
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _080138C6
	.align 2, 0
_08013748: .4byte gUnknown_08141F94
_0801374C: .4byte gUnknown_08141FFC
_08013750:
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
	ble _08013778
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08013776
	b _0801399C
_08013776:
	add r5, sp, #0x28
_08013778:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _080137B4
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
	ble _080137A8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080137A6
	b _0801399C
_080137A6:
	add r5, sp, #0x28
_080137A8:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _080138BE
	.align 2, 0
_080137B4: .4byte gUnknown_08141FFC
_080137B8:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _080137CA
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08013890
_080137CA:
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
	ble _08013802
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08013800
	b _0801399C
_08013800:
	add r5, sp, #0x28
_08013802:
	ldr r3, _0801382C
	ldr r2, _08013828
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __nedf2
	cmp r0, #0
	beq _08013830
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _0801389C
	.align 2, 0
_08013828: .4byte 0x00000000
_0801382C: .4byte 0x00000000
_08013830:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _080138B8
	ldr r1, _0801388C
	cmp r4, #0x10
	ble _08013870
	mov r6, sb
_08013840:
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
	ble _0801386A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08013866
	b _0801399C
_08013866:
	add r5, sp, #0x28
	ldr r1, _0801388C
_0801386A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08013840
_08013870:
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
	ble _080138B8
	ldr r0, [sp, #0x1e0]
	b _080138AE
	.align 2, 0
_0801388C: .4byte gUnknown_08141F94
_08013890:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_0801389C:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080138B8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080138AE:
	bl __sprint
	cmp r0, #0
	bne _0801399C
	add r5, sp, #0x28
_080138B8:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_080138BE:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_080138C6:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_080138D0:
	cmp r0, #7
	ble _080138E2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080138D8:
	bl __sprint
	cmp r0, #0
	bne _0801399C
	add r5, sp, #0x28
_080138E2:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _0801394E
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0801394E
	ldr r1, _08013980
	cmp r4, #0x10
	ble _0801392C
	mov r6, sb
_080138FE:
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
	ble _08013926
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _0801399C
	add r5, sp, #0x28
	ldr r1, _08013980
_08013926:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080138FE
_0801392C:
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
	ble _0801394E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _0801399C
_0801394E:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _08013958
	adds r0, r4, #0
_08013958:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08013972
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _0801399C
_08013972:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _08012B18
	.align 2, 0
_08013980: .4byte gUnknown_08141F84
_08013984:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08013996
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _0801399C
_08013996:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_0801399C:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _080139AE
	ldr r1, [sp, #0x1f0]
_080139AE:
	adds r0, r1, #0
_080139B0:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START cvt
cvt: @ 0x080139C0
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
	bne _080139E6
	movs r7, #3
	b _080139F6
_080139E6:
	mov r0, sb
	cmp r0, #0x65
	beq _080139F0
	cmp r0, #0x45
	bne _080139F4
_080139F0:
	movs r1, #1
	add r8, r1
_080139F4:
	movs r7, #2
_080139F6:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _08013A0C
	adds r1, r5, #0
	adds r0, r4, #0
	bl __negdf2
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_08013A0C:
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
	beq _08013A38
	cmp r1, #0x47
	bne _08013A40
_08013A38:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _08013A94
_08013A40:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _08013A70
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _08013A6A
	ldr r3, _08013AB0
	ldr r2, _08013AAC
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _08013A6A
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_08013A6A:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_08013A70:
	ldr r3, _08013AB0
	ldr r2, _08013AAC
	adds r1, r5, #0
	adds r0, r4, #0
	bl __eqdf2
	cmp r0, #0
	bne _08013A82
	str r6, [sp, #0x14]
_08013A82:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _08013A94
	movs r1, #0x30
_08013A8A:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _08013A8A
_08013A94:
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
_08013AAC: .4byte 0x00000000
_08013AB0: .4byte 0x00000000

	THUMB_FUNC_START exponent
exponent: @ 0x08013AB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _08013ACA
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _08013ACC
_08013ACA:
	movs r0, #0x2b
_08013ACC:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _08013B0E
_08013AD6:
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
	bgt _08013AD6
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _08013B1C
	adds r1, r0, #0
_08013B00:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _08013B00
	b _08013B1C
_08013B0E:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_08013B1C:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __swsetup
__swsetup: @ 0x08013B24
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08013B34
	ldr r0, _08013B60
	ldr r0, [r0]
	str r0, [r4, #0x54]
_08013B34:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08013B42
	adds r0, r1, #0
	bl __sinit
_08013B42:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _08013B9C
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08013B64
	movs r0, #1
	rsbs r0, r0, #0
	b _08013BCE
	.align 2, 0
_08013B60: .4byte gUnknown_0300081C
_08013B64:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013B94
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _08013B82
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _08013B80
	ldr r0, [r4, #0x54]
	bl _free_r
_08013B80:
	str r5, [r4, #0x30]
_08013B82:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_08013B94:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_08013B9C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _08013BA8
	adds r0, r4, #0
	bl __smakebuf
_08013BA8:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013BBE
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _08013BCC
_08013BBE:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _08013BCA
	ldr r1, [r4, #0x14]
_08013BCA:
	str r1, [r4, #8]
_08013BCC:
	movs r0, #0
_08013BCE:
	pop {r4, r5, pc}

	THUMB_FUNC_START quorem
quorem: @ 0x08013BD0
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
	bge _08013BEC
	movs r0, #0
	b _08013D20
_08013BEC:
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
	beq _08013C96
	movs r6, #0
	mov sb, r6
	ldr r0, _08013C80
	mov ip, r0
_08013C24:
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
	bls _08013C24
	mov r2, sl
	cmp r2, #0
	bne _08013C96
	ldr r4, [sp, #0x10]
	b _08013C86
	.align 2, 0
_08013C80: .4byte 0x0000FFFF
_08013C84:
	subs r7, #1
_08013C86:
	subs r5, #4
	cmp r5, r4
	bls _08013C92
	ldr r0, [r5]
	cmp r0, #0
	beq _08013C84
_08013C92:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_08013C96:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __mcmp
	cmp r0, #0
	blt _08013D1E
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
	ldr r5, _08013D08
_08013CB8:
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
	bls _08013CB8
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _08013D1E
	b _08013D0E
	.align 2, 0
_08013D08: .4byte 0x0000FFFF
_08013D0C:
	subs r7, #1
_08013D0E:
	subs r5, #4
	cmp r5, r4
	bls _08013D1A
	ldr r0, [r5]
	cmp r0, #0
	beq _08013D0C
_08013D1A:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_08013D1E:
	ldr r0, [sp, #8]
_08013D20:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START _dtoa_r
_dtoa_r: @ 0x08013D2C
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
	beq _08013D64
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
_08013D64:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _08013D80
	movs r0, #1
	str r0, [r4]
	ldr r0, _08013D7C
	ands r1, r0
	str r1, [sp, #0x40]
	b _08013D82
	.align 2, 0
_08013D7C: .4byte 0x7FFFFFFF
_08013D80:
	str r0, [r4]
_08013D82:
	ldr r1, _08013DC4
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _08013DD8
	ldr r0, _08013DC8
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08013DCC
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _08013DAA
	ldr r0, _08013DD0
	ands r2, r0
	cmp r2, #0
	bne _08013DAA
	ldr r2, _08013DD4
	mov sb, r2
_08013DAA:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _08013DFC
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _08013DBC
	adds r1, #5
_08013DBC:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _08013DFC
	.align 2, 0
_08013DC4: .4byte 0x7FF00000
_08013DC8: .4byte 0x0000270F
_08013DCC: .4byte gUnknown_0814200C
_08013DD0: .4byte 0x000FFFFF
_08013DD4: .4byte gUnknown_08142000
_08013DD8:
	ldr r3, _08013E08
	ldr r2, _08013E04
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __eqdf2
	cmp r0, #0
	bne _08013E10
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08013E0C
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _08013DFC
	adds r0, #1
	str r0, [r1]
_08013DFC:
	mov r0, sb
	bl _08014A16
	.align 2, 0
_08013E04: .4byte 0x00000000
_08013E08: .4byte 0x00000000
_08013E0C: .4byte gUnknown_08142010
_08013E10:
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
	beq _08013E60
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _08013E54
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _08013E58
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _08013E5C
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _08013EC0
	.align 2, 0
_08013E54: .4byte 0x000FFFFF
_08013E58: .4byte 0x3FF00000
_08013E5C: .4byte 0xFFFFFC01
_08013E60:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _08013E88
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _08013E90
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _08013E8C
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _08013E9A
	.align 2, 0
_08013E88: .4byte 0x00000432
_08013E8C: .4byte 0x00000412
_08013E90:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_08013E9A:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _08013EAC
	ldr r3, _08013F70
	ldr r2, _08013F6C
	bl __adddf3
_08013EAC:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _08013F74
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _08013F78
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_08013EC0:
	ldr r2, _08013F7C
	ldr r3, _08013F80
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl __subdf3
	ldr r2, _08013F84
	ldr r3, _08013F88
	bl __muldf3
	ldr r2, _08013F8C
	ldr r3, _08013F90
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _08013F94
	ldr r3, _08013F98
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
	ldr r2, _08013F9C
	ldr r3, _08013FA0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __ltdf2
	cmp r0, #0
	bge _08013F30
	ldr r0, [sp, #0x24]
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __nedf2
	cmp r0, #0
	beq _08013F30
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_08013F30:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _08013F5A
	ldr r1, _08013FA4
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _08013F56
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_08013F56:
	movs r0, #0
	str r0, [sp, #0x2c]
_08013F5A:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _08013FA8
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _08013FB0
	.align 2, 0
_08013F6C: .4byte 0x41F00000
_08013F70: .4byte 0x00000000
_08013F74: .4byte 0xFE100000
_08013F78: .4byte 0xFFFFFBCD
_08013F7C: .4byte 0x3FF80000
_08013F80: .4byte 0x00000000
_08013F84: .4byte 0x3FD287A7
_08013F88: .4byte 0x636F4361
_08013F8C: .4byte 0x3FC68A28
_08013F90: .4byte 0x8B60C8B3
_08013F94: .4byte 0x3FD34413
_08013F98: .4byte 0x509F79FB
_08013F9C: .4byte 0x00000000
_08013FA0: .4byte 0x00000000
_08013FA4: .4byte gUnknown_08142060
_08013FA8:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_08013FB0:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _08013FC4
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _08013FD4
_08013FC4:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_08013FD4:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _08013FDE
	movs r0, #0
	str r0, [sp, #0xc]
_08013FDE:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _08013FEC
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_08013FEC:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _08014066
	lsls r0, r3, #2
	ldr r1, _08014000
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014000: .4byte _08014004
_08014004: @ jump table
	.4byte _0801401C @ case 0
	.4byte _0801401C @ case 1
	.4byte _0801402E @ case 2
	.4byte _0801404A @ case 3
	.4byte _08014032 @ case 4
	.4byte _0801404E @ case 5
_0801401C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _08014066
_0801402E:
	movs r3, #0
	str r3, [sp, #0x30]
_08014032:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _0801403C
	movs r1, #1
	str r1, [sp, #0xa4]
_0801403C:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _08014066
_0801404A:
	movs r1, #0
	str r1, [sp, #0x30]
_0801404E:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _08014066
	movs r3, #1
	mov r8, r3
_08014066:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _08014086
	movs r1, #0
_08014076:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _08014076
	mov r3, sl
	str r1, [r3, #0x44]
_08014086:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _0801409E
	b _08014410
_0801409E:
	cmp r5, #0
	bne _080140A4
	b _08014410
_080140A4:
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
	ble _08014134
	ldr r0, _0801412C
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
	beq _080140F0
	ands r4, r2
	ldr r0, _08014130
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_080140F0:
	cmp r4, #0
	beq _08014118
	ldr r5, _08014130
_080140F6:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08014110
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_08014110:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080140F6
_08014118:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _08014180
	.align 2, 0
_0801412C: .4byte gUnknown_08142060
_08014130: .4byte gUnknown_08142128
_08014134:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _08014180
	ldr r1, _08014228
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
	beq _08014180
	ldr r5, _0801422C
_0801415E:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08014178
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08014178:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _0801415E
_08014180:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _080141BE
	ldr r2, _08014230
	ldr r3, _08014234
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _080141BE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _080141BE
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _080141A4
	b _080143FC
_080141A4:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _08014238
	ldr r1, _0801423C
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_080141BE:
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	ldr r2, _08014240
	ldr r3, _08014244
	bl __adddf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _08014248
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08014254
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _0801424C
	ldr r3, _08014250
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __gtdf2
	cmp r0, #0
	ble _0801420C
	b _08014786
_0801420C:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl __negdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _08014226
	b _0801477E
_08014226:
	b _080143FC
	.align 2, 0
_08014228: .4byte gUnknown_08142060
_0801422C: .4byte gUnknown_08142128
_08014230: .4byte 0x3FF00000
_08014234: .4byte 0x00000000
_08014238: .4byte 0x40240000
_0801423C: .4byte 0x00000000
_08014240: .4byte 0x401C0000
_08014244: .4byte 0x00000000
_08014248: .4byte 0xFCC00000
_0801424C: .4byte 0x40140000
_08014250: .4byte 0x00000000
_08014254:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _08014324
	ldr r1, _08014284
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _08014288
	ldr r1, _0801428C
	bl __divdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _080142B0
	.align 2, 0
_08014284: .4byte gUnknown_08142060
_08014288: .4byte 0x3FE00000
_0801428C: .4byte 0x00000000
_08014290:
	ldr r1, _08014318
	ldr r0, _08014314
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _08014318
	ldr r0, _08014314
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080142B0:
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
	bge _080142EC
	b _080149F6
_080142EC:
	ldr r0, _0801431C
	ldr r1, _08014320
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _08014306
	b _08014510
_08014306:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _08014290
	b _080143FC
	.align 2, 0
_08014314: .4byte 0x40240000
_08014318: .4byte 0x00000000
_0801431C: .4byte 0x3FF00000
_08014320: .4byte 0x00000000
_08014324:
	ldr r1, _08014344
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
	b _0801435C
	.align 2, 0
_08014344: .4byte gUnknown_08142060
_08014348:
	movs r3, #1
	add r8, r3
	ldr r1, _080143F0
	ldr r0, _080143EC
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0801435C:
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
	bne _08014348
	ldr r6, _080143F4
	ldr r7, _080143F8
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
	ble _080143AE
	b _08014510
_080143AE:
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
	bge _080143FC
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080143DA
	b _08014536
_080143DA:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _080143DA
	b _08014536
	.align 2, 0
_080143EC: .4byte 0x40240000
_080143F0: .4byte 0x00000000
_080143F4: .4byte 0x3FE00000
_080143F8: .4byte 0x00000000
_080143FC:
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
_08014410:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _08014418
	b _0801454C
_08014418:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _08014420
	b _0801454C
_08014420:
	ldr r1, _0801446C
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _08014478
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _08014478
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _0801444A
	b _0801477E
_0801444A:
	ldr r2, _08014470
	ldr r3, _08014474
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ledf2
	cmp r0, #0
	bgt _08014468
	b _0801477E
_08014468:
	b _08014786
	.align 2, 0
_0801446C: .4byte gUnknown_08142060
_08014470: .4byte 0x40140000
_08014474: .4byte 0x00000000
_08014478:
	movs r2, #1
	mov r8, r2
	b _0801449C
_0801447E:
	ldr r1, _08014540
	ldr r0, _0801453C
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _08014544
	ldr r3, _08014548
	bl __eqdf2
	cmp r0, #0
	bne _08014498
	b _080149F6
_08014498:
	movs r3, #1
	add r8, r3
_0801449C:
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
	bne _0801447E
	adds r1, r3, #0
	adds r0, r2, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __gtdf2
	cmp r0, #0
	bgt _08014510
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __eqdf2
	cmp r0, #0
	beq _08014506
	b _080149F6
_08014506:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08014510
	b _080149F6
_08014510:
	movs r0, #0x30
_08014512:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _0801452E
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _08014512
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_0801452E:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08014536:
	movs r0, #1
	add sb, r0
	b _080149F6
	.align 2, 0
_0801453C: .4byte 0x40240000
_08014540: .4byte 0x00000000
_08014544: .4byte 0x00000000
_08014548: .4byte 0x00000000
_0801454C:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080145C2
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _08014580
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _08014578
	ldr r3, _08014574
	adds r3, r3, r0
	mov r8, r3
	b _080145AC
	.align 2, 0
_08014574: .4byte 0x00000433
_08014578:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _080145AA
_08014580:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _0801458E
	subs r6, r0, r4
	b _0801459E
_0801458E:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_0801459E:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _080145AC
	subs r5, r5, r3
	movs r0, #0
_080145AA:
	mov r8, r0
_080145AC:
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
_080145C2:
	cmp r5, #0
	ble _080145E4
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _080145E4
	mov r8, r3
	cmp r8, r5
	ble _080145D4
	mov r8, r5
_080145D4:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_080145E4:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _08014632
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _08014626
	cmp r6, #0
	ble _08014616
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
_08014616:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _08014632
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _0801462C
_08014626:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_0801462C:
	bl _pow5mult
	str r0, [sp, #0x5c]
_08014632:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _0801464C
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_0801464C:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _08014688
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _08014684
	ldr r0, _0801467C
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _08014684
	ldr r0, _08014680
	ands r1, r0
	cmp r1, #0
	beq _08014684
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _08014688
	.align 2, 0
_0801467C: .4byte 0x000FFFFF
_08014680: .4byte 0x7FF00000
_08014684:
	movs r0, #0
	str r0, [sp, #0x3c]
_08014688:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _080146B4
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
	b _080146C2
_080146B4:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_080146C2:
	mov r2, r8
	cmp r2, #0
	beq _080146CE
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_080146CE:
	mov r3, r8
	cmp r3, #4
	ble _080146DA
	movs r0, #4
	rsbs r0, r0, #0
	b _080146E2
_080146DA:
	mov r3, r8
	cmp r3, #3
	bgt _080146F2
	movs r0, #0x1c
_080146E2:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_080146F2:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _08014704
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_08014704:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _08014716
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_08014716:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _08014754
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bge _08014754
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
	beq _08014750
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_08014750:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_08014754:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _08014798
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _08014798
	cmp r1, #0
	blt _0801477E
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
	bgt _08014786
_0801477E:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _080149CE
_08014786:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _080149CE
_08014798:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _080147A0
	b _08014916
_080147A0:
	cmp r5, #0
	ble _080147B0
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_080147B0:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _080147E2
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
_080147E2:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _08014838
_080147F0:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _08014818
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _08014834
_08014818:
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
_08014834:
	movs r1, #1
	add r8, r1
_08014838:
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
	bne _0801486C
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl __mcmp
	adds r6, r0, #0
	b _0801486E
_0801486C:
	movs r6, #1
_0801486E:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _0801489A
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0801489A
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _0801489A
	cmp r7, #0x39
	beq _080148EC
	cmp r4, #0
	ble _08014890
	adds r7, #1
_08014890:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _080149CE
_0801489A:
	cmp r4, #0
	blt _080148AE
	cmp r4, #0
	bne _080148E4
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080148E4
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080148E4
_080148AE:
	cmp r6, #0
	ble _080148DE
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _080148D8
	cmp r6, #0
	bne _080148DE
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080148DE
_080148D8:
	adds r7, #1
	cmp r7, #0x3a
	beq _080148EC
_080148DE:
	mov r2, sb
	strb r7, [r2]
	b _08014996
_080148E4:
	cmp r6, #0
	ble _08014904
	cmp r7, #0x39
	bne _080148F8
_080148EC:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _0801496C
_080148F8:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _080149CE
_08014904:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _08014914
	b _080147F0
_08014914:
	b _08014948
_08014916:
	movs r0, #1
	mov r8, r0
	b _0801492E
_0801491C:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_0801492E:
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
	blt _0801491C
_08014948:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _0801496C
	cmp r4, #0
	bne _080149AE
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _080149AE
_0801496C:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _0801498E
_0801497A:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _0801499C
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _0801497A
_0801498E:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08014996:
	movs r3, #1
	add sb, r3
	b _080149CE
_0801499C:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _080149CE
_080149AE:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _080149CA
_080149BC:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080149BC
_080149CA:
	movs r2, #1
	add sb, r2
_080149CE:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _080149F6
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _080149EE
	cmp r0, r3
	beq _080149EE
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_080149EE:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_080149F6:
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
	beq _08014A14
	str r1, [r3]
_08014A14:
	ldr r0, [sp, #0x74]
_08014A16:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START fflush
fflush: @ 0x08014A24
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _08014A40
	ldr r0, _08014A38
	ldr r0, [r0]
	ldr r1, _08014A3C
	bl _fwalk
	b _08014AB6
	.align 2, 0
_08014A38: .4byte gUnknown_0300081C
_08014A3C: .4byte fflush+1
_08014A40:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08014A4C
	ldr r0, _08014A80
	ldr r0, [r0]
	str r0, [r4, #0x54]
_08014A4C:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08014A5A
	adds r0, r1, #0
	bl __sinit
_08014A5A:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014AB4
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _08014AB4
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08014A92
	ldr r0, [r4, #0x14]
	b _08014A94
	.align 2, 0
_08014A80: .4byte gUnknown_0300081C
_08014A84:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _08014AB6
_08014A92:
	movs r0, #0
_08014A94:
	str r0, [r4, #8]
	cmp r5, #0
	ble _08014AB4
_08014A9A:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _08014A84
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _08014A9A
_08014AB4:
	movs r0, #0
_08014AB6:
	pop {r4, r5, r6, pc}

	THUMB_FUNC_START std
std: @ 0x08014AB8
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
	ldr r1, _08014AE0
	str r1, [r0, #0x20]
	ldr r1, _08014AE4
	str r1, [r0, #0x24]
	ldr r1, _08014AE8
	str r1, [r0, #0x28]
	ldr r1, _08014AEC
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_08014AE0: .4byte __sread+1
_08014AE4: .4byte __swrite+1
_08014AE8: .4byte __sseek+1
_08014AEC: .4byte __sclose+1

	THUMB_FUNC_START __sfmoreglue
__sfmoreglue: @ 0x08014AF0
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
	beq _08014B1C
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _08014B1E
_08014B1C:
	movs r0, #0
_08014B1E:
	pop {r4, r5, r6, pc}

	THUMB_FUNC_START __sfp
__sfp: @ 0x08014B20
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _08014B30
	adds r0, r5, #0
	bl __sinit
_08014B30:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _08014B3A
_08014B38:
	ldr r4, [r4]
_08014B3A:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _08014B4A
_08014B40:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _08014B6C
	adds r2, #0x58
_08014B4A:
	subs r0, #1
	cmp r0, #0
	bge _08014B40
	ldr r0, [r4]
	cmp r0, #0
	bne _08014B38
	adds r0, r5, #0
	movs r1, #4
	bl __sfmoreglue
	str r0, [r4]
	cmp r0, #0
	bne _08014B38
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _08014B8C
_08014B6C:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _08014B90
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_08014B8C:
	pop {r4, r5, pc}
	.align 2, 0
_08014B90: .4byte 0x0000FFFF

	THUMB_FUNC_START _cleanup_r
_cleanup_r: @ 0x08014B94
	push {lr}
	ldr r1, _08014BA0
	bl _fwalk
	pop {pc}
	.align 2, 0
_08014BA0: .4byte fflush+1

	THUMB_FUNC_START _cleanup
_cleanup: @ 0x08014BA4
	push {lr}
	ldr r0, _08014BB0
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_08014BB0: .4byte gUnknown_0300081C

	THUMB_FUNC_START __sinit
__sinit: @ 0x08014BB4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08014C10
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
_08014C10: .4byte _cleanup_r+1

	THUMB_FUNC_START _free_r
_free_r: @ 0x08014C14
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _08014C26
	b _08014DCA
_08014C26:
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
	ldr r0, _08014C88
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _08014C94
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _08014C62
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08014C62:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _08014C8C
	ldr r0, [r0]
	cmp r6, r0
	blo _08014C7E
	ldr r0, _08014C90
	ldr r1, [r0]
	mov r0, sb
	bl _malloc_trim_r
_08014C7E:
	mov r0, sb
	bl __malloc_unlock
	b _08014DCA
	.align 2, 0
_08014C88: .4byte gUnknown_03000834
_08014C8C: .4byte gUnknown_03000C3C
_08014C90: .4byte gUnknown_03000C40
_08014C94:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08014CC0
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _08014CB8
	movs r2, #1
	mov r8, r2
	b _08014CC0
_08014CB8:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08014CC0:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014CF8
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _08014CF0
	ldr r0, _08014CEC
	cmp r1, r0
	bne _08014CF0
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _08014CF8
	.align 2, 0
_08014CEC: .4byte gUnknown_0300083C
_08014CF0:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08014CF8:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _08014DC4
	ldr r0, _08014D28
	cmp r6, r0
	bhi _08014D30
	lsrs r4, r6, #3
	ldr r2, _08014D2C
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _08014DBC
	.align 2, 0
_08014D28: .4byte 0x000001FF
_08014D2C: .4byte gUnknown_03000834
_08014D30:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _08014D3A
	lsrs r4, r6, #3
	b _08014D82
_08014D3A:
	cmp r1, #4
	bhi _08014D46
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _08014D82
_08014D46:
	cmp r1, #0x14
	bhi _08014D50
	adds r4, r1, #0
	adds r4, #0x5b
	b _08014D82
_08014D50:
	cmp r1, #0x54
	bhi _08014D5C
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _08014D82
_08014D5C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08014D6C
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _08014D82
_08014D6C:
	ldr r0, _08014D7C
	cmp r1, r0
	bhi _08014D80
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _08014D82
	.align 2, 0
_08014D7C: .4byte 0x00000554
_08014D80:
	movs r4, #0x7e
_08014D82:
	lsls r0, r4, #3
	ldr r7, _08014DA0
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _08014DA4
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _08014DBC
	.align 2, 0
_08014DA0: .4byte gUnknown_03000834
_08014DA4:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _08014DB4
_08014DAC:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _08014DBA
	ldr r0, [r2, #4]
_08014DB4:
	ands r0, r1
	cmp r6, r0
	blo _08014DAC
_08014DBA:
	ldr r3, [r2, #0xc]
_08014DBC:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_08014DC4:
	mov r0, sb
	bl __malloc_unlock
_08014DCA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _malloc_trim_r
_malloc_trim_r: @ 0x08014DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl __malloc_lock
	ldr r0, _08014E5C
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _08014E60
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _08014E52
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _08014E52
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08014E6C
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _08014E52
	ldr r1, _08014E64
	ldr r0, _08014E68
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_08014E52:
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #0
	b _08014E88
	.align 2, 0
_08014E5C: .4byte gUnknown_03000834
_08014E60: .4byte 0x00000FEF
_08014E64: .4byte gUnknown_03000C50
_08014E68: .4byte gUnknown_03000C44
_08014E6C:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _08014E90
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #1
_08014E88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08014E90: .4byte gUnknown_03000C50

	THUMB_FUNC_START __sfvwrite
__sfvwrite: @ 0x08014E94
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
	bne _08014EAC
	b _080150A2
_08014EAC:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08014EBC
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08014EC8
_08014EBC:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _08014EC8
	b _080150AE
_08014EC8:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014F1C
_08014EDA:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _08014EF0
_08014EE2:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _08014EE2
_08014EF0:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _08014EFC
	adds r2, r1, #0
_08014EFC:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _08014F0A
	b _080150A6
_08014F0A:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _08014EDA
	b _080150A2
_08014F1C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08014FD6
_08014F24:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _08014F3C
_08014F2E:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _08014F2E
_08014F3C:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08014F6A
	cmp r6, r4
	bhs _08014F50
	adds r4, r6, #0
_08014F50:
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
	b _08014FC4
_08014F6A:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _08014F92
	cmp r6, r4
	bls _08014F92
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
	beq _08014F90
	b _080150A6
_08014F90:
	b _08014FC4
_08014F92:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _08014FAC
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080150A6
	b _08014FC4
_08014FAC:
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
_08014FC4:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _08014F24
	b _080150A2
_08014FD6:
	movs r2, #0
	str r2, [sp]
_08014FDA:
	cmp r6, #0
	bne _08014FF0
	movs r0, #0
	str r0, [sp]
_08014FE2:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _08014FE2
_08014FF0:
	ldr r0, [sp]
	cmp r0, #0
	bne _08015014
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _0801500C
	subs r0, r7, #1
	subs r1, r1, r0
	b _0801500E
_0801500C:
	adds r1, r6, #1
_0801500E:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_08015014:
	mov r2, sb
	cmp sb, r6
	bls _0801501C
	adds r2, r6, #0
_0801501C:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _0801504A
	cmp r2, r4
	ble _0801504A
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
	bne _080150A6
	b _0801507A
_0801504A:
	adds r4, r1, #0
	cmp r2, r4
	blt _08015064
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080150A6
	b _0801507A
_08015064:
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
_0801507A:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _08015092
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _080150A6
	movs r1, #0
	str r1, [sp]
_08015092:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _08014FDA
_080150A2:
	movs r0, #0
	b _080150B2
_080150A6:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080150AE:
	movs r0, #1
	rsbs r0, r0, #0
_080150B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _fwalk
_fwalk: @ 0x080150C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080150F8
_080150D4:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080150EC
_080150DA:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080150EA
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_080150EA:
	adds r5, #0x58
_080150EC:
	subs r4, #1
	cmp r4, #0
	bge _080150DA
	ldr r6, [r6]
	cmp r6, #0
	bne _080150D4
_080150F8:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START _setlocale_r
_setlocale_r: @ 0x08015100
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _08015134
	ldr r1, _08015128
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _08015130
	ldr r1, _0801512C
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _08015130
	movs r0, #0
	b _08015136
	.align 2, 0
_08015128: .4byte gUnknown_08142050
_0801512C: .4byte gUnknown_08142048
_08015130:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_08015134:
	ldr r0, _08015138
_08015136:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08015138: .4byte gUnknown_08142050

	THUMB_FUNC_START _localeconv_r
_localeconv_r: @ 0x0801513C
	ldr r0, _08015140
	bx lr
	.align 2, 0
_08015140: .4byte gUnknown_08142018

	THUMB_FUNC_START setlocale
setlocale: @ 0x08015144
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08015158
	ldr r0, [r0]
	adds r1, r3, #0
	bl _setlocale_r
	pop {pc}
	.align 2, 0
_08015158: .4byte gUnknown_0300081C

	THUMB_FUNC_START localeconv
localeconv: @ 0x0801515C
	push {lr}
	ldr r0, _08015168
	ldr r0, [r0]
	bl _localeconv_r
	pop {pc}
	.align 2, 0
_08015168: .4byte gUnknown_0300081C

	THUMB_FUNC_START __smakebuf
__smakebuf: @ 0x0801516C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _08015202
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08015194
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl _fstat_r
	cmp r0, #0
	bge _080151A6
_08015194:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _080151EA
_080151A6:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _080151BA
	movs r7, #1
_080151BA:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _080151E0
	ldr r1, [r4, #0x28]
	ldr r0, _080151DC
	cmp r1, r0
	bne _080151E0
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _080151EC
	.align 2, 0
_080151DC: .4byte __sseek+1
_080151E0:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_080151EA:
	strh r0, [r4, #0xc]
_080151EC:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl _malloc_r
	adds r2, r0, #0
	cmp r2, #0
	bne _08015210
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_08015202:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _0801523E
_08015210:
	ldr r1, [r4, #0x54]
	ldr r0, _08015244
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
	beq _0801523E
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _0801523E
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_0801523E:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08015244: .4byte _cleanup_r+1

	THUMB_FUNC_START malloc_extend_top
malloc_extend_top: @ 0x08015248
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080152BC
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _080152C0
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _080152C4
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _0801528A
	ldr r3, _080152C8
	adds r6, r1, r3
	ldr r0, _080152CC
	ands r6, r0
_0801528A:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _0801538C
	cmp r5, r4
	bhs _080152A2
	ldr r0, _080152BC
	cmp r8, r0
	bne _0801538C
_080152A2:
	ldr r1, _080152D0
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _080152D4
	adds r2, r6, r7
	ldr r3, _080152BC
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _08015374
	.align 2, 0
_080152BC: .4byte gUnknown_03000834
_080152C0: .4byte gUnknown_03000C40
_080152C4: .4byte gUnknown_03000C44
_080152C8: .4byte 0x0000100F
_080152CC: .4byte 0xFFFFF000
_080152D0: .4byte gUnknown_03000C50
_080152D4:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _080152E0
	str r5, [r3]
	b _080152E6
_080152E0:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080152E6:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080152FA
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080152FC
_080152FA:
	movs r4, #0
_080152FC:
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
	beq _0801538C
	ldr r1, _08015344
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _08015348
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _08015374
	cmp r7, #0xf
	bhi _0801534C
	str r3, [r5, #4]
	b _0801538C
	.align 2, 0
_08015344: .4byte gUnknown_03000C50
_08015348: .4byte gUnknown_03000834
_0801534C:
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
	bls _08015374
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_08015374:
	ldr r0, _08015398
	ldr r2, _0801539C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _08015382
	str r1, [r2]
_08015382:
	ldr r2, _080153A0
	ldr r0, [r2]
	cmp r1, r0
	bls _0801538C
	str r1, [r2]
_0801538C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08015398: .4byte gUnknown_03000C50
_0801539C: .4byte gUnknown_03000C48
_080153A0: .4byte gUnknown_03000C4C

	THUMB_FUNC_START _malloc_r
_malloc_r: @ 0x080153A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _080153C6
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _080153CA
_080153C6:
	movs r3, #0x10
	mov r8, r3
_080153CA:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _08015410
	cmp r8, r0
	bhi _0801541E
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _08015414
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080153F2
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _08015418
_080153F2:
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
	b _0801574A
	.align 2, 0
_08015410: .4byte 0x000001F7
_08015414: .4byte gUnknown_03000834
_08015418:
	movs r0, #2
	add ip, r0
	b _080154CA
_0801541E:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _0801542A
	lsrs r2, r2, #3
	b _0801547A
_0801542A:
	cmp r1, #4
	bhi _08015438
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _0801547C
_08015438:
	cmp r1, #0x14
	bhi _08015442
	adds r1, #0x5b
	mov ip, r1
	b _0801547C
_08015442:
	cmp r1, #0x54
	bhi _08015450
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _0801547C
_08015450:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08015462
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _0801547C
_08015462:
	ldr r0, _08015474
	cmp r1, r0
	bhi _08015478
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _0801547C
	.align 2, 0
_08015474: .4byte 0x00000554
_08015478:
	movs r2, #0x7e
_0801547A:
	mov ip, r2
_0801547C:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _080154A0
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080154C6
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080154A4
	adds r0, #3
	add ip, r0
	b _080154C6
	.align 2, 0
_080154A0: .4byte gUnknown_03000834
_080154A4:
	cmp r3, #0
	blt _080154AA
	b _080156E4
_080154AA:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _080154C6
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _080154A4
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_080154C6:
	movs r4, #1
	add ip, r4
_080154CA:
	ldr r0, _08015508
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _080154D6
	b _080155D8
_080154D6:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _0801550C
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
	b _0801574A
	.align 2, 0
_08015508: .4byte gUnknown_0300083C
_0801550C:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _08015522
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _0801574A
_08015522:
	ldr r0, _08015544
	cmp r1, r0
	bhi _08015548
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
	b _080155D0
	.align 2, 0
_08015544: .4byte 0x000001FF
_08015548:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _08015552
	lsrs r2, r1, #3
	b _08015596
_08015552:
	cmp r2, #4
	bhi _0801555E
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _08015596
_0801555E:
	cmp r2, #0x14
	bhi _08015566
	adds r2, #0x5b
	b _08015596
_08015566:
	cmp r2, #0x54
	bhi _08015572
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _08015596
_08015572:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _08015582
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _08015596
_08015582:
	ldr r0, _08015590
	cmp r2, r0
	bhi _08015594
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _08015596
	.align 2, 0
_08015590: .4byte 0x00000554
_08015594:
	movs r2, #0x7e
_08015596:
	lsls r0, r2, #3
	ldr r3, _080155B4
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _080155B8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _080155B4
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080155D0
	.align 2, 0
_080155B4: .4byte gUnknown_03000834
_080155B8:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _080155C8
_080155C0:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _080155CE
	ldr r0, [r4, #4]
_080155C8:
	ands r0, r2
	cmp r1, r0
	blo _080155C0
_080155CE:
	ldr r6, [r4, #0xc]
_080155D0:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_080155D8:
	mov r0, ip
	cmp r0, #0
	bge _080155E0
	adds r0, #3
_080155E0:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _08015604
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _080156A2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08015616
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _0801560C
	.align 2, 0
_08015604: .4byte gUnknown_03000834
_08015608:
	movs r3, #4
	add ip, r3
_0801560C:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08015608
_08015616:
	ldr r4, _08015694
	mov sb, r4
_0801561A:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_08015628:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _08015648
	movs r0, #4
	rsbs r0, r0, #0
_08015632:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _080156F8
	cmp r3, #0
	bge _08015720
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _08015632
_08015648:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08015628
_08015658:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08015698
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _08015658
_0801566E:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _080156A2
	cmp r6, #0
	beq _080156A2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0801561A
_08015684:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08015684
	b _0801561A
	.align 2, 0
_08015694: .4byte gUnknown_03000834
_08015698:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _0801566E
_080156A2:
	ldr r2, _080156E0
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _080156BA
	cmp r3, #0xf
	bgt _08015734
_080156BA:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _080156E0
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _080156D6
	cmp r3, #0xf
	bgt _08015734
_080156D6:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _08015754
	.align 2, 0
_080156E0: .4byte gUnknown_03000834
_080156E4:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _0801574A
_080156F8:
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
	b _0801574A
_08015720:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _0801574A
_08015734:
	ldr r2, _08015760
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
_0801574A:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_08015754:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08015760: .4byte gUnknown_03000834

	THUMB_FUNC_START _mbtowc_r
_mbtowc_r: @ 0x08015764
	sub sp, #4
	cmp r1, #0
	bne _0801576C
	mov r1, sp
_0801576C:
	cmp r2, #0
	beq _08015788
	cmp r3, #0
	bne _0801577A
	movs r0, #1
	rsbs r0, r0, #0
	b _0801578A
_0801577A:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08015788
	movs r0, #1
	b _0801578A
_08015788:
	movs r0, #0
_0801578A:
	add sp, #4
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START memchr
memchr: @ 0x08015790
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _08015804
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08015804
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_080157AC:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _080157AC
	cmp r2, #3
	bls _080157EA
	ldr r0, _080157F0
	mov ip, r0
	ldr r7, _080157F4
_080157C0:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _080157E2
	adds r1, r4, #0
	movs r3, #0
_080157D4:
	ldrb r0, [r1]
	cmp r0, r5
	beq _080157FE
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _080157D4
_080157E2:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _080157C0
_080157EA:
	adds r1, r4, #0
	b _08015804
	.align 2, 0
_080157F0: .4byte 0xFEFEFEFF
_080157F4: .4byte 0x80808080
_080157F8:
	ldrb r0, [r1]
	cmp r0, r5
	bne _08015802
_080157FE:
	adds r0, r1, #0
	b _0801580E
_08015802:
	adds r1, #1
_08015804:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080157F8
	movs r0, #0
_0801580E:
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START memmove
memmove: @ 0x08015810
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _08015842
	adds r0, r3, r2
	cmp r5, r0
	bhs _08015842
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08015894
	adds r1, r0, #0
_08015832:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _08015832
	b _08015894
_08015842:
	cmp r2, #0xf
	bls _0801587A
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801587A
	adds r1, r3, #0
_08015854:
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
	bhi _08015854
	cmp r2, #3
	bls _08015878
_0801586E:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0801586E
_08015878:
	adds r3, r1, #0
_0801587A:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08015894
	adds r1, r0, #0
_08015886:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08015886
_08015894:
	adds r0, r5, #0
	pop {r4, r5, pc}

	THUMB_FUNC_START __malloc_lock
__malloc_lock: @ 0x08015898
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START __malloc_unlock
__malloc_unlock: @ 0x0801589C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START _Balloc
_Balloc: @ 0x080158A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _080158BC
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl _calloc_r
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _080158E4
_080158BC:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _080158CE
	ldr r0, [r1]
	str r0, [r2]
	b _080158EC
_080158CE:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl _calloc_r
	adds r1, r0, #0
	cmp r1, #0
	bne _080158E8
_080158E4:
	movs r0, #0
	b _080158F4
_080158E8:
	str r6, [r1, #4]
	str r5, [r1, #8]
_080158EC:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_080158F4:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _Bfree
_Bfree: @ 0x080158F8
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _0801590E
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_0801590E:
	bx lr

	THUMB_FUNC_START _multadd
_multadd: @ 0x08015910
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
	ldr r0, _080159A4
	mov ip, r0
_0801592C:
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
	blt _0801592C
	mov r2, r8
	cmp r2, #0
	beq _0801599A
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _0801598A
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
_0801598A:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_0801599A:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080159A4: .4byte 0x0000FFFF

	THUMB_FUNC_START _s2b
_s2b: @ 0x080159A8
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
	ble _080159D0
_080159C8:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _080159C8
_080159D0:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _08015A02
	adds r4, #9
_080159E8:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _080159E8
	adds r4, #1
	b _08015A04
_08015A02:
	adds r4, #0xa
_08015A04:
	cmp r5, r8
	bge _08015A22
	mov r0, r8
	subs r5, r0, r5
_08015A0C:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _08015A0C
_08015A22:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _hi0bits
_hi0bits: @ 0x08015A2C
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _08015A7C
	ands r0, r1
	cmp r0, #0
	bne _08015A3C
	movs r2, #0x10
	lsls r1, r1, #0x10
_08015A3C:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08015A4A
	adds r2, #8
	lsls r1, r1, #8
_08015A4A:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08015A58
	adds r2, #4
	lsls r1, r1, #4
_08015A58:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08015A66
	adds r2, #2
	lsls r1, r1, #2
_08015A66:
	cmp r1, #0
	blt _08015A80
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _08015A80
	movs r0, #0x20
	b _08015A82
	.align 2, 0
_08015A7C: .4byte 0xFFFF0000
_08015A80:
	adds r0, r2, #0
_08015A82:
	bx lr

	THUMB_FUNC_START _lo0bits
_lo0bits: @ 0x08015A84
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08015AB4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015A9C
	movs r0, #0
	b _08015B04
_08015A9C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08015AAC
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _08015B04
_08015AAC:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _08015B04
_08015AB4:
	movs r2, #0
	ldr r0, _08015AFC
	ands r0, r1
	cmp r0, #0
	bne _08015AC2
	movs r2, #0x10
	lsrs r1, r1, #0x10
_08015AC2:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _08015ACE
	adds r2, #8
	lsrs r1, r1, #8
_08015ACE:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08015ADA
	adds r2, #4
	lsrs r1, r1, #4
_08015ADA:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08015AE6
	adds r2, #2
	lsrs r1, r1, #2
_08015AE6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08015B00
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _08015B00
	movs r0, #0x20
	b _08015B04
	.align 2, 0
_08015AFC: .4byte 0x0000FFFF
_08015B00:
	str r1, [r3]
	adds r0, r2, #0
_08015B04:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START _i2b
_i2b: @ 0x08015B08
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _multiply
_multiply: @ 0x08015B1C
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
	bge _08015B3C
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_08015B3C:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _08015B52
	adds r1, #1
_08015B52:
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
	bhs _08015B86
	movs r0, #0
_08015B7E:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _08015B7E
_08015B86:
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
	bhs _08015C4E
_08015BA0:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _08015C5C
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08015BF8
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_08015BBE:
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
	blo _08015BBE
	str r0, [r5]
_08015BF8:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _08015C40
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _08015C5C
_08015C0C:
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
	blo _08015C0C
	str r2, [r5]
_08015C40:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _08015BA0
_08015C4E:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _08015C72
	b _08015C6A
	.align 2, 0
_08015C5C: .4byte 0x0000FFFF
_08015C60:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _08015C72
_08015C6A:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _08015C60
_08015C72:
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
	.byte 0x00, 0x00

	THUMB_FUNC_START _pow5mult
_pow5mult: @ 0x08015C88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _08015CB2
	ldr r0, _08015CD4
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_08015CB2:
	asrs r6, r6, #2
	cmp r6, #0
	beq _08015D18
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _08015CF4
	ldr r1, _08015CD8
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _08015CF4
	.align 2, 0
_08015CD4: .4byte gUnknown_08142054
_08015CD8: .4byte 0x00000271
_08015CDC:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _08015CF2
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_08015CF2:
	adds r5, r0, #0
_08015CF4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08015D12
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_08015D12:
	asrs r6, r6, #1
	cmp r6, #0
	bne _08015CDC
_08015D18:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START _lshift
_lshift: @ 0x08015D20
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
	ble _08015D4A
_08015D42:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _08015D42
_08015D4A:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _08015D6A
	movs r1, #0
	adds r2, r6, #0
_08015D62:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _08015D62
_08015D6A:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _08015D9C
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_08015D82:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _08015D82
	str r2, [r4]
	cmp r2, #0
	beq _08015DA4
	adds r7, #1
	b _08015DA4
_08015D9C:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _08015D9C
_08015DA4:
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
	.byte 0x00, 0x00

	THUMB_FUNC_START __mcmp
__mcmp: @ 0x08015DC0
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _08015DFC
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_08015DDE:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _08015DF6
	movs r1, #1
	cmp r0, r2
	bhs _08015DF2
	subs r1, #2
_08015DF2:
	adds r0, r1, #0
	b _08015DFC
_08015DF6:
	cmp r3, r4
	bhi _08015DDE
	movs r0, #0
_08015DFC:
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __mdiff
__mdiff: @ 0x08015E00
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
	bne _08015E32
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _08015EE2
_08015E32:
	cmp r4, #0
	bge _08015E40
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _08015E42
_08015E40:
	movs r4, #0
_08015E42:
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
	ldr r0, _08015ECC
	mov r8, r0
_08015E76:
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
	blo _08015E76
	cmp r6, sl
	bhs _08015ED6
	ldr r2, _08015ECC
_08015EB0:
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
	blo _08015EB0
	b _08015ED6
	.align 2, 0
_08015ECC: .4byte 0x0000FFFF
_08015ED0:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_08015ED6:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _08015ED0
	mov r1, sb
	str r1, [r7, #0x10]
_08015EE2:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START _ulp
_ulp: @ 0x08015EF0
	push {r4, lr}
	ldr r2, _08015F04
	ands r2, r0
	ldr r0, _08015F08
	adds r2, r2, r0
	cmp r2, #0
	ble _08015F0C
	adds r3, r2, #0
	movs r4, #0
	b _08015F36
	.align 2, 0
_08015F04: .4byte 0x7FF00000
_08015F08: .4byte 0xFCC00000
_08015F0C:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _08015F20
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _08015F36
_08015F20:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _08015F32
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _08015F34
_08015F32:
	movs r1, #1
_08015F34:
	adds r4, r1, #0
_08015F36:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	THUMB_FUNC_START _b2d
_b2d: @ 0x08015F3C
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
	bgt _08015F9C
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _08015F84
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _08015F88
	subs r5, #4
	ldr r1, [r5]
	b _08015F8A
	.align 2, 0
_08015F84: .4byte 0x3FF00000
_08015F88:
	movs r1, #0
_08015F8A:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _08015FE8
_08015F9C:
	cmp r5, r8
	bls _08015FA6
	subs r5, #4
	ldr r4, [r5]
	b _08015FA8
_08015FA6:
	movs r4, #0
_08015FA8:
	subs r3, #0xb
	cmp r3, #0
	beq _08015FE0
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _08015FCC
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _08015FD0
	subs r5, #4
	ldr r2, [r5]
	b _08015FD2
	.align 2, 0
_08015FCC: .4byte 0x3FF00000
_08015FD0:
	movs r2, #0
_08015FD2:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _08015FE8
_08015FE0:
	ldr r0, _08015FF4
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_08015FE8:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08015FF4: .4byte 0x3FF00000

	THUMB_FUNC_START _d2b
_d2b: @ 0x08015FF8
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
	ldr r2, _08016060
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _08016064
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _08016036
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_08016036:
	str r5, [sp]
	cmp r5, #0
	beq _08016080
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _08016068
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
	b _0801606C
	.align 2, 0
_08016060: .4byte 0x000FFFFF
_08016064: .4byte 0x7FFFFFFF
_08016068:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_0801606C:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _0801607A
	movs r1, #2
_0801607A:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _08016094
_08016080:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_08016094:
	cmp r7, #0
	beq _080160B0
	ldr r3, _080160AC
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _080160CC
	.align 2, 0
_080160AC: .4byte 0xFFFFFBCD
_080160B0:
	ldr r1, _080160DC
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
_080160CC:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080160DC: .4byte 0xFFFFFBCE

	THUMB_FUNC_START _ratio
_ratio: @ 0x080160E0
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
	ble _0801611C
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _08016120
_0801611C:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_08016120:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __divdf3
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	THUMB_FUNC_START _mprec_log10
_mprec_log10: @ 0x08016130
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801614C
	ldr r0, _08016148
	cmp r4, #0x17
	bgt _08016154
	ldr r0, _08016150
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _08016166
	.align 2, 0
_08016148: .4byte 0x3FF00000
_0801614C: .4byte 0x00000000
_08016150: .4byte gUnknown_08142060
_08016154:
	cmp r4, #0
	ble _08016166
_08016158:
	ldr r3, _0801616C
	ldr r2, _08016168
	bl __muldf3
	subs r4, #1
	cmp r4, #0
	bgt _08016158
_08016166:
	pop {r4, pc}
	.align 2, 0
_08016168: .4byte 0x40240000
_0801616C: .4byte 0x00000000

	THUMB_FUNC_START isinf
isinf: @ 0x08016170
	ldr r3, _0801618C
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _08016190
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_0801618C: .4byte 0x7FFFFFFF
_08016190: .4byte 0x7FF00000

	THUMB_FUNC_START isnan
isnan: @ 0x08016194
	ldr r3, _080161AC
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080161B0
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_080161AC: .4byte 0x7FFFFFFF
_080161B0: .4byte 0x7FF00000

	THUMB_FUNC_START _sbrk_r
_sbrk_r: @ 0x080161B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080161DC
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080161D6
	ldr r0, [r4]
	cmp r0, #0
	beq _080161D6
	str r0, [r5]
_080161D6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080161DC: .4byte gUnknown_03003E24

	THUMB_FUNC_START __sread
__sread: @ 0x080161E0
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
	blt _08016202
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _0801620A
_08016202:
	ldr r0, _08016210
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_0801620A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08016210: .4byte 0xFFFFEFFF

	THUMB_FUNC_START __swrite
__swrite: @ 0x08016214
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08016236
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl _lseek_r
_08016236:
	ldr r0, _08016250
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
_08016250: .4byte 0xFFFFEFFF

	THUMB_FUNC_START __sseek
__sseek: @ 0x08016254
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
	bne _08016280
	ldr r0, _0801627C
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _0801628E
	.align 2, 0
_0801627C: .4byte 0xFFFFEFFF
_08016280:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_0801628E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __sclose
__sclose: @ 0x08016294
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_8016790
	pop {pc}

	THUMB_FUNC_START findslot
findslot: @ 0x080162A4
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080162AC
	b _080162B8
	.align 2, 0
_080162AC: .4byte gUnknown_03001668
_080162B0:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _080162BE
_080162B8:
	ldr r0, [r2]
	cmp r0, r3
	bne _080162B0
_080162BE:
	adds r0, r1, #0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START remap_handle
remap_handle: @ 0x080162C4
	adds r2, r0, #0
	ldr r0, _080162D8
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080162E0
	ldr r0, _080162DC
	b _08016306
	.align 2, 0
_080162D8: .4byte gUnknown_0300081C
_080162DC: .4byte gUnknown_0300165C
_080162E0:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080162F4
	ldr r0, _080162F0
	b _08016306
	.align 2, 0
_080162F0: .4byte gUnknown_03001660
_080162F4:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _08016304
	adds r0, r2, #0
	subs r0, #0x20
	b _08016308
_08016304:
	ldr r0, _0801630C
_08016306:
	ldr r0, [r0]
_08016308:
	bx lr
	.align 2, 0
_0801630C: .4byte gUnknown_03001664

	THUMB_FUNC_START initialise_monitor_handles
initialise_monitor_handles: @ 0x08016310
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _0801636C
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
	ldr r5, _08016370
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _08016374
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _08016378
	str r2, [r0]
	str r2, [r3]
	ldr r2, _0801637C
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_08016352:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08016352
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
_0801636C: .4byte gUnknown_08142178
_08016370: .4byte gUnknown_0300165C
_08016374: .4byte gUnknown_03001660
_08016378: .4byte gUnknown_03001664
_0801637C: .4byte gUnknown_03001668

	THUMB_FUNC_START get_errno
get_errno: @ 0x08016380
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START error
error: @ 0x08016394
	push {r4, r5, lr}
	adds r5, r0, #0
	bl __errno
	adds r4, r0, #0
	bl get_errno
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	THUMB_FUNC_START wrap
wrap: @ 0x080163A8
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080163B8
	adds r0, r1, #0
	b _080163BE
_080163B8:
	adds r0, r1, #0
	bl error
_080163BE:
	pop {pc}

	THUMB_FUNC_START _swiread
_swiread: @ 0x080163C0
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
	.byte 0x00, 0x00

	THUMB_FUNC_START _read
_read: @ 0x080163E4
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
	bge _0801640E
	movs r0, #1
	rsbs r0, r0, #0
	bl error
	b _08016424
_0801640E:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _08016422
	ldr r0, _08016428
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08016422:
	adds r0, r2, #0
_08016424:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08016428: .4byte gUnknown_03001668

	THUMB_FUNC_START _swilseek
_swilseek: @ 0x0801642C
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
	bne _08016462
	cmp r6, #0x14
	bne _08016454
	movs r0, #1
	rsbs r0, r0, #0
	b _080164A4
_08016454:
	ldr r0, _080164AC
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_08016462:
	cmp r4, #2
	bne _08016474
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_08016474:
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
	beq _0801649A
	cmp r2, #0
	bne _0801649A
	ldr r0, _080164AC
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_0801649A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _080164A4
	adds r0, r5, #0
_080164A4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080164AC: .4byte gUnknown_03001668

	THUMB_FUNC_START _lseek
_lseek: @ 0x080164B0
	push {lr}
	bl _swilseek
	bl wrap
	pop {pc}

	THUMB_FUNC_START _swiwrite
_swiwrite: @ 0x080164BC
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
	.byte 0x00, 0x00

	THUMB_FUNC_START _write
_write: @ 0x080164E0
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
	beq _08016508
	cmp r0, r6
	bne _08016510
_08016508:
	adds r0, r1, #0
	bl error
	b _08016526
_08016510:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _08016524
	ldr r0, _08016528
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08016524:
	adds r0, r2, #0
_08016526:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08016528: .4byte gUnknown_03001668

	THUMB_FUNC_START _swiopen
_swiopen: @ 0x0801652C
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
	bne _0801654E
	adds r0, r6, #0
	b _080165C2
_0801654E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08016558
	movs r5, #2
_08016558:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08016566
	movs r0, #4
	orrs r5, r0
_08016566:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08016574
	movs r0, #4
	orrs r5, r0
_08016574:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _08016584
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_08016584:
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
	blt _080165BC
	ldr r0, _080165B8
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
	b _080165C2
	.align 2, 0
_080165B8: .4byte gUnknown_03001668
_080165BC:
	adds r0, r3, #0
	bl error
_080165C2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _open
_open: @ 0x080165CC
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl _swiopen
	bl wrap
	pop {r3}
	add sp, #0xc
	bx r3

	THUMB_FUNC_START _swiclose
_swiclose: @ 0x080165E0
	push {lr}
	sub sp, #4
	bl remap_handle
	str r0, [sp]
	bl findslot
	adds r1, r0, #0
	cmp r1, #0x14
	beq _08016600
	ldr r0, _08016610
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_08016600:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_08016610: .4byte gUnknown_03001668

	THUMB_FUNC_START _close
_close: @ 0x08016614
	push {lr}
	bl _swiclose
	bl wrap
	pop {pc}

	THUMB_FUNC_START _exit
_exit: @ 0x08016620
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _0801663C
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_0801663C: .4byte 0x00020026

	THUMB_FUNC_START _kill
_kill: @ 0x08016640
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _0801665C
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_0801665C: .4byte 0x00020026

	THUMB_FUNC_START _getpid
_getpid: @ 0x08016660
	movs r0, #1
	bx lr

	THUMB_FUNC_START _sbrk
_sbrk: @ 0x08016664
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08016694
	ldr r0, [r4]
	cmp r0, #0
	bne _08016674
	ldr r0, _08016698
	str r0, [r4]
_08016674:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _0801668A
	ldr r1, _0801669C
	movs r0, #1
	movs r2, #0x20
	bl _write
	bl abort
_0801668A:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08016694: .4byte gUnknown_03001658
_08016698: .4byte gUnknown_03003E28
_0801669C: .4byte gUnknown_0814217C

	THUMB_FUNC_START _fstat
_fstat: @ 0x080166A0
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START _unlink
_unlink: @ 0x080166AC
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START _raise
_raise: @ 0x080166B4
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START _gettimeofday
_gettimeofday: @ 0x080166B8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _080166D6
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
_080166D6:
	cmp r3, #0
	beq _080166E0
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_080166E0:
	movs r0, #0
	pop {r4, r5, pc}

	THUMB_FUNC_START _times
_times: @ 0x080166E4
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _08016702
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_08016702:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _write_r
_write_r: @ 0x08016708
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08016734
	movs r3, #0
	str r3, [r4]
	bl _write
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801672E
	ldr r0, [r4]
	cmp r0, #0
	beq _0801672E
	str r0, [r5]
_0801672E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08016734: .4byte gUnknown_03003E24

	THUMB_FUNC_START _calloc_r
_calloc_r: @ 0x08016738
	push {r4, lr}
	muls r1, r2, r1
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	bne _0801674A
	movs r0, #0
	b _0801678E
_0801674A:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _08016784
	adds r1, r4, #0
	cmp r2, #0x13
	bls _0801677A
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _0801677A
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _0801677A
	stm r1!, {r0}
	stm r1!, {r0}
_0801677A:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _0801678C
_08016784:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_0801678C:
	adds r0, r4, #0
_0801678E:
	pop {r4, pc}

	THUMB_FUNC_START sub_8016790
sub_8016790: @ 0x08016790
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080167B8
	movs r1, #0
	str r1, [r4]
	bl _close
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080167B2
	ldr r0, [r4]
	cmp r0, #0
	beq _080167B2
	str r0, [r5]
_080167B2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080167B8: .4byte gUnknown_03003E24

	THUMB_FUNC_START __errno
__errno: @ 0x080167BC
	ldr r0, _080167C4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080167C4: .4byte gUnknown_0300081C

	THUMB_FUNC_START _fstat_r
_fstat_r: @ 0x080167C8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _080167F0
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080167EC
	ldr r0, [r4]
	cmp r0, #0
	beq _080167EC
	str r0, [r5]
_080167EC:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080167F0: .4byte gUnknown_03003E24

	THUMB_FUNC_START abort
abort: @ 0x080167F4
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08016810
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08016810: .4byte 0x00020022

	THUMB_FUNC_START isatty
isatty: @ 0x08016814
	movs r0, #1
	bx lr

	THUMB_FUNC_START alarm
alarm: @ 0x08016818
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START _lseek_r
_lseek_r: @ 0x0801681C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08016848
	movs r3, #0
	str r3, [r4]
	bl _lseek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08016842
	ldr r0, [r4]
	cmp r0, #0
	beq _08016842
	str r0, [r5]
_08016842:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08016848: .4byte gUnknown_03003E24

	THUMB_FUNC_START _read_r
_read_r: @ 0x0801684C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08016878
	movs r3, #0
	str r3, [r4]
	bl _read
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08016872
	ldr r0, [r4]
	cmp r0, #0
	beq _08016872
	str r0, [r5]
_08016872:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08016878: .4byte gUnknown_03003E24

	THUMB_FUNC_START __udivsi3
__udivsi3: @ 0x0801687C
	cmp r1, #0
	beq Ldiv0_1
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _080168E4
	movs r4, #1
	lsls r4, r4, #0x1c
_0801688E:
	cmp r1, r4
	bhs _0801689C
	cmp r1, r0
	bhs _0801689C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0801688E
_0801689C:
	lsls r4, r4, #3
_0801689E:
	cmp r1, r4
	bhs _080168AC
	cmp r1, r0
	bhs _080168AC
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0801689E
_080168AC:
	cmp r0, r1
	blo _080168B4
	subs r0, r0, r1
	orrs r2, r3
_080168B4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080168C0
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080168C0:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080168CC
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080168CC:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080168D8
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080168D8:
	cmp r0, #0
	beq _080168E4
	lsrs r3, r3, #4
	beq _080168E4
	lsrs r1, r1, #4
	b _080168AC
_080168E4:
	adds r0, r2, #0
	pop {r4}

	THUMB_FUNC_START sub_80168E8
sub_80168E8: @ 0x080168E8
	mov pc, lr
Ldiv0_1:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START __pack_d
__pack_d: @ 0x080168F4
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
	bhi _0801690C
	movs r2, #1
_0801690C:
	cmp r2, #0
	beq _0801692C
	ldr r6, _08016920
	ldr r2, _08016924
	ldr r3, _08016928
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _080169E4
	.align 2, 0
_08016920: .4byte 0x000007FF
_08016924: .4byte 0x00000000
_08016928: .4byte 0x00080000
_0801692C:
	movs r2, #0
	cmp r0, #4
	bne _08016934
	movs r2, #1
_08016934:
	cmp r2, #0
	bne _08016980
	movs r2, #0
	cmp r0, #2
	bne _08016940
	movs r2, #1
_08016940:
	cmp r2, #0
	beq _0801694A
	movs r4, #0
	movs r5, #0
	b _080169E8
_0801694A:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080169E8
	ldr r2, [r1, #8]
	ldr r0, _08016968
	cmp r2, r0
	bge _0801697A
	subs r2, r0, r2
	cmp r2, #0x38
	ble _0801696C
	movs r4, #0
	movs r5, #0
	b _080169DA
	.align 2, 0
_08016968: .4byte 0xFFFFFC02
_0801696C:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _080169DA
_0801697A:
	ldr r0, _08016988
	cmp r2, r0
	ble _08016990
_08016980:
	ldr r6, _0801698C
	movs r4, #0
	movs r5, #0
	b _080169E8
	.align 2, 0
_08016988: .4byte 0x000003FF
_0801698C: .4byte 0x000007FF
_08016990:
	ldr r0, _080169B8
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080169BC
	cmp r2, #0
	bne _080169BC
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _080169C4
	movs r0, #0x80
	movs r1, #0
	b _080169C0
	.align 2, 0
_080169B8: .4byte 0x000003FF
_080169BC:
	movs r0, #0x7f
	movs r1, #0
_080169C0:
	adds r4, r4, r0
	adcs r5, r1
_080169C4:
	ldr r0, _08016A28
	cmp r5, r0
	bls _080169DA
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_080169DA:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_080169E4:
	adds r5, r1, #0
	adds r4, r0, #0
_080169E8:
	str r4, [sp]
	ldr r2, _08016A2C
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _08016A30
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _08016A34
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _08016A38
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
_08016A28: .4byte 0x1FFFFFFF
_08016A2C: .4byte 0x000FFFFF
_08016A30: .4byte 0xFFF00000
_08016A34: .4byte 0x000007FF
_08016A38: .4byte 0xFFFF800F

	THUMB_FUNC_START __unpack_d
__unpack_d: @ 0x08016A3C
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
	bne _08016AB0
	orrs r1, r5
	cmp r1, #0
	bne _08016A70
	movs r0, #2
	str r0, [r6]
	b _08016B04
_08016A70:
	ldr r0, _08016AA8
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
	ldr r0, _08016AAC
	cmp r5, r0
	bhi _08016AE0
	adds r7, r0, #0
_08016A8E:
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
	bls _08016A8E
	b _08016AE0
	.align 2, 0
_08016AA8: .4byte 0xFFFFFC02
_08016AAC: .4byte 0x0FFFFFFF
_08016AB0:
	ldr r0, _08016AC4
	cmp r3, r0
	bne _08016AE6
	orrs r1, r5
	cmp r1, #0
	bne _08016AC8
	movs r0, #4
	str r0, [r6]
	b _08016B04
	.align 2, 0
_08016AC4: .4byte 0x000007FF
_08016AC8:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _08016ADE
	movs r0, #1
	str r0, [r6]
	b _08016AE0
_08016ADE:
	str r1, [r6]
_08016AE0:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _08016B04
_08016AE6:
	ldr r1, _08016B08
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _08016B0C
	ldr r3, _08016B10
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_08016B04:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08016B08: .4byte 0xFFFFFC01
_08016B0C: .4byte 0x00000000
_08016B10: .4byte 0x10000000

	THUMB_FUNC_START _fpadd_parts
_fpadd_parts: @ 0x08016B14
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
	bhi _08016B30
	movs r0, #1
_08016B30:
	cmp r0, #0
	beq _08016B38
_08016B34:
	adds r0, r3, #0
	b _08016D70
_08016B38:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _08016B42
	movs r1, #1
_08016B42:
	cmp r1, #0
	bne _08016BBA
	movs r1, #0
	cmp r2, #4
	bne _08016B4E
	movs r1, #1
_08016B4E:
	cmp r1, #0
	beq _08016B70
	movs r1, #0
	cmp r0, #4
	bne _08016B5A
	movs r1, #1
_08016B5A:
	cmp r1, #0
	beq _08016B34
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _08016B34
	ldr r0, _08016B6C
	b _08016D70
	.align 2, 0
_08016B6C: .4byte gUnknown_03001708
_08016B70:
	movs r1, #0
	cmp r0, #4
	bne _08016B78
	movs r1, #1
_08016B78:
	cmp r1, #0
	bne _08016BBA
	movs r1, #0
	cmp r0, #2
	bne _08016B84
	movs r1, #1
_08016B84:
	cmp r1, #0
	beq _08016BAC
	movs r0, #0
	cmp r2, #2
	bne _08016B90
	movs r0, #1
_08016B90:
	cmp r0, #0
	beq _08016B34
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
	b _08016D6E
_08016BAC:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _08016BB6
	movs r1, #1
_08016BB6:
	cmp r1, #0
	beq _08016BBE
_08016BBA:
	adds r0, r4, #0
	b _08016D70
_08016BBE:
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
	bge _08016BDE
	rsbs r0, r0, #0
_08016BDE:
	cmp r0, #0x3f
	bgt _08016C5C
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _08016C28
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_08016BF6:
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
	bne _08016BF6
	mov r8, sb
_08016C28:
	cmp r8, sb
	ble _08016C78
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_08016C34:
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
	bne _08016C34
	mov sb, r8
	b _08016C78
_08016C5C:
	cmp sb, r8
	ble _08016C6A
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _08016C70
_08016C6A:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_08016C70:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_08016C78:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _08016D20
	mov r2, ip
	cmp r2, #0
	beq _08016C9A
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _08016CA6
_08016C9A:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_08016CA6:
	cmp r3, #0
	blt _08016CBC
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _08016CD4
_08016CBC:
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
_08016CD4:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_08016CE0:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _08016D1C
	cmp r3, r0
	bhi _08016D38
	cmp r3, r0
	bne _08016CF6
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _08016D38
_08016CF6:
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
	b _08016CE0
	.align 2, 0
_08016D1C: .4byte 0x0FFFFFFF
_08016D20:
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
_08016D38:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _08016D7C
	cmp r1, r0
	bls _08016D6E
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
_08016D6E:
	mov r0, sl
_08016D70:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08016D7C: .4byte 0x1FFFFFFF

	THUMB_FUNC_START __adddf3
__adddf3: @ 0x08016D80
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

	THUMB_FUNC_START __subdf3
__subdf3: @ 0x08016DB0
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

	THUMB_FUNC_START __muldf3
__muldf3: @ 0x08016DE8
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
	bhi _08016E1E
	movs r0, #1
_08016E1E:
	cmp r0, #0
	bne _08016E82
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08016E2C
	movs r2, #1
_08016E2C:
	cmp r2, #0
	beq _08016E34
	ldr r0, [sp, #4]
	b _08016EA4
_08016E34:
	movs r2, #0
	cmp r1, #4
	bne _08016E3C
	movs r2, #1
_08016E3C:
	cmp r2, #0
	beq _08016E4E
	movs r1, #0
	cmp r0, #2
	bne _08016E48
	movs r1, #1
_08016E48:
	cmp r1, #0
	bne _08016E66
	b _08016E82
_08016E4E:
	movs r2, #0
	cmp r0, #4
	bne _08016E56
	movs r2, #1
_08016E56:
	cmp r2, #0
	beq _08016E76
	movs r0, #0
	cmp r1, #2
	bne _08016E62
	movs r0, #1
_08016E62:
	cmp r0, #0
	beq _08016E70
_08016E66:
	ldr r0, _08016E6C
	b _0801706E
	.align 2, 0
_08016E6C: .4byte gUnknown_03001708
_08016E70:
	mov r1, r8
	ldr r0, [r1, #4]
	b _08016EA4
_08016E76:
	movs r2, #0
	cmp r1, #2
	bne _08016E7E
	movs r2, #1
_08016E7E:
	cmp r2, #0
	beq _08016E94
_08016E82:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0801706E
_08016E94:
	movs r1, #0
	cmp r0, #2
	bne _08016E9C
	movs r1, #1
_08016E9C:
	cmp r1, #0
	beq _08016EB4
	mov r2, r8
	ldr r0, [r2, #4]
_08016EA4:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _0801706E
_08016EB4:
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
	bhi _08016F2C
	cmp r7, r3
	bne _08016F34
	cmp r6, r2
	bls _08016F34
_08016F2C:
	ldr r5, _08017084
	ldr r4, _08017080
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08016F34:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _08016F50
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _08016F60
	cmp r0, r6
	bls _08016F60
_08016F50:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08016F60:
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
	ldr r0, _08017088
	cmp r5, r0
	bls _08016FE2
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_08016FA6:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _08016FCC
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
_08016FCC:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _08016FA6
	mov r0, ip
	str r0, [sp, #0x30]
_08016FE2:
	ldr r0, _0801708C
	cmp r5, r0
	bhi _08017034
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_08016FF4:
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
	beq _0801701E
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_0801701E:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _08016FF4
	mov r1, ip
	str r1, [sp, #0x30]
_08017034:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08017062
	cmp r2, #0
	bne _08017062
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0801705A
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _08017062
_0801705A:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_08017062:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_0801706E:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08017080: .4byte 0x00000000
_08017084: .4byte 0x00000001
_08017088: .4byte 0x1FFFFFFF
_0801708C: .4byte 0x0FFFFFFF

	THUMB_FUNC_START __divdf3
__divdf3: @ 0x08017090
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
	bhi _080170BA
	movs r0, #1
_080170BA:
	cmp r0, #0
	beq _080170C2
	mov r1, sp
	b _08017204
_080170C2:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _080170CE
	movs r0, #1
_080170CE:
	cmp r0, #0
	beq _080170D6
	adds r1, r4, #0
	b _08017204
_080170D6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080170E6
	movs r0, #1
_080170E6:
	cmp r0, #0
	bne _080170F6
	movs r4, #0
	cmp r3, #2
	bne _080170F2
	movs r4, #1
_080170F2:
	cmp r4, #0
	beq _08017108
_080170F6:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _08017100
	b _08017204
_08017100:
	ldr r1, _08017104
	b _08017204
	.align 2, 0
_08017104: .4byte gUnknown_03001708
_08017108:
	movs r0, #0
	cmp r2, #4
	bne _08017110
	movs r0, #1
_08017110:
	cmp r0, #0
	beq _08017122
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _08017204
_08017122:
	movs r0, #0
	cmp r2, #2
	bne _0801712A
	movs r0, #1
_0801712A:
	cmp r0, #0
	beq _08017136
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _08017202
_08017136:
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
	bhi _0801715A
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _0801716E
	cmp r0, r4
	bls _0801716E
_0801715A:
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
_0801716E:
	ldr r7, _08017214
	ldr r6, _08017210
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0801717A:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0801719E
	cmp r1, r5
	bne _0801718A
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _0801719E
_0801718A:
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
_0801719E:
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
	bne _0801717A
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080171F8
	cmp r2, #0
	bne _080171F8
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080171E8
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080171F8
_080171E8:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_080171F8:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08017202:
	mov r1, ip
_08017204:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08017210: .4byte 0x00000000
_08017214: .4byte 0x10000000

	THUMB_FUNC_START __fpcmp_parts_d
__fpcmp_parts_d: @ 0x08017218
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _08017228
	movs r0, #1
_08017228:
	cmp r0, #0
	bne _0801723A
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08017236
	movs r0, #1
_08017236:
	cmp r0, #0
	beq _0801723E
_0801723A:
	movs r0, #1
	b _08017314
_0801723E:
	movs r0, #0
	cmp r1, #4
	bne _08017246
	movs r0, #1
_08017246:
	cmp r0, #0
	beq _0801725E
	movs r0, #0
	cmp r2, #4
	bne _08017252
	movs r0, #1
_08017252:
	cmp r0, #0
	beq _0801725E
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _08017314
_0801725E:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _08017268
	movs r1, #1
_08017268:
	cmp r1, #0
	bne _080172B6
	movs r1, #0
	cmp r2, #4
	bne _08017274
	movs r1, #1
_08017274:
	cmp r1, #0
	beq _08017286
_08017278:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080172C0
	movs r1, #1
	b _080172C0
_08017286:
	movs r1, #0
	cmp r0, #2
	bne _0801728E
	movs r1, #1
_0801728E:
	cmp r1, #0
	beq _0801729E
	movs r1, #0
	cmp r2, #2
	bne _0801729A
	movs r1, #1
_0801729A:
	cmp r1, #0
	bne _08017312
_0801729E:
	movs r1, #0
	cmp r0, #2
	bne _080172A6
	movs r1, #1
_080172A6:
	cmp r1, #0
	bne _08017278
	movs r0, #0
	cmp r2, #2
	bne _080172B2
	movs r0, #1
_080172B2:
	cmp r0, #0
	beq _080172C4
_080172B6:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _080172C0
	subs r1, #2
_080172C0:
	adds r0, r1, #0
	b _08017314
_080172C4:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _080172D6
_080172CC:
	movs r0, #1
	cmp r4, #0
	beq _08017314
	subs r0, #2
	b _08017314
_080172D6:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _080172CC
	cmp r1, r0
	bge _080172EE
_080172E2:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _08017314
	movs r0, #1
	b _08017314
_080172EE:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _080172CC
	cmp r3, r2
	bne _08017302
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _080172CC
_08017302:
	cmp r2, r3
	bhi _080172E2
	cmp r2, r3
	bne _08017312
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _080172E2
_08017312:
	movs r0, #0
_08017314:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __cmpdf2
__cmpdf2: @ 0x08017318
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
	.byte 0x00, 0x00

	THUMB_FUNC_START __eqdf2
__eqdf2: @ 0x08017344
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
	bhi _0801736C
	movs r1, #1
_0801736C:
	cmp r1, #0
	bne _0801737E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0801737A
	movs r1, #1
_0801737A:
	cmp r1, #0
	beq _08017382
_0801737E:
	movs r0, #1
	b _0801738A
_08017382:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0801738A:
	add sp, #0x38
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __nedf2
__nedf2: @ 0x08017390
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
	bhi _080173B8
	movs r1, #1
_080173B8:
	cmp r1, #0
	bne _080173CA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080173C6
	movs r1, #1
_080173C6:
	cmp r1, #0
	beq _080173CE
_080173CA:
	movs r0, #1
	b _080173D6
_080173CE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080173D6:
	add sp, #0x38
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __gtdf2
__gtdf2: @ 0x080173DC
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
	bhi _08017404
	movs r1, #1
_08017404:
	cmp r1, #0
	bne _08017416
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08017412
	movs r1, #1
_08017412:
	cmp r1, #0
	beq _0801741C
_08017416:
	movs r0, #1
	rsbs r0, r0, #0
	b _08017424
_0801741C:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08017424:
	add sp, #0x38
	pop {r4, pc}

	THUMB_FUNC_START __gedf2
__gedf2: @ 0x08017428
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
	bhi _08017450
	movs r1, #1
_08017450:
	cmp r1, #0
	bne _08017462
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0801745E
	movs r1, #1
_0801745E:
	cmp r1, #0
	beq _08017468
_08017462:
	movs r0, #1
	rsbs r0, r0, #0
	b _08017470
_08017468:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08017470:
	add sp, #0x38
	pop {r4, pc}

	THUMB_FUNC_START __ltdf2
__ltdf2: @ 0x08017474
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
	bhi _0801749C
	movs r1, #1
_0801749C:
	cmp r1, #0
	bne _080174AE
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080174AA
	movs r1, #1
_080174AA:
	cmp r1, #0
	beq _080174B2
_080174AE:
	movs r0, #1
	b _080174BA
_080174B2:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080174BA:
	add sp, #0x38
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __ledf2
__ledf2: @ 0x080174C0
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
	bhi _080174E8
	movs r1, #1
_080174E8:
	cmp r1, #0
	bne _080174FA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080174F6
	movs r1, #1
_080174F6:
	cmp r1, #0
	beq _080174FE
_080174FA:
	movs r0, #1
	b _08017506
_080174FE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08017506:
	add sp, #0x38
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __floatsidf
__floatsidf: @ 0x0801750C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _08017524
	movs r0, #2
	str r0, [sp]
	b _0801757A
_08017524:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0801754A
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _08017544
	ldr r1, _08017540
	ldr r0, _0801753C
	b _08017580
	.align 2, 0
_0801753C: .4byte 0xC1E00000
_08017540: .4byte 0x00000000
_08017544:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0801754E
_0801754A:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0801754E:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _08017584
	cmp r0, r1
	bhi _0801757A
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0801755E:
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
	bls _0801755E
	str r4, [sp, #8]
_0801757A:
	mov r0, sp
	bl __pack_d
_08017580:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_08017584: .4byte 0x0FFFFFFF

	THUMB_FUNC_START __fixdfsi
__fixdfsi: @ 0x08017588
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
	bne _080175A2
	movs r1, #1
_080175A2:
	cmp r1, #0
	bne _080175D6
	movs r1, #0
	cmp r0, #1
	bhi _080175AE
	movs r1, #1
_080175AE:
	cmp r1, #0
	bne _080175D6
	movs r1, #0
	cmp r0, #4
	bne _080175BA
	movs r1, #1
_080175BA:
	cmp r1, #0
	beq _080175D0
_080175BE:
	ldr r0, [sp, #4]
	ldr r1, _080175CC
	cmp r0, #0
	beq _080175F4
	adds r1, #1
	b _080175F4
	.align 2, 0
_080175CC: .4byte 0x7FFFFFFF
_080175D0:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _080175DA
_080175D6:
	movs r0, #0
	b _080175F6
_080175DA:
	cmp r0, #0x1e
	bgt _080175BE
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080175F4
	rsbs r1, r1, #0
_080175F4:
	adds r0, r1, #0
_080175F6:
	add sp, #0x1c
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __negdf2
__negdf2: @ 0x080175FC
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
	bne _08017616
	movs r1, #1
_08017616:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __make_dp
__make_dp: @ 0x08017624
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
	.byte 0x00, 0x00

	THUMB_FUNC_START __truncdfsf2
__truncdfsf2: @ 0x0801764C
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
	ldr r4, _0801768C
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _0801767C
	movs r0, #1
	orrs r5, r0
_0801767C:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0801768C: .4byte 0x3FFFFFFF

	THUMB_FUNC_START __pack_f
__pack_f: @ 0x08017690
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _080176A2
	movs r1, #1
_080176A2:
	cmp r1, #0
	beq _080176B0
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _08017716
_080176B0:
	movs r1, #0
	cmp r3, #4
	bne _080176B8
	movs r1, #1
_080176B8:
	cmp r1, #0
	bne _080176EC
	movs r1, #0
	cmp r3, #2
	bne _080176C4
	movs r1, #1
_080176C4:
	cmp r1, #0
	beq _080176CC
	movs r2, #0
	b _08017716
_080176CC:
	cmp r2, #0
	beq _08017716
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _080176E8
	subs r0, r3, r0
	cmp r0, #0x19
	ble _080176E4
	movs r2, #0
	b _08017714
_080176E4:
	lsrs r2, r0
	b _08017714
_080176E8:
	cmp r0, #0x7f
	ble _080176F2
_080176EC:
	movs r5, #0xff
	movs r2, #0
	b _08017716
_080176F2:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _0801770A
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0801770C
	adds r2, #0x40
	b _0801770C
_0801770A:
	adds r2, #0x3f
_0801770C:
	cmp r2, #0
	bge _08017714
	lsrs r2, r2, #1
	adds r5, #1
_08017714:
	lsrs r2, r2, #7
_08017716:
	ldr r0, _08017738
	ands r2, r0
	ldr r0, _0801773C
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _08017740
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _08017744
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08017738: .4byte 0x007FFFFF
_0801773C: .4byte 0xFF800000
_08017740: .4byte 0x807FFFFF
_08017744: .4byte 0x7FFFFFFF

	THUMB_FUNC_START __unpack_f
__unpack_f: @ 0x08017748
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
	bne _0801778C
	cmp r2, #0
	bne _08017768
	movs r0, #2
	str r0, [r3]
	b _080177C0
_08017768:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _08017788
	cmp r2, r1
	bhi _080177A8
	adds r0, r4, #0
_0801777C:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _0801777C
	str r0, [r3, #8]
	b _080177A8
	.align 2, 0
_08017788: .4byte 0x3FFFFFFF
_0801778C:
	cmp r1, #0xff
	bne _080177AC
	cmp r2, #0
	bne _0801779A
	movs r0, #4
	str r0, [r3]
	b _080177C0
_0801779A:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _080177A6
	movs r0, #1
_080177A6:
	str r0, [r3]
_080177A8:
	str r2, [r3, #0xc]
	b _080177C0
_080177AC:
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
_080177C0:
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START _fpadd_parts_0
_fpadd_parts_0: @ 0x080177C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080177DA
	movs r0, #1
_080177DA:
	cmp r0, #0
	beq _080177E2
_080177DE:
	adds r0, r6, #0
	b _08017938
_080177E2:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _080177EC
	movs r1, #1
_080177EC:
	cmp r1, #0
	bne _08017860
	movs r1, #0
	cmp r2, #4
	bne _080177F8
	movs r1, #1
_080177F8:
	cmp r1, #0
	beq _08017818
	movs r1, #0
	cmp r0, #4
	bne _08017804
	movs r1, #1
_08017804:
	cmp r1, #0
	beq _080177DE
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _080177DE
	ldr r0, _08017814
	b _08017938
	.align 2, 0
_08017814: .4byte gUnknown_03001720
_08017818:
	movs r1, #0
	cmp r0, #4
	bne _08017820
	movs r1, #1
_08017820:
	cmp r1, #0
	bne _08017860
	movs r1, #0
	cmp r0, #2
	bne _0801782C
	movs r1, #1
_0801782C:
	cmp r1, #0
	beq _08017852
	movs r0, #0
	cmp r2, #2
	bne _08017838
	movs r0, #1
_08017838:
	cmp r0, #0
	beq _080177DE
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
	b _08017936
_08017852:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _0801785C
	movs r1, #1
_0801785C:
	cmp r1, #0
	beq _08017864
_08017860:
	adds r0, r7, #0
	b _08017938
_08017864:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _08017874
	rsbs r0, r0, #0
_08017874:
	cmp r0, #0x1f
	bgt _080178B8
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _0801789A
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_08017888:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _08017888
	adds r3, r1, #0
_0801789A:
	cmp r3, r1
	ble _080178CA
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_080178A4:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _080178A4
	adds r1, r3, #0
	b _080178CA
_080178B8:
	cmp r1, r3
	ble _080178C0
	movs r4, #0
	b _080178C4
_080178C0:
	adds r1, r3, #0
	movs r2, #0
_080178C4:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_080178CA:
	cmp r6, r8
	beq _08017914
	cmp r6, #0
	beq _080178D6
	subs r3, r4, r2
	b _080178D8
_080178D6:
	subs r3, r2, r4
_080178D8:
	cmp r3, #0
	blt _080178E6
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _080178F0
_080178E6:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_080178F0:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _08017910
	cmp r0, r2
	bhi _0801791C
_080178FA:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _080178FA
	b _0801791C
	.align 2, 0
_08017910: .4byte 0x3FFFFFFE
_08017914:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_0801791C:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _08017936
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_08017936:
	adds r0, r5, #0
_08017938:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __addsf3
__addsf3: @ 0x08017940
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

	THUMB_FUNC_START __subsf3
__subsf3: @ 0x0801796C
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

	THUMB_FUNC_START __mulsf3
__mulsf3: @ 0x080179A0
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
	bhi _080179D2
	movs r0, #1
_080179D2:
	cmp r0, #0
	bne _08017A30
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080179E0
	movs r2, #1
_080179E0:
	cmp r2, #0
	beq _080179E8
	ldr r0, [sp, #4]
	b _08017A50
_080179E8:
	movs r2, #0
	cmp r1, #4
	bne _080179F0
	movs r2, #1
_080179F0:
	cmp r2, #0
	beq _08017A02
	movs r1, #0
	cmp r0, #2
	bne _080179FC
	movs r1, #1
_080179FC:
	cmp r1, #0
	bne _08017A1A
	b _08017A30
_08017A02:
	movs r2, #0
	cmp r0, #4
	bne _08017A0A
	movs r2, #1
_08017A0A:
	cmp r2, #0
	beq _08017A24
	movs r0, #0
	cmp r1, #2
	bne _08017A16
	movs r0, #1
_08017A16:
	cmp r0, #0
	beq _08017A4E
_08017A1A:
	ldr r0, _08017A20
	b _08017AF2
	.align 2, 0
_08017A20: .4byte gUnknown_03001720
_08017A24:
	movs r2, #0
	cmp r1, #2
	bne _08017A2C
	movs r2, #1
_08017A2C:
	cmp r2, #0
	beq _08017A42
_08017A30:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _08017AF2
_08017A42:
	movs r1, #0
	cmp r0, #2
	bne _08017A4A
	movs r1, #1
_08017A4A:
	cmp r1, #0
	beq _08017A60
_08017A4E:
	ldr r0, [r7, #4]
_08017A50:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _08017AF2
_08017A60:
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
	bge _08017AAC
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_08017A96:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08017AA4
	lsrs r6, r6, #1
	orrs r6, r1
_08017AA4:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _08017A96
	str r4, [sp, #0x28]
_08017AAC:
	ldr r0, _08017B00
	cmp r5, r0
	bhi _08017AD2
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_08017ABC:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08017ACA
	orrs r5, r3
_08017ACA:
	lsls r6, r6, #1
	cmp r5, r2
	bls _08017ABC
	str r1, [sp, #0x28]
_08017AD2:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _08017AE8
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _08017AE6
	cmp r6, #0
	beq _08017AE8
_08017AE6:
	adds r5, #0x40
_08017AE8:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_08017AF2:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08017B00: .4byte 0x3FFFFFFF

	THUMB_FUNC_START __divsf3
__divsf3: @ 0x08017B04
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
	bhi _08017B2A
	movs r0, #1
_08017B2A:
	cmp r0, #0
	beq _08017B32
	mov r1, sp
	b _08017BE4
_08017B32:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _08017B3E
	movs r0, #1
_08017B3E:
	cmp r0, #0
	beq _08017B46
	adds r1, r5, #0
	b _08017BE4
_08017B46:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08017B56
	movs r0, #1
_08017B56:
	cmp r0, #0
	bne _08017B66
	movs r0, #0
	cmp r3, #2
	bne _08017B62
	movs r0, #1
_08017B62:
	cmp r0, #0
	beq _08017B78
_08017B66:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _08017BE4
	ldr r1, _08017B74
	b _08017BE4
	.align 2, 0
_08017B74: .4byte gUnknown_03001720
_08017B78:
	movs r1, #0
	cmp r2, #4
	bne _08017B80
	movs r1, #1
_08017B80:
	cmp r1, #0
	beq _08017B8C
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _08017BE4
_08017B8C:
	movs r0, #0
	cmp r2, #2
	bne _08017B94
	movs r0, #1
_08017B94:
	cmp r0, #0
	beq _08017B9E
	movs r0, #4
	str r0, [r4]
	b _08017BE2
_08017B9E:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _08017BB4
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_08017BB4:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_08017BBA:
	cmp r2, r3
	blo _08017BC2
	orrs r1, r0
	subs r2, r2, r3
_08017BC2:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _08017BBA
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _08017BE0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08017BDE
	cmp r2, #0
	beq _08017BE0
_08017BDE:
	adds r1, #0x40
_08017BE0:
	str r1, [r4, #0xc]
_08017BE2:
	adds r1, r4, #0
_08017BE4:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __fpcmp_parts_f
__fpcmp_parts_f: @ 0x08017BF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _08017BFE
	movs r0, #1
_08017BFE:
	cmp r0, #0
	bne _08017C10
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _08017C0C
	movs r0, #1
_08017C0C:
	cmp r0, #0
	beq _08017C14
_08017C10:
	movs r0, #1
	b _08017CD2
_08017C14:
	movs r0, #0
	cmp r2, #4
	bne _08017C1C
	movs r0, #1
_08017C1C:
	cmp r0, #0
	beq _08017C34
	movs r0, #0
	cmp r3, #4
	bne _08017C28
	movs r0, #1
_08017C28:
	cmp r0, #0
	beq _08017C34
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _08017CD2
_08017C34:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _08017C3E
	movs r2, #1
_08017C3E:
	cmp r2, #0
	bne _08017C8C
	movs r2, #0
	cmp r3, #4
	bne _08017C4A
	movs r2, #1
_08017C4A:
	cmp r2, #0
	beq _08017C5C
_08017C4E:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08017C96
	movs r1, #1
	b _08017C96
_08017C5C:
	movs r2, #0
	cmp r0, #2
	bne _08017C64
	movs r2, #1
_08017C64:
	cmp r2, #0
	beq _08017C74
	movs r2, #0
	cmp r3, #2
	bne _08017C70
	movs r2, #1
_08017C70:
	cmp r2, #0
	bne _08017CD0
_08017C74:
	movs r2, #0
	cmp r0, #2
	bne _08017C7C
	movs r2, #1
_08017C7C:
	cmp r2, #0
	bne _08017C4E
	movs r0, #0
	cmp r3, #2
	bne _08017C88
	movs r0, #1
_08017C88:
	cmp r0, #0
	beq _08017C9A
_08017C8C:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _08017C96
	subs r1, #2
_08017C96:
	adds r0, r1, #0
	b _08017CD2
_08017C9A:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _08017CAC
_08017CA2:
	movs r0, #1
	cmp r3, #0
	beq _08017CD2
	subs r0, #2
	b _08017CD2
_08017CAC:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _08017CA2
	cmp r2, r0
	bge _08017CC4
_08017CB8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _08017CD2
	movs r0, #1
	b _08017CD2
_08017CC4:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _08017CA2
	cmp r0, r1
	blo _08017CB8
_08017CD0:
	movs r0, #0
_08017CD2:
	pop {r4, pc}

	THUMB_FUNC_START __cmpsf2
__cmpsf2: @ 0x08017CD4
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
	.byte 0x00, 0x00

	THUMB_FUNC_START __eqsf2
__eqsf2: @ 0x08017CFC
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
	bhi _08017D20
	movs r1, #1
_08017D20:
	cmp r1, #0
	bne _08017D32
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08017D2E
	movs r1, #1
_08017D2E:
	cmp r1, #0
	beq _08017D36
_08017D32:
	movs r0, #1
	b _08017D3E
_08017D36:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08017D3E:
	add sp, #0x28
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __nesf2
__nesf2: @ 0x08017D44
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
	bhi _08017D68
	movs r1, #1
_08017D68:
	cmp r1, #0
	bne _08017D7A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08017D76
	movs r1, #1
_08017D76:
	cmp r1, #0
	beq _08017D7E
_08017D7A:
	movs r0, #1
	b _08017D86
_08017D7E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08017D86:
	add sp, #0x28
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __gtsf2
__gtsf2: @ 0x08017D8C
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
	bhi _08017DB0
	movs r1, #1
_08017DB0:
	cmp r1, #0
	bne _08017DC2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08017DBE
	movs r1, #1
_08017DBE:
	cmp r1, #0
	beq _08017DC8
_08017DC2:
	movs r0, #1
	rsbs r0, r0, #0
	b _08017DD0
_08017DC8:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08017DD0:
	add sp, #0x28
	pop {r4, pc}

	THUMB_FUNC_START __gesf2
__gesf2: @ 0x08017DD4
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
	bhi _08017DF8
	movs r1, #1
_08017DF8:
	cmp r1, #0
	bne _08017E0A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08017E06
	movs r1, #1
_08017E06:
	cmp r1, #0
	beq _08017E10
_08017E0A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08017E18
_08017E10:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08017E18:
	add sp, #0x28
	pop {r4, pc}

	THUMB_FUNC_START __ltsf2
__ltsf2: @ 0x08017E1C
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
	bhi _08017E40
	movs r1, #1
_08017E40:
	cmp r1, #0
	bne _08017E52
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08017E4E
	movs r1, #1
_08017E4E:
	cmp r1, #0
	beq _08017E56
_08017E52:
	movs r0, #1
	b _08017E5E
_08017E56:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08017E5E:
	add sp, #0x28
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __lesf2
__lesf2: @ 0x08017E64
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
	bhi _08017E88
	movs r1, #1
_08017E88:
	cmp r1, #0
	bne _08017E9A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08017E96
	movs r1, #1
_08017E96:
	cmp r1, #0
	beq _08017E9E
_08017E9A:
	movs r0, #1
	b _08017EA6
_08017E9E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08017EA6:
	add sp, #0x28
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __floatsisf
__floatsisf: @ 0x08017EAC
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _08017EC4
	movs r0, #2
	str r0, [sp]
	b _08017EFC
_08017EC4:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _08017EE2
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08017EDC
	ldr r0, _08017ED8
	b _08017F02
	.align 2, 0
_08017ED8: .4byte 0xCF000000
_08017EDC:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _08017EE4
_08017EE2:
	str r1, [sp, #0xc]
_08017EE4:
	ldr r2, [sp, #0xc]
	ldr r3, _08017F08
	cmp r2, r3
	bhi _08017EFC
	ldr r1, [sp, #8]
_08017EEE:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _08017EEE
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_08017EFC:
	mov r0, sp
	bl __pack_f
_08017F02:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_08017F08: .4byte 0x3FFFFFFF

	THUMB_FUNC_START __fixsfsi
__fixsfsi: @ 0x08017F0C
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08017F24
	movs r1, #1
_08017F24:
	cmp r1, #0
	bne _08017F56
	movs r1, #0
	cmp r0, #1
	bhi _08017F30
	movs r1, #1
_08017F30:
	cmp r1, #0
	bne _08017F56
	movs r1, #0
	cmp r0, #4
	bne _08017F3C
	movs r1, #1
_08017F3C:
	cmp r1, #0
	beq _08017F50
_08017F40:
	ldr r0, [sp, #4]
	ldr r1, _08017F4C
	cmp r0, #0
	beq _08017F6E
	adds r1, #1
	b _08017F6E
	.align 2, 0
_08017F4C: .4byte 0x7FFFFFFF
_08017F50:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _08017F5A
_08017F56:
	movs r0, #0
	b _08017F70
_08017F5A:
	cmp r1, #0x1e
	bgt _08017F40
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08017F6E
	rsbs r1, r1, #0
_08017F6E:
	adds r0, r1, #0
_08017F70:
	add sp, #0x14
	pop {pc}

	THUMB_FUNC_START __negsf2
__negsf2: @ 0x08017F74
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08017F8C
	movs r1, #1
_08017F8C:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {pc}

	THUMB_FUNC_START __make_fp
__make_fp: @ 0x08017F98
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
	.byte 0x00, 0x00

	THUMB_FUNC_START __extendsfdf2
__extendsfdf2: @ 0x08017FB0
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

	THUMB_FUNC_START __lshrdi3
__lshrdi3: @ 0x08017FDC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0801800C
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _08017FF8
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _08018008
_08017FF8:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_08018008:
	adds r1, r4, #0
	adds r0, r3, #0
_0801800C:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START __muldi3
__muldi3: @ 0x08018010
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0801807C
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
	bhs _08018050
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_08018050:
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
_0801807C: .4byte 0x0000FFFF

	THUMB_FUNC_START __negdi2
__negdi2: @ 0x08018080
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0801808E
	subs r1, #1
_0801808E:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

    .byte 0x00, 0x00
    