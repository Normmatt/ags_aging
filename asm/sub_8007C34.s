.include "asm/macros.inc"

.syntax unified


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
