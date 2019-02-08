.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START AgbMain
AgbMain: @ 0x08000118
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	bl sub_800D5F4
	ldr r0, _08000148
	ldr r2, _0800014C
	adds r1, r2, #0
	strh r1, [r0]
	bl sub_800EE9C
	bl sub_8000200
	str r0, [r7]
	ldr r0, [r7]
	cmp r0, #0
	beq _0800017A
	ldr r0, [r7]
	cmp r0, #1
	beq _08000150
	cmp r0, #2
	beq _08000164
	b _08000178
	.align 2, 0
_08000148: .4byte 0x04000204
_0800014C: .4byte 0x000005B7
_08000150:
	ldr r0, _08000160
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000160
	movs r1, #0
	str r1, [r0, #4]
	b _08000178
	.align 2, 0
_08000160: .4byte gUnknown_03002BB0
_08000164:
	ldr r0, _08000174
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000174
	movs r1, #1
	str r1, [r0, #4]
	b _08000178
	.align 2, 0
_08000174: .4byte gUnknown_03002BB0
_08000178:
	b _080001B2
_0800017A:
	movs r0, #0
	bl sub_800EB08
	bl sub_800EC50
	cmp r0, #1
	bne _080001A0
	ldr r0, _0800019C
	movs r1, #4
	str r1, [r0]
	ldr r0, _0800019C
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, _0800019C
	movs r1, #0
	str r1, [r0, #8]
	b _080001AC
	.align 2, 0
_0800019C: .4byte gUnknown_03002BB0
_080001A0:
	bl sub_800EF34
	cmp r0, #0
	beq _080001AC
	bl sub_800028C
_080001AC:
	movs r0, #1
	bl sub_800EB08
_080001B2:
	adds r0, r7, #4
	ldr r1, _080001DC
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #4
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _080001E4
	ldr r0, [r7]
	cmp r0, #0
	bne _080001E4
	bl testprogramMain
_080001DA:
	b _080001E2
	.align 2, 0
_080001DC: .4byte 0x04000130
	.byte 0x00, 0xE0
_080001E2:
	b _080001DA
_080001E4:
	ldr r0, _080001F0
	ldr r1, [r0]
	adds r0, r1, #0
	bl testmain
_080001EE:
	b _080001F6
	.align 2, 0
_080001F0: .4byte gUnknown_03002BB0
	.byte 0x00, 0xE0
_080001F6:
	b _080001EE
	.byte 0x02, 0xB0, 0x80, 0xBC, 0x01, 0xBC, 0x00, 0x47
    