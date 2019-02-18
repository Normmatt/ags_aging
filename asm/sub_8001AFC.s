.include "asm/macros.inc"

.syntax unified


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
	bl SaveAndDisableInterruptHandlers
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
	bl WaitForInterrupt
	bl UpdateTilemaps
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
	bl WaitForInterrupt
	bl UpdateTilemaps
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
	bl WaitForInterrupt
	bl UpdateTilemaps
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
	bl WaitForInterrupt
	bl UpdateTilemaps
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
    