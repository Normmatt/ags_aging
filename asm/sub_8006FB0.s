.include "asm/macros.inc"

.syntax unified


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
