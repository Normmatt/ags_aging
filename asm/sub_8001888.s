.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8001888
sub_8001888: @ 0x08001888
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _08001924
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	adds r2, r7, #0
	adds r2, #0x18
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, _08001928
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r2, [r1]
	str r2, [r0]
	adds r0, r7, #0
	adds r0, #0x34
	ldr r0, _0800192C
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3c
	ldr r2, _08001930
	adds r1, r2, #0
	ldr r4, _08001934
	adds r2, r2, r4
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r1, _08001930
	adds r0, r1, #0
	ldr r4, _08001934
	adds r1, r1, r4
	adds r2, r7, #4
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, _08001938
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _08001930
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001930
	movs r1, #0
	str r1, [r0, #4]
	ldr r2, _0800193C
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08001930
	movs r1, #1
	str r1, [r0]
	ldr r0, _08001930
	movs r1, #1
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #0
	bne _08001944
	ldr r2, _08001940
	b _08001946
	.align 2, 0
_08001924: .4byte gUnknown_0801885C
_08001928: .4byte gUnknown_080188DC
_0800192C: .4byte gUnknown_08018900
_08001930: .4byte gUnknown_03001B40
_08001934: .4byte 0x0000100C
_08001938: .4byte gUnknown_08018800
_0800193C: .4byte gUnknown_08018908
_08001940: .4byte gUnknown_08018914
_08001944:
	ldr r2, _08001970
_08001946:
	movs r0, #1
	movs r1, #5
	bl DrawString
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, _08001974
	ldr r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #2
	adds r0, r0, r2
	ldr r2, [r0]
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7]
	cmp r0, #0
	bne _0800197C
	ldr r2, _08001978
	b _0800197E
	.align 2, 0
_08001970: .4byte gUnknown_08018918
_08001974: .4byte gUnknown_03002BB0
_08001978: .4byte gUnknown_0801891C
_0800197C:
	ldr r2, _080019B4
_0800197E:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _080019B8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080019B8
	movs r1, #3
	str r1, [r0, #4]
	ldr r2, _080019BC
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _080019B8
	movs r1, #1
	str r1, [r0]
	ldr r0, _080019B8
	movs r1, #4
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #1
	bne _080019C4
	ldr r2, _080019C0
	b _080019C6
	.align 2, 0
_080019B4: .4byte gUnknown_08018918
_080019B8: .4byte gUnknown_03001B40
_080019BC: .4byte gUnknown_08018920
_080019C0: .4byte gUnknown_08018914
_080019C4:
	ldr r2, _080019F0
_080019C6:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _080019F4
	ldr r1, [r0, #4]
	adds r0, r1, #0
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r0, r1
	ldr r2, [r1]
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7]
	cmp r0, #1
	bne _080019FC
	ldr r2, _080019F8
	b _080019FE
	.align 2, 0
_080019F0: .4byte gUnknown_08018918
_080019F4: .4byte gUnknown_03002BB0
_080019F8: .4byte gUnknown_0801891C
_080019FC:
	ldr r2, _08001A34
_080019FE:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _08001A38
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001A38
	movs r1, #6
	str r1, [r0, #4]
	ldr r2, _08001A3C
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _08001A38
	movs r1, #1
	str r1, [r0]
	ldr r0, _08001A38
	movs r1, #7
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #2
	bne _08001A44
	ldr r2, _08001A40
	b _08001A46
	.align 2, 0
_08001A34: .4byte gUnknown_08018918
_08001A38: .4byte gUnknown_03001B40
_08001A3C: .4byte gUnknown_08018928
_08001A40: .4byte gUnknown_08018914
_08001A44:
	ldr r2, _08001A90
_08001A46:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, _08001A94
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _08001A9C
	adds r4, r7, #0
	adds r4, #0x54
	ldr r5, _08001A98
	ldr r0, _08001A94
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __divsi3
	adds r6, r0, #0
	ldr r0, _08001A94
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __modsi3
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sprintf
	adds r2, r7, #0
	adds r2, #0x54
	movs r0, #0
	movs r1, #4
	bl DrawString
	b _08001AB2
	.align 2, 0
_08001A90: .4byte gUnknown_08018918
_08001A94: .4byte gUnknown_03002BB0
_08001A98: .4byte gUnknown_08018938
_08001A9C:
	adds r0, r7, #0
	adds r0, #0x54
	ldr r1, _08001ABC
	bl sprintf
	adds r2, r7, #0
	adds r2, #0x54
	movs r0, #0
	movs r1, #4
	bl DrawString
_08001AB2:
	ldr r0, [r7]
	cmp r0, #2
	bne _08001AC4
	ldr r2, _08001AC0
	b _08001AC6
	.align 2, 0
_08001ABC: .4byte gUnknown_08018948
_08001AC0: .4byte gUnknown_0801891C
_08001AC4:
	ldr r2, _08001AF0
_08001AC6:
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r1, _08001AF4
	adds r0, r1, #0
	ldr r4, _08001AF8
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x3c
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	add sp, #0xd4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001AF0: .4byte gUnknown_08018918
_08001AF4: .4byte gUnknown_03001B40
_08001AF8: .4byte 0x0000100C
