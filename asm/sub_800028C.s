.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800028C
sub_800028C: @ 0x0800028C
	push {r7, lr}
	sub sp, #0x44
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _080002BC
	movs r1, #8
	strh r1, [r0]
	ldr r1, _080002C0
	adds r0, r1, #0
	bl DrawHeading
	bl sub_800D9D8
_080002B0:
	ldr r0, _080002C4
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _080002C8
	b _08000360
	.align 2, 0
_080002BC: .4byte 0x04000004
_080002C0: .4byte gUnknown_080180BC
_080002C4: .4byte gUnknown_03000460
_080002C8:
	movs r0, #1
	bl sub_800D640
	bl sub_800DFB0
	bl sub_800D8B0
	ldr r0, _08000314
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08000324
	ldr r0, _08000318
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000318
	movs r1, #8
	str r1, [r0, #4]
	ldr r2, _0800031C
	movs r0, #0
	movs r1, #1
	bl DrawString
	ldr r0, _08000318
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000318
	movs r1, #0xa
	str r1, [r0, #4]
	ldr r2, _08000320
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08000350
	.align 2, 0
_08000314: .4byte gUnknown_0300045C
_08000318: .4byte gUnknown_03001B40
_0800031C: .4byte gUnknown_080180D0
_08000320: .4byte gUnknown_080180E4
_08000324:
	ldr r0, _08000354
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000354
	movs r1, #8
	str r1, [r0, #4]
	ldr r2, _08000358
	movs r0, #0
	movs r1, #1
	bl DrawString
	ldr r0, _08000354
	movs r1, #7
	str r1, [r0]
	ldr r0, _08000354
	movs r1, #0xa
	str r1, [r0, #4]
	ldr r2, _0800035C
	movs r0, #0
	movs r1, #1
	bl DrawString
_08000350:
	b _080002B0
	.align 2, 0
_08000354: .4byte gUnknown_03001B40
_08000358: .4byte gUnknown_080180F8
_0800035C: .4byte gUnknown_0801810C
_08000360:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x44
	pop {r7}
	pop {r0}
	bx r0
    