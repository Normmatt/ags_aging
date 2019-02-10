.include "asm/macros.inc"

.syntax unified


	ARM_FUNC_START intr_main
intr_main: @ intr_main
	ldr r3, _0800F140
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #1
	bne _0800F100
	add r2, r2, #4
	ands r0, r1, #2
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #4
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #8
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _0800F110
	add r2, r2, #4
	ands r0, r1, #0x2000
	b _0800F110
_0800F100:
	ldr r3, _0800F144
	ldr r1, [r3]
	add r1, r1, #1
	str r1, [r3]
_0800F110:
	ldr r3, _0800F140
	strh r0, [r3, #2]
	ldr r3, _0800F148
	ldr r1, [r3]
	orr r1, r1, r0
	str r1, [r3]
	ldr r1, _0800F14C
	add r1, r1, r2
	ldr r0, [r1]
	tst r0, r0
	bxne r0
	.byte 0x1E, 0xFF, 0x2F, 0xE1
_0800F140: .4byte 0x04000200
_0800F144: .4byte gUnknown_0300045C
_0800F148: .4byte gUnknown_03007FF8
_0800F14C: .4byte gUnknown_0300041C
