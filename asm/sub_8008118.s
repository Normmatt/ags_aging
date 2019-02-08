.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8008118
sub_8008118: @ 0x08008118
	push {r4, r5, r7, lr}
	sub sp, #0xa4
	mov r7, sp
	ldr r0, _0800813C
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r7]
	str r2, [r7, #4]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, _08008140
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _08008144
	movs r1, #0x11
	b _08008146
	.align 2, 0
_0800813C: .4byte gUnknown_08077884
_08008140: .4byte gUnknown_03002BB0
_08008144:
	movs r1, #8
_08008146:
	str r1, [r0]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, _080081D8
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r1, _080081DC
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	ldr r3, _080081E0
	adds r2, r1, r3
	str r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, _080081E4
	str r0, [r1]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	ldr r1, _080081E8
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #4
	ldr r1, _080081EC
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080081F0
	str r1, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r2, r7, #0
	bl sub_800F35C
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, _080081F4
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _080081F8
	movs r1, #9
	b _080081FA
	.align 2, 0
_080081D8: .4byte 0x0400010C
_080081DC: .4byte 0x04000108
_080081E0: .4byte 0xFFFF003C
_080081E4: .4byte 0x040000D4
_080081E8: .4byte gUnknown_080C48A0
_080081EC: .4byte 0x06017E80
_080081F0: .4byte 0x84000060
_080081F4: .4byte gUnknown_03002BB0
_080081F8:
	movs r1, #0
_080081FA:
	str r1, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x96
	lsls r1, r1, #2
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #4]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #2]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0xc]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0xa]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0xa]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #8]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0, #0x14]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _080086D4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x14]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x12]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x12]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x10]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x1c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x1c]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x1a]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x1a]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x90
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x24]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x24]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x22]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x22]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0, #0x2c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _080086D4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x2c]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x2a]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x2a]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x94
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x34]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x34]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x32]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x32]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x94
	ldr r2, [r1]
	adds r0, r2, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	adds r1, r0, #0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	ldrh r1, [r4, #0x3c]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4, #0x3c]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r2, [r1]
	adds r3, r2, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r3, #0
	lsls r5, r4, #0x17
	lsrs r3, r5, #0x17
	ldrh r4, [r0, #0x3a]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r0, #0x3a]
	adds r2, #1
	str r2, [r1]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _080086D8
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _08008600
	b _08008A46
_08008600:
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x44
	ldrh r1, [r0]
	ldr r2, _080086DC
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x42
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _080086D8
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x96
	lsls r1, r1, #2
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r1, r2, r0
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x4c
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x4a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	b _080086E0
	.align 2, 0
_080086D4: .4byte 0x000003FE
_080086D8: .4byte gUnknown_03002BB0
_080086DC: .4byte 0x000003FF
_080086E0:
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _08008ABC
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x54
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x52
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x50
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08008AC0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x5a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _08008ABC
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r1, r2, r0
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x64
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x62
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x60
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r4, r7, #0
	adds r4, #8
	ldr r0, _08008ABC
	ldr r1, [r0, #8]
	adds r0, r1, #0
	movs r1, #0x3c
	bl __modsi3
	adds r1, r0, #0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r2, r4, #0
	adds r0, r4, #0
	adds r0, #0x6c
	lsls r2, r1, #0x16
	lsrs r1, r2, #0x16
	ldrh r2, [r0]
	movs r3, #0xfc
	lsls r3, r3, #8
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x6a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08008AC0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x72
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x70
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x7a
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x78
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x84
	ldrh r1, [r0]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #8
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #3
	adds r3, r4, #0
	adds r3, #0x60
	adds r4, r2, #0
	adds r2, #0x82
	lsls r4, r3, #0x17
	lsrs r3, r4, #0x17
	ldrh r4, [r2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r4, r5
	adds r5, r4, #0
	adds r4, r5, #0
	orrs r4, r3
	adds r3, r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x94
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
_08008A46:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, _08008AC4
	str r0, [r1]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #4
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, _08008AC8
	subs r1, r2, r1
	str r1, [r0]
	adds r0, r7, #0
	adds r2, r7, #0
	adds r2, #0xa0
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #1
	movs r2, #0x84
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r2, #0
	b _08008ACC
	.align 2, 0
_08008ABC: .4byte gUnknown_03002BB0
_08008AC0: .4byte 0x000003FE
_08008AC4: .4byte 0x040000D4
_08008AC8: .4byte 0x07000400
_08008ACC:
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	add sp, #0xa4
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
    