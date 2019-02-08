.include "asm/macros.inc"

.syntax unified


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
