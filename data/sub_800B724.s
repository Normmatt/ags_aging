	.section .rodata

    .global gUnknown_0807AA6C
gUnknown_0807AA6C: /* multiboot image */
    .incbin "baserom.gba", 0x0007AA6C, 0x855C

    .global gUnknown_08082FC8
gUnknown_08082FC8:
    .incbin "baserom.gba", 0x00082FC8, 0xC0
    