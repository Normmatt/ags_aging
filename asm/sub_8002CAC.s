.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_80030E8
sub_80030E8: @ 0x080030E8
	push {r7, lr}
	sub sp, #0x78
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, _0800311C
	movs r2, #0x60
	bl memcpy
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7]
_08003112:
	ldr r0, [r7]
	cmp r0, #2
	bls _08003120
	b _08003180
	.align 2, 0
_0800311C: .4byte gUnknown_080190F0
_08003120:
	movs r0, #0
	str r0, [r7, #4]
_08003124:
	ldr r0, [r7, #4]
	cmp r0, #7
	bls _0800312C
	b _08003178
_0800312C:
	ldr r0, _08003170
	ldr r1, _08003174
	ldr r3, [r7, #4]
	ldr r2, [r7]
	bl sub_800F150
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	ldr r2, [r7]
	adds r3, r2, #0
	lsls r2, r3, #5
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r1, [r7, #8]
	ldr r0, [r0]
	cmp r1, r0
	beq _08003162
	movs r0, #1
	ldr r1, [r7, #0xc]
	lsls r0, r1
	ldr r1, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
_08003162:
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08003124
	.align 2, 0
_08003170: .4byte sub_800329C
_08003174: .4byte sub_8003310
_08003178:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08003112
_08003180:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _08003192
_08003192:
	add sp, #0x78
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    
	THUMB_FUNC_START sub_800319C
sub_800319C: @ 0x0800319C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80030E8
	adds r1, r0, #0
	adds r0, r1, #0
	b _080031B0
_080031B0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	