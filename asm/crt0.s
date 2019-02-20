.include "asm/macros.inc"

.syntax unified
.arm
Init:
	b crt0
	.include "asm/rom_header.inc"
	
    ARM_FUNC_START crt0
crt0:
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000FC
	ldr r1, _08000100
	ldr r0, _08000104
	str r0, [r1]
	ldr r0, _08000108
	ldr r2, _0800010C
	ldr r3, _08000110
_080000E4:
	ldr r1, [r2], #4
	str r1, [r0], #4
	subs r3, r3, #4
	bne _080000E4
	ldr r1, _08000114
	bx r1
	.align 2, 0
_080000FC: .4byte gUnknown_03007D00
_08000100: .4byte gUnknown_03007FFC
_08000104: .4byte intr_main
_08000108: .4byte __data_start__
_0800010C: .4byte __data_rom__
_08000110: .4byte __data_size__
.extern AgbMain
_08000114: .4byte AgbMain+1
