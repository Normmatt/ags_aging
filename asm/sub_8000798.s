.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START selftestMain
selftestMain: @ 0x08000798
	push {r7, lr}
	sub sp, #0x88
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _080007D8
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #5
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r1, #0x68
	bl sub_8003DF4
	ldr r0, _080007DC
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _080007E4
	ldr r1, _080007E0
	adds r0, r1, #0
	bl DrawHeading
	b _080007EC
	.align 2, 0
_080007D8: .4byte 0x04000004
_080007DC: .4byte gUnknown_03002BB0
_080007E0: .4byte gUnknown_08018348
_080007E4:
	ldr r1, _08000818
	adds r0, r1, #0
	bl DrawHeading
_080007EC:
	bl EnableAllTests
	movs r0, #5
	movs r1, #1
	bl DisableSpecificTestInClass
	bl RunAllTestClasses
	str r0, [r7, #0x44]
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	bl DrawFinalTestResult
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x88
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000818: .4byte gUnknown_08018360
