	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
