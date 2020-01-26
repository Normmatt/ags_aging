	.section .rodata

    .global AgbLibEeprom_ver
AgbLibEeprom_ver:
    .incbin "baserom.gba", 0x00141DFC, 0xC

    .global eeprom_list
eeprom_list:
    .incbin "baserom.gba", 0x00141E08, 0xC

    .global gUnknown_08141E14
gUnknown_08141E14:
    .incbin "baserom.gba", 0x00141E14, 0xC

    .global epMaxTime
epMaxTime:
    .incbin "baserom.gba", 0x00141E20, 0x60

    .global gUnknown_08141E80
gUnknown_08141E80:
    .byte 0 @this goes unused?

    .global gUnknown_08141E81
gUnknown_08141E81:
    .incbin "baserom.gba", 0x00141E81, 0x103