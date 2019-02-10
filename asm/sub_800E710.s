.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800E710
sub_800E710: @ 0x0800E710
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0800E730
	movs r2, #0xc0
	lsls r2, r2, #1
	ldr r3, _0800E734
	ldr r0, [r7]
	bl sub_800DD50
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E730: .4byte gUnknown_08101884
_0800E734: .4byte sub_800E738+1

	THUMB_FUNC_START sub_800E738
sub_800E738: @ 0x0800E738
	push {r4, r5, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	ldr r0, [r7, #4]
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x43
	cmp r0, #0x32
	bls _0800E75C
	b _0800E9A0
_0800E75C:
	lsls r1, r0, #2
	ldr r2, _0800E768
	adds r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_0800E768: .4byte _0800E76C
_0800E76C: @ jump table
	.4byte _0800E948 @ case 0
	.4byte _0800E91C @ case 1
	.4byte _0800E9A0 @ case 2
	.4byte _0800E9A0 @ case 3
	.4byte _0800E9A0 @ case 4
	.4byte _0800E9A0 @ case 5
	.4byte _0800E9A0 @ case 6
	.4byte _0800E9A0 @ case 7
	.4byte _0800E9A0 @ case 8
	.4byte _0800E8C4 @ case 9
	.4byte _0800E9A0 @ case 10
	.4byte _0800E9A0 @ case 11
	.4byte _0800E9A0 @ case 12
	.4byte _0800E974 @ case 13
	.4byte _0800E9A0 @ case 14
	.4byte _0800E898 @ case 15
	.4byte _0800E9A0 @ case 16
	.4byte _0800E9A0 @ case 17
	.4byte _0800E8F0 @ case 18
	.4byte _0800E9A0 @ case 19
	.4byte _0800E9A0 @ case 20
	.4byte _0800E9A0 @ case 21
	.4byte _0800E9A0 @ case 22
	.4byte _0800E9A0 @ case 23
	.4byte _0800E9A0 @ case 24
	.4byte _0800E9A0 @ case 25
	.4byte _0800E9A0 @ case 26
	.4byte _0800E9A0 @ case 27
	.4byte _0800E9A0 @ case 28
	.4byte _0800E9A0 @ case 29
	.4byte _0800E9A0 @ case 30
	.4byte _0800E9A0 @ case 31
	.4byte _0800E878 @ case 32
	.4byte _0800E868 @ case 33
	.4byte _0800E9A0 @ case 34
	.4byte _0800E9A0 @ case 35
	.4byte _0800E9A0 @ case 36
	.4byte _0800E9A0 @ case 37
	.4byte _0800E9A0 @ case 38
	.4byte _0800E9A0 @ case 39
	.4byte _0800E9A0 @ case 40
	.4byte _0800E848 @ case 41
	.4byte _0800E9A0 @ case 42
	.4byte _0800E9A0 @ case 43
	.4byte _0800E9A0 @ case 44
	.4byte _0800E888 @ case 45
	.4byte _0800E9A0 @ case 46
	.4byte _0800E838 @ case 47
	.4byte _0800E9A0 @ case 48
	.4byte _0800E9A0 @ case 49
	.4byte _0800E858 @ case 50
_0800E838:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E844
	ldrh r2, [r1]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E844: .4byte gUnknown_08101A04
_0800E848:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E854
	ldrh r2, [r1, #0xc]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E854: .4byte gUnknown_08101A04
_0800E858:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E864
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E864: .4byte gUnknown_08101A04
_0800E868:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E874
	ldrh r2, [r1, #0x24]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E874: .4byte gUnknown_08101A04
_0800E878:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E884
	ldrh r2, [r1, #0x30]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E884: .4byte gUnknown_08101A04
_0800E888:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800E894
	ldrh r2, [r1, #0x3c]
	strh r2, [r0]
	b _0800E9AA
	.align 2, 0
_0800E894: .4byte gUnknown_08101A04
_0800E898:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E8BC
	ldr r0, _0800E8C0
	ldr r1, _0800E8BC
	ldr r0, [r0]
	ldr r1, [r1, #8]
	lsrs r0, r1
	ldr r1, _0800E8BC
	ldr r1, [r1, #4]
	bl __umodsi3
	ldrh r1, [r5]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E8BC: .4byte gUnknown_08101A04
_0800E8C0: .4byte gUnknown_0300045C
_0800E8C4:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E8E8
	ldr r0, _0800E8EC
	ldr r1, _0800E8E8
	ldr r0, [r0]
	ldr r1, [r1, #0x14]
	lsrs r0, r1
	ldr r1, _0800E8E8
	ldr r1, [r1, #0x10]
	bl __umodsi3
	ldrh r1, [r5, #0xc]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E8E8: .4byte gUnknown_08101A04
_0800E8EC: .4byte gUnknown_0300045C
_0800E8F0:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E914
	ldr r0, _0800E918
	ldr r1, _0800E914
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	lsrs r0, r1
	ldr r1, _0800E914
	ldr r1, [r1, #0x1c]
	bl __umodsi3
	ldrh r1, [r5, #0x18]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E914: .4byte gUnknown_08101A04
_0800E918: .4byte gUnknown_0300045C
_0800E91C:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E940
	ldr r0, _0800E944
	ldr r1, _0800E940
	ldr r0, [r0]
	ldr r1, [r1, #0x2c]
	lsrs r0, r1
	ldr r1, _0800E940
	ldr r1, [r1, #0x28]
	bl __umodsi3
	ldrh r1, [r5, #0x24]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E940: .4byte gUnknown_08101A04
_0800E944: .4byte gUnknown_0300045C
_0800E948:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E96C
	ldr r0, _0800E970
	ldr r1, _0800E96C
	ldr r0, [r0]
	ldr r1, [r1, #0x38]
	lsrs r0, r1
	ldr r1, _0800E96C
	ldr r1, [r1, #0x34]
	bl __umodsi3
	ldrh r1, [r5, #0x30]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E96C: .4byte gUnknown_08101A04
_0800E970: .4byte gUnknown_0300045C
_0800E974:
	adds r4, r7, #0
	adds r4, #8
	ldr r5, _0800E998
	ldr r0, _0800E99C
	ldr r1, _0800E998
	ldr r0, [r0]
	ldr r1, [r1, #0x44]
	lsrs r0, r1
	ldr r1, _0800E998
	ldr r1, [r1, #0x40]
	bl __umodsi3
	ldrh r1, [r5, #0x3c]
	adds r1, r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	b _0800E9AA
	.align 2, 0
_0800E998: .4byte gUnknown_08101A04
_0800E99C: .4byte gUnknown_0300045C
_0800E9A0:
	adds r0, r7, #0
	adds r0, #8
	ldr r2, _0800E9B4
	adds r1, r2, #0
	strh r1, [r0]
_0800E9AA:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800E9B8
	.align 2, 0
_0800E9B4: .4byte 0x0000FFFF
_0800E9B8:
	add sp, #0xc
	pop {r4, r5, r7}
	pop {r1}
	bx r1
    