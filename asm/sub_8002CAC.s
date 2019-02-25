.include "asm/macros.inc"

.syntax unified


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
    