.include "asm/macros.inc"

.syntax unified


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
