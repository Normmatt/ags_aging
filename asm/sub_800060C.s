.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800060C
sub_800060C: @ 0x0800060C
	push {r7, lr}
	mov r7, sp
	bl m4aSoundInit
	movs r0, #0xb
	bl m4aSongNumStart
_0800061A:
	b _0800061E
	.byte 0x2A, 0xE0
_0800061E:
	movs r0, #1
	bl WaitForInterrupt
	bl SoundVSync_rev01
	bl m4aSoundMain
	bl UpdateTilemaps
	ldr r0, _08000658
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000658
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r0, _0800065C
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08000664
	ldr r2, _08000660
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _0800066E
	.align 2, 0
_08000658: .4byte gUnknown_03001B40
_0800065C: .4byte gUnknown_0300045C
_08000660: .4byte gUnknown_080182D8
_08000664:
	ldr r2, _08000670
	movs r0, #0
	movs r1, #1
	bl DrawString
_0800066E:
	b _0800061A
	.align 2, 0
_08000670: .4byte gUnknown_080182E8
	.byte 0x0F, 0xF0, 0xC0, 0xFD, 0x10, 0xF0, 0x26, 0xF8, 0x80, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00
    