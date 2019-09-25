.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START BgAffineSet
BgAffineSet: @ 0x08012150
	svc #0xe
	bx lr

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x08012154
	svc #0xb
	bx lr

	THUMB_FUNC_START MultiBoot
MultiBoot: @ 0x08012158
	movs r1, #1
	svc #0x25
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START ObjAffineSet
ObjAffineSet: @ 0x08012160
	svc #0xf
	bx lr

	THUMB_FUNC_START SoundBiasReset
SoundBiasReset: @ 0x08012164
	movs r0, #0
	svc #0x19
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START SoundBiasSet
SoundBiasSet: @ 0x0801216C
	movs r0, #1
	svc #0x19
	bx lr
	.byte 0x00, 0x00
    