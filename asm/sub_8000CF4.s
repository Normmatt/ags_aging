.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START DrawTestResults
DrawTestResults: @ 0x08000CF4
	push {r4, r5, r7, lr}
	sub sp, #0xac
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _08000D54
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	adds r0, r7, #0
	adds r0, #0x14
	ldr r2, _08000D58
	adds r1, r2, #0
	ldr r4, _08000D5C
	adds r2, r2, r4
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r1, _08000D58
	adds r0, r1, #0
	ldr r4, _08000D5C
	adds r1, r1, r4
	adds r2, r7, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, _08000D60
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _08000D58
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000D58
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0
	str r0, [r7, #0x28]
_08000D4C:
	ldr r0, [r7, #0x28]
	cmp r0, #6
	bls _08000D64
	b _08000DE0
	.align 2, 0
_08000D54: .4byte gUnknown_08018718
_08000D58: .4byte gUnknown_03001B40
_08000D5C: .4byte 0x0000100C
_08000D60: .4byte gUnknown_0801872C
_08000D64:
	ldr r2, _08000DD0
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08000DD4
	movs r1, #0
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x2c
	ldr r1, _08000DD8
	ldr r2, _08000DDC
	ldr r3, [r7, #0x28]
	adds r5, r3, #0
	lsls r4, r5, #1
	adds r4, r4, r3
	lsls r3, r4, #2
	adds r2, #8
	adds r3, r2, r3
	ldr r2, [r3]
	bl sprintf
	adds r2, r7, #0
	adds r2, #0x2c
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08000DD4
	movs r1, #0xc
	str r1, [r0]
	ldr r0, _08000DDC
	ldr r1, [r7, #0x28]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r2, r0, r1
	ldr r0, [r2]
	ldr r1, _08000DDC
	ldr r2, [r7, #0x28]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	bl sub_8000E14
	ldr r0, [r7, #0x28]
	adds r1, r0, #1
	str r1, [r7, #0x28]
	b _08000D4C
	.align 2, 0
_08000DD0: .4byte gUnknown_08018730
_08000DD4: .4byte gUnknown_03001B40
_08000DD8: .4byte gUnknown_08018740
_08000DDC: .4byte gUnknown_030002FC
_08000DE0:
	ldr r1, _08000E0C
	adds r0, r1, #0
	ldr r4, _08000E10
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x14
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	add sp, #0xac
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000E0C: .4byte gUnknown_03001B40
_08000E10: .4byte 0x0000100C
