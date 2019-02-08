.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8000200
sub_8000200: @ 0x08000200
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	ldr r0, _08000218
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
_0800020E:
	ldr r0, [r7, #0x10]
	cmp r0, #0xa
	ble _0800021C
	b _08000244
	.align 2, 0
_08000218: .4byte 0x0E001004
_0800021C:
	adds r0, r7, #0
	ldr r1, [r7, #0x10]
	adds r2, r0, r1
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	ldrb r3, [r2]
	movs r4, #0
	ands r3, r4
	adds r4, r3, #0
	ldrb r3, [r1]
	orrs r4, r3
	adds r3, r4, #0
	strb r3, [r2]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800020E
_08000244:
	adds r0, r7, #0
	ldrb r1, [r0, #0xb]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	ldr r0, _08000260
	adds r1, r7, #0
	bl strcmp
	cmp r0, #0
	bne _08000266
	movs r0, #1
	b _08000282
	.align 2, 0
_08000260: .4byte gUnknown_0801809C
	.byte 0x0D, 0xE0
_08000266:
	ldr r0, _08000278
	adds r1, r7, #0
	bl strcmp
	cmp r0, #0
	bne _0800027E
	movs r0, #2
	b _08000282
	.align 2, 0
_08000278: .4byte gUnknown_080180A8
	.byte 0x01, 0xE0
_0800027E:
	movs r0, #0
	b _08000282
_08000282:
	add sp, #0x14
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    