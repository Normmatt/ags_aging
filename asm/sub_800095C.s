.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800095C
sub_800095C: @ 0x0800095C
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r1, _0800099C
	movs r0, #1
	bl SetInterruptHandler
	ldr r0, _080009A0
	movs r1, #8
	strh r1, [r0]
	movs r0, #1
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, _080009A4
	adds r0, r1, #0
	bl DrawHeading
	ldr r0, _080009A8
	ldr r1, [r0, #4]
	adds r0, r1, #0
	bl DrawInputButtons
_0800099A:
	b _080009AE
	.align 2, 0
_0800099C: .4byte sub_80009F4+1
_080009A0: .4byte 0x04000004
_080009A4: .4byte gUnknown_080183EC
_080009A8: .4byte gUnknown_03002BB0
	.byte 0x1A, 0xE0
_080009AE:
	movs r0, #1
	bl WaitForInterrupt
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _080009DC
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _080009E0
	ldr r0, [r1, #4]
	adds r1, r7, #0
	adds r1, #0x44
	ldrh r2, [r1]
	adds r1, r2, #0
	bl sub_800C2C8
	b _0800099A
	.align 2, 0
_080009DC: .4byte 0x04000130
_080009E0: .4byte gUnknown_03002BB0
	.byte 0x39, 0x1C, 0x08, 0x1C, 0x0C, 0xF0, 0x34, 0xFF, 0x12, 0xB0, 0x80, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_80009F4
sub_80009F4: @ 0x080009F4
	push {r7, lr}
	mov r7, sp
	bl UpdateTilemaps
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
    