.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800CD3C
sub_800CD3C: @ 0x0800CD3C
	push {r7, lr}
	sub sp, #0x50
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	ldr r0, _0800CDF4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CDF8
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800EC94
	movs r0, #0
	bl SetIME
	ldr r0, _0800CDF4
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800CDA0
	ldr r0, [r7, #0x4c]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x4c]
_0800CDA0:
	ldr r0, _0800CDF4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CDF8
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800EC94
	movs r0, #0
	bl SetIME
	ldr r0, _0800CDF4
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800CDE4
	ldr r0, [r7, #0x4c]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x4c]
_0800CDE4:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x4c]
	adds r0, r1, #0
	b _0800CDFC
	.align 2, 0
_0800CDF4: .4byte gUnknown_03007FF8
_0800CDF8: .4byte 0x04000202
_0800CDFC:
	add sp, #0x50
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CE04
sub_800CE04: @ 0x0800CE04
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #1
	bl SaveAndDisableInterruptHandlers
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	movs r0, #0
	b _0800CE34
_0800CE34:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CE3C
sub_800CE3C: @ 0x0800CE3C
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #1
	bl SaveAndDisableInterruptHandlers
	svc #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	movs r0, #0
	b _0800CE64
_0800CE64:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START WriteAndVerifyMemory_U8
WriteAndVerifyMemory_U8: @ 0x0800CE6C
	push {r7, lr}
	sub sp, #0x20
	add r7, sp, #8
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r2, #0
	str r3, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #8
	strb r0, [r1]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	adds r0, r7, #0
	adds r0, #8
	ldrb r2, [r0]
	ldr r0, [r7]
	movs r3, #0
	bl WriteMemory
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	adds r0, r7, #0
	adds r0, #8
	ldrb r2, [r0]
	ldr r0, [r7, #0xc]
	str r0, [sp]
	ldr r0, [r7, #0x20]
	str r0, [sp, #4]
	ldr r0, [r7]
	movs r3, #0
	bl VerifyMemory
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800CED0
_0800CED0:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START WriteAndVerifyWord_ASM
WriteAndVerifyWord_ASM: @ 0x0800CED8
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r0, [r7]
	bl WriteWordZero_ASM
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r2, [r7, #8]
	ldr r3, [r7, #0xc]
	ldr r0, [r7]
	bl VerifyWord_ASM
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800CF22
_0800CF22:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START WriteAndVerifyMemory_U32
WriteAndVerifyMemory_U32: @ 0x0800CF2C
	push {r7, lr}
	sub sp, #0x20
	add r7, sp, #8
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r2, [r7, #8]
	ldr r0, [r7]
	movs r3, #2
	bl WriteMemory
	ldr r0, [r7, #4]
	ldr r2, [r7]
	subs r1, r0, r2
	ldr r2, [r7, #8]
	ldr r0, [r7, #0xc]
	str r0, [sp]
	ldr r0, [r7, #0x20]
	str r0, [sp, #4]
	ldr r0, [r7]
	movs r3, #2
	bl VerifyMemory
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800CF82
_0800CF82:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START TimeDmaToAndFromMemory_U16
TimeDmaToAndFromMemory_U16: @ 0x0800CF8C
	push {r7, lr}
	sub sp, #0x11c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0xc
	strh r0, [r1]
	ldr r0, _0800CFF4
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800CFF4
	movs r1, #0x80
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800CFF8
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800CFFC
	ldr r1, _0800CFF4
	str r1, [r0]
	ldr r0, _0800D000
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800CFF8
	ldr r1, _0800D004
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0800CFFC
	str r0, [r1]
_0800CFD8:
	adds r0, r7, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D008
	b _0800D00A
	.align 2, 0
_0800CFF4: .4byte 0x04000100
_0800CFF8: .4byte 0x040000DC
_0800CFFC: .4byte 0x040000D4
_0800D000: .4byte 0x040000D8
_0800D004: .4byte 0x81000080
_0800D008:
	b _0800CFD8
_0800D00A:
	ldr r0, _0800D04C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D050
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D054
	adds r1, r7, #0
	adds r1, #0x10
	str r1, [r0]
	ldr r0, _0800D04C
	ldr r1, _0800D058
	str r1, [r0]
	adds r0, r7, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _0800D050
	str r0, [r1]
_0800D030:
	adds r0, r7, #0
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D05C
	b _0800D05E
	.align 2, 0
_0800D04C: .4byte 0x040000DC
_0800D050: .4byte 0x040000D4
_0800D054: .4byte 0x040000D8
_0800D058: .4byte 0x80000080
_0800D05C:
	b _0800D030
_0800D05E:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r2, r1, #2
	adds r1, r2, #0
	strh r1, [r0]
	movs r2, #0x89
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
_0800D088:
	adds r0, r7, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x7f
	bls _0800D098
	b _0800D0FC
_0800D098:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800D0C0
	movs r0, #1
	str r0, [r7, #8]
	b _0800D0FC
_0800D0C0:
	movs r3, #0x89
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r2, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800D088
_0800D0FC:
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _0800D10E
_0800D10E:
	add sp, #0x11c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START TimeDmaToAndFromMemory_U32
TimeDmaToAndFromMemory_U32: @ 0x0800D118
	push {r4, r5, r7, lr}
	sub sp, #0x124
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x10
	strh r0, [r1]
	ldr r0, _0800D180
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D180
	movs r1, #0x80
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800D184
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D188
	ldr r1, _0800D180
	str r1, [r0]
	ldr r0, _0800D18C
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D184
	ldr r1, _0800D190
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0800D188
	str r0, [r1]
_0800D166:
	adds r0, r7, #0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D194
	b _0800D196
	.align 2, 0
_0800D180: .4byte 0x04000100
_0800D184: .4byte 0x040000DC
_0800D188: .4byte 0x040000D4
_0800D18C: .4byte 0x040000D8
_0800D190: .4byte 0x85000040
_0800D194:
	b _0800D166
_0800D196:
	ldr r0, _0800D1D8
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D1DC
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D1E0
	adds r1, r7, #0
	adds r1, #0x14
	str r1, [r0]
	ldr r0, _0800D1D8
	ldr r1, _0800D1E4
	str r1, [r0]
	adds r0, r7, #0
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _0800D1DC
	str r0, [r1]
_0800D1BC:
	adds r0, r7, #0
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D1E8
	b _0800D1EA
	.align 2, 0
_0800D1D8: .4byte 0x040000DC
_0800D1DC: .4byte 0x040000D4
_0800D1E0: .4byte 0x040000D8
_0800D1E4: .4byte 0x84000040
_0800D1E8:
	b _0800D1BC
_0800D1EA:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r7, #4]
	adds r5, r0, #1
	movs r0, #0x20
	ldr r1, [r7, #8]
	bl __divsi3
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r0, #1
	adds r0, r1, #0
	strh r0, [r4]
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	strh r2, [r0]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, _0800D240
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
_0800D22E:
	adds r0, r7, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x7f
	bls _0800D244
	b _0800D2CA
	.align 2, 0
_0800D240: .4byte 0x04000102
_0800D244:
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	movs r2, #0x8b
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800D26C
	movs r0, #1
	str r0, [r7, #0xc]
	b _0800D2CA
_0800D26C:
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r3, [r2]
	adds r1, r3, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800D296
	movs r0, #1
	str r0, [r7, #0xc]
	b _0800D2CA
_0800D296:
	movs r3, #0x8b
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r2, #0x8b
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r1, r7, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #2
	str r2, [r0]
	b _0800D22E
_0800D2CA:
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D2DC
_0800D2DC:
	add sp, #0x124
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D2E4
sub_800D2E4: @ 0x0800D2E4
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	subs r0, r0, r1
	lsrs r1, r0, #8
	str r1, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #0x14]
_0800D302:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	blt _0800D30C
	b _0800D32A
_0800D30C:
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	bl TimeDmaToAndFromMemory_U16
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	adds r1, r0, #1
	str r1, [r7, #0x14]
	b _0800D302
_0800D32A:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D330
_0800D330:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D338
sub_800D338: @ 0x0800D338
	push {r7, lr}
	sub sp, #0x1c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	subs r0, r0, r1
	lsrs r1, r0, #8
	str r1, [r7, #0x14]
	movs r0, #0
	str r0, [r7, #0x18]
_0800D358:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x14]
	cmp r0, r1
	blt _0800D362
	b _0800D382
_0800D362:
	ldr r0, [r7, #0x18]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	ldr r2, [r7, #0xc]
	bl TimeDmaToAndFromMemory_U32
	ldr r1, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x18]
	adds r1, r0, #1
	str r1, [r7, #0x18]
	b _0800D358
_0800D382:
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800D388
_0800D388:
	add sp, #0x1c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D390
sub_800D390: @ 0x0800D390
	push {r7, lr}
	sub sp, #0x11c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0xc
	strh r0, [r1]
	adds r0, r7, #0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r7, #4]
	str r0, [r1]
	ldr r0, _0800D3F8
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D3FC
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	str r1, [r0]
	ldr r0, _0800D400
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D3F8
	ldr r1, _0800D404
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0800D3FC
	str r0, [r1]
_0800D3DE:
	adds r0, r7, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D408
	b _0800D40A
	.align 2, 0
_0800D3F8: .4byte 0x040000DC
_0800D3FC: .4byte 0x040000D4
_0800D400: .4byte 0x040000D8
_0800D404: .4byte 0x85000040
_0800D408:
	b _0800D3DE
_0800D40A:
	ldr r0, _0800D44C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D450
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0800D454
	adds r1, r7, #0
	adds r1, #0x10
	str r1, [r0]
	ldr r0, _0800D44C
	ldr r1, _0800D458
	str r1, [r0]
	adds r0, r7, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _0800D450
	str r0, [r1]
_0800D430:
	adds r0, r7, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r2, r7, r0
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0800D45C
	b _0800D45E
	.align 2, 0
_0800D44C: .4byte 0x040000DC
_0800D450: .4byte 0x040000D4
_0800D454: .4byte 0x040000D8
_0800D458: .4byte 0x84000040
_0800D45C:
	b _0800D430
_0800D45E:
	adds r0, r7, #0
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
_0800D46A:
	adds r0, r7, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x3f
	bls _0800D47A
	b _0800D4BC
_0800D47A:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0800D49C
	movs r0, #1
	str r0, [r7, #8]
	b _0800D4BC
_0800D49C:
	adds r0, r7, #0
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800D46A
_0800D4BC:
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _0800D4CE
_0800D4CE:
	add sp, #0x11c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800D4D8
sub_800D4D8: @ 0x0800D4D8
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	subs r0, r0, r1
	lsrs r1, r0, #8
	str r1, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #0x14]
_0800D4F6:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	blt _0800D500
	b _0800D51E
_0800D500:
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	bl sub_800D390
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	adds r1, r0, #1
	str r1, [r7, #0x14]
	b _0800D4F6
_0800D51E:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D524
_0800D524:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D52C
sub_800D52C: @ 0x0800D52C
	push {r7, lr}
	sub sp, #0x28
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, [r7]
	str r0, [r7, #0x20]
	ldr r0, [r7, #8]
	str r0, [r7, #0x1c]
_0800D552:
	ldr r0, [r7, #0x20]
	ldr r1, [r7, #4]
	cmp r0, r1
	bne _0800D55C
	b _0800D584
_0800D55C:
	ldr r0, [r7, #0x1c]
	ldr r1, _0800D57C
	muls r0, r1, r0
	ldr r2, _0800D580
	adds r1, r0, r2
	str r1, [r7, #0x18]
	ldr r0, [r7, #0x20]
	ldr r1, [r7, #0x18]
	str r1, [r0]
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x20]
	adds r1, r0, #4
	str r1, [r7, #0x20]
	b _0800D552
	.align 2, 0
_0800D57C: .4byte 0x00010DCD
_0800D580: .4byte 0x0019660D
_0800D584:
	ldr r0, [r7]
	str r0, [r7, #0x20]
	ldr r0, [r7, #8]
	str r0, [r7, #0x1c]
_0800D58C:
	ldr r0, [r7, #0x20]
	ldr r1, [r7, #4]
	cmp r0, r1
	bne _0800D596
	b _0800D5D8
_0800D596:
	ldr r0, [r7, #0x1c]
	ldr r1, _0800D5C4
	muls r0, r1, r0
	ldr r2, _0800D5C8
	adds r1, r0, r2
	str r1, [r7, #0x18]
	ldr r0, [r7, #0x20]
	ldr r1, [r0]
	str r1, [r7, #0x24]
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x18]
	cmp r0, r1
	beq _0800D5CC
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x20]
	str r1, [r0]
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x24]
	str r1, [r0]
	movs r0, #1
	str r0, [r7, #0x10]
	b _0800D5D8
	.align 2, 0
_0800D5C4: .4byte 0x00010DCD
_0800D5C8: .4byte 0x0019660D
_0800D5CC:
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x20]
	adds r1, r0, #4
	str r1, [r7, #0x20]
	b _0800D58C
_0800D5D8:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _0800D5EA
_0800D5EA:
	add sp, #0x28
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    
    

	THUMB_FUNC_START sub_800D5F4
sub_800D5F4: @ 0x0800D5F4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _0800D62C
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800D630
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800D634
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800D638
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800D63C
	ldr r1, _0800D634
	str r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D62C: .4byte 0x040000D4
_0800D630: .4byte intr_main
_0800D634: .4byte gUnknown_030010A8
_0800D638: .4byte 0x84000041
_0800D63C: .4byte gUnknown_03007FFC

	THUMB_FUNC_START WaitForInterrupt
WaitForInterrupt: @ 0x0800D640
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	ldr r0, _0800D67C
	ldr r1, _0800D67C
	adds r2, r7, #0
	ldrh r3, [r2]
	mvns r2, r3
	ldrh r1, [r1]
	adds r3, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800D65E:
	ldr r0, _0800D67C
	adds r1, r7, #0
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r2, r1, #0
	adds r1, r0, #0
	ands r1, r2
	adds r0, r7, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bne _0800D680
	b _0800D682
	.align 2, 0
_0800D67C: .4byte gUnknown_03007FF8
_0800D680:
	b _0800D65E
_0800D682:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START SetInterruptHandler
SetInterruptHandler: @ 0x0800D68C
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
_0800D69C:
	ldr r0, [r7, #8]
	cmp r0, #0xf
	bgt _0800D6B8
	adds r0, r7, #0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800D6B8
	b _0800D6BA
_0800D6B8:
	b _0800D6CE
_0800D6BA:
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	adds r0, r7, #0
	adds r1, r7, #0
	ldrh r2, [r1]
	lsrs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0800D69C
_0800D6CE:
	ldr r0, _0800D6F0
	ldr r1, [r7, #8]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r7, #0xc]
	ldr r0, _0800D6F0
	ldr r1, [r7, #8]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800D6F4
	.align 2, 0
_0800D6F0: .4byte gUnknown_0300041C
_0800D6F4:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800D6FC
sub_800D6FC: @ 0x0800D6FC
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_0800D706:
	ldr r0, [r7]
	cmp r0, #0xf
	ble _0800D70E
	b _0800D728
_0800D70E:
	ldr r0, _0800D724
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800D706
	.align 2, 0
_0800D724: .4byte gUnknown_0300041C
_0800D728:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START SetIME
SetIME: @ 0x0800D730
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #2
	ldr r1, _0800D754
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800D754
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800D758
	.align 2, 0
_0800D754: .4byte 0x04000208
_0800D758:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START SetIE
SetIE: @ 0x0800D760
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #2
	ldr r1, _0800D784
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800D784
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800D788
	.align 2, 0
_0800D784: .4byte 0x04000200
_0800D788:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START SaveAndDisableInterruptHandlers
SaveAndDisableInterruptHandlers: @ 0x0800D790
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	adds r0, r2, #0
	adds r2, r7, #4
	strh r1, [r2]
	adds r1, r7, #6
	strh r0, [r1]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIE
	adds r1, r7, #0
	adds r1, #0xa
	strh r0, [r1]
	ldr r0, [r7]
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	adds r1, r7, #0
	adds r1, #0xa
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	movs r0, #0
	str r0, [r7, #0xc]
_0800D7F2:
	ldr r0, [r7, #0xc]
	cmp r0, #0xf
	ble _0800D7FA
	b _0800D830
_0800D7FA:
	ldr r0, [r7]
	ldr r1, [r7, #0xc]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r0, #4
	adds r0, r2, r1
	ldr r1, _0800D82C
	ldr r2, [r7, #0xc]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _0800D82C
	ldr r1, [r7, #0xc]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800D7F2
	.align 2, 0
_0800D82C: .4byte gUnknown_0300041C
_0800D830:
	ldr r0, _0800D84C
	ldr r2, _0800D850
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #4
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D84C: .4byte 0x04000202
_0800D850: .4byte 0x00003FFF

	THUMB_FUNC_START RestoreInterruptHandlers
RestoreInterruptHandlers: @ 0x0800D854
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	movs r0, #0
	bl SetIME
	movs r0, #0
	str r0, [r7, #4]
_0800D866:
	ldr r0, [r7, #4]
	cmp r0, #0xf
	ble _0800D86E
	b _0800D894
_0800D86E:
	ldr r0, _0800D890
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	ldr r2, [r7, #4]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800D866
	.align 2, 0
_0800D890: .4byte gUnknown_0300041C
_0800D894:
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	adds r0, r1, #0
	bl SetIE
	ldr r0, [r7]
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START ReadKeyPlus
ReadKeyPlus: @ 0x0800D8B0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _0800D918
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800D91C
	adds r1, r7, #0
	ldr r2, _0800D91C
	ldrh r1, [r1]
	ldrh r2, [r2]
	eors r1, r2
	adds r2, r7, #0
	ldrh r2, [r2]
	adds r3, r2, #0
	ands r1, r3
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r0, _0800D91C
	adds r1, r7, #0
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800D91C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0800D9D0
	movs r0, #0
	str r0, [r7, #4]
_0800D90E:
	ldr r0, [r7, #4]
	cmp r0, #9
	ble _0800D920
	b _0800D9D0
	.align 2, 0
_0800D918: .4byte 0x04000130
_0800D91C: .4byte gUnknown_03000460
_0800D920:
	ldr r0, _0800D95C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D964
	ldr r0, _0800D960
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r3, r2, #2
	adds r1, r0, r3
	ldr r0, _0800D960
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, _0800D960
	ldr r2, [r7, #4]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	b _0800D972
	.align 2, 0
_0800D95C: .4byte gUnknown_03000460
_0800D960: .4byte gUnknown_030011B0
_0800D964:
	ldr r0, _0800D9C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_0800D972:
	ldr r0, _0800D9C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, _0800D9CC
	ldr r0, [r0]
	ldr r1, [r1, #4]
	cmp r0, r1
	ble _0800D9BE
	ldr r0, _0800D9C8
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r2, _0800D9CC
	ldr r1, [r2, #8]
	ldr r2, [r0]
	adds r0, r2, #0
	bl __modsi3
	cmp r0, #0
	bne _0800D9BE
	ldr r0, _0800D9CC
	ldr r1, _0800D9CC
	movs r2, #1
	ldr r3, [r7, #4]
	lsls r2, r3
	ldrh r1, [r1, #2]
	orrs r1, r2
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
_0800D9BE:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800D90E
	.align 2, 0
_0800D9C8: .4byte gUnknown_030011B0
_0800D9CC: .4byte gUnknown_03000460
_0800D9D0:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START ReadKey
ReadKey: @ 0x0800D9D8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _0800DA20
	ldr r1, _0800DA24
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800DA20
	ldrh r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _0800DA20
	movs r1, #0x18
	str r1, [r0, #4]
	ldr r0, _0800DA20
	movs r1, #4
	str r1, [r0, #8]
	movs r0, #0
	str r0, [r7]
_0800DA18:
	ldr r0, [r7]
	cmp r0, #9
	ble _0800DA28
	b _0800DA44
	.align 2, 0
_0800DA20: .4byte gUnknown_03000460
_0800DA24: .4byte 0x04000130
_0800DA28:
	ldr r0, _0800DA40
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800DA18
	.align 2, 0
_0800DA40: .4byte gUnknown_030011B0
_0800DA44:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
    
    