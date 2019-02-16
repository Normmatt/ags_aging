.include "asm/macros.inc"

.syntax unified


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

	THUMB_FUNC_START VerifyMemory
VerifyMemory: @ 0x0800F1F4
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

	THUMB_FUNC_START VerifyWord_ASM
VerifyWord_ASM: @ 0x0800F260
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

	THUMB_FUNC_START WriteMemory
WriteMemory: @ 0x0800F2F0
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

	THUMB_FUNC_START WriteWordZero_ASM
WriteWordZero_ASM: @ 0x0800F338
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
    