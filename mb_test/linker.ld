ENTRY(__start)

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
}

SECTIONS {
    ewram : ALIGN(4) {
        asm/crt0.o(.text);
        asm/code.o(.text);
        data/data.o(.data);
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_03000000 = .;
        . = 0x00000040; gUnk_03000040 = .;
        . = 0x00000330; gUnk_03000330 = .;
        . = 0x00000334; gUnk_03000334 = .;
        . = 0x00000348; gUnk_03000348 = .;
        . = 0x00000350; gUnk_03000350 = .;
        . = 0x00000750; gUnk_03000750 = .;
        . = 0x00000754; gUnk_03000754 = .;
        . = 0x00000758; gUnk_03000758 = .;
        . = 0x0000075C; gUnk_0300075C = .;
        . = 0x00000760; gUnk_03000760 = .;
        . = 0x00000764; gUnk_03000764 = .;
        . = 0x00000790; gUnk_03000790 = .;
        . = 0x00000898; gUnk_03000898 = .;
        . = 0x0000089C; gUnk_0300089C = .;
        . = 0x000008A0; gUnk_030008A0 = .;
        . = 0x000008A4; gUnk_030008A4 = .;
        . = 0x000008A8; gUnk_030008A8 = .;
        . = 0x00000938; gUnk_03000938 = .;
        . = 0x00000948; gUnk_03000948 = .;
        . = 0x00000960; gUnk_03000960 = .;
        . = 0x00000970; gUnk_03000970 = .;
        . = 0x00000978; gUnk_03000978 = .;
        . = 0x000009B8; gUnk_030009B8 = .;
        . = 0x00001138; gUnk_03001138 = .;
        . = 0x00001178; gUnk_03001178 = .;
        . = 0x000011B8; gUnk_030011B8 = .;
        . = 0x000019D4; gUnk_030019D4 = .;
        . = 0x000019D8; gUnk_030019D8 = .;
        . = 0x00007D00; gUnk_03007D00 = .;
    } >iwram

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
