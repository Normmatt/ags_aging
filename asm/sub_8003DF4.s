.include "asm/macros.inc"

.syntax unified


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
