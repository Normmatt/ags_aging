.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800E9C0
sub_800E9C0: @ 0x0800E9C0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0800E9E0
	movs r2, #0xd0
	lsls r2, r2, #1
	ldr r3, _0800E9E4
	ldr r0, [r7]
	bl sub_800DD50
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9E0: .4byte gUnknown_08101A60
_0800E9E4: .4byte sub_800E9E8+1

	THUMB_FUNC_START sub_800E9E8
sub_800E9E8: @ 0x0800E9E8
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
	ldr r0, _0800EA14
	ldr r1, [r7, #4]
	ldrb r2, [r1]
	adds r1, r2, #0
	subs r1, #0x20
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800EA18
	.align 2, 0
_0800EA14: .4byte gUnknown_0300046C
_0800EA18:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EA20
sub_800EA20: @ 0x0800EA20
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800EAD0
	ldr r2, _0800EAD4
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800EAD8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800EADC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800EAE0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800EAE4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800EAE8
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800EAEC
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _0800EAE4
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800EAE0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800EAF0
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800EAF4
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800EAF8
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _0800EAE0
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0800EAFC
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _0800EB00
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800EB04
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAD0: .4byte 0x0400000E
_0800EAD4: .4byte 0x00001F0B
_0800EAD8: .4byte 0x0400001C
_0800EADC: .4byte 0x0400001E
_0800EAE0: .4byte 0x040000D4
_0800EAE4: .4byte gUnknown_08101C48
_0800EAE8: .4byte 0x050001E0
_0800EAEC: .4byte 0x84000008
_0800EAF0: .4byte gUnknown_08101C68
_0800EAF4: .4byte 0x06008000
_0800EAF8: .4byte 0x840012C8
_0800EAFC: .4byte gUnknown_08106788
_0800EB00: .4byte 0x0600F800
_0800EB04: .4byte 0x84000200

	THUMB_FUNC_START sub_800EB08
sub_800EB08: @ 0x0800EB08
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800EB2C
	ldr r1, [r0]
	cmp r1, #0
	beq _0800EB20
	ldr r0, _0800EB30
	ldr r1, _0800EB34
	ldrh r2, [r1]
	strh r2, [r0]
_0800EB20:
	ldr r0, [r7]
	cmp r0, #0
	beq _0800EB38
	cmp r0, #1
	beq _0800EB4C
	b _0800EB68
	.align 2, 0
_0800EB2C: .4byte gUnknown_0300052C
_0800EB30: .4byte gUnknown_030011D8
_0800EB34: .4byte 0x04000204
_0800EB38:
	movs r0, #4
	bl IdentifyEeprom
	ldr r1, _0800EB48
	movs r0, #0
	bl SetEepromTimerIntr
	b _0800EB68
	.align 2, 0
_0800EB48: .4byte gUnknown_03000428
_0800EB4C:
	ldr r0, _0800EB5C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800EB60
	ldr r1, _0800EB64
	ldrh r2, [r1]
	strh r2, [r0]
	b _0800EB68
	.align 2, 0
_0800EB5C: .4byte 0x04000100
_0800EB60: .4byte 0x04000204
_0800EB64: .4byte gUnknown_030011D8
_0800EB68:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800EB70
sub_800EB70: @ 0x0800EB70
	push {r7, lr}
	sub sp, #0x54
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	ldr r1, _0800EBE4
	movs r0, #0
	bl SetEepromTimerIntr
	adds r0, r7, #0
	ldrh r1, [r0]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl ProgramEepromDword
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800EBB4
	ldr r0, [r7, #0x50]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x50]
_0800EBB4:
	adds r0, r7, #0
	ldrh r1, [r0]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl VerifyEepromDword
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800EBD2
	ldr r0, [r7, #0x50]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x50]
_0800EBD2:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x50]
	adds r0, r1, #0
	b _0800EBE8
	.align 2, 0
_0800EBE4: .4byte gUnknown_03000428
_0800EBE8:
	add sp, #0x54
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EBF0
sub_800EBF0: @ 0x0800EBF0
	push {r7, lr}
	sub sp, #0x54
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	ldr r1, _0800EC44
	movs r0, #0
	bl SetEepromTimerIntr
	adds r0, r7, #0
	ldrh r1, [r0]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl ReadEepromDword
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800EC34
	ldr r0, [r7, #0x50]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x50]
_0800EC34:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x50]
	adds r0, r1, #0
	b _0800EC48
	.align 2, 0
_0800EC44: .4byte gUnknown_03000428
_0800EC48:
	add sp, #0x54
	pop {r7}
	pop {r1}
	bx r1
    