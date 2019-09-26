.include "asm/macros.inc"

.syntax unified


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
	bl Test_CallFromStack_ASM
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
	bl Test_CallFromStack_ASM
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
	bl Test_CallFromStack_ASM
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
	bl Test_CallFromStack_ASM
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