ENTRY(__start)

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
}

SECTIONS {
    ewram : ALIGN(4) {
        asm/crt0.o(.text);
        src/main.o(.text);
        asm/code.o(.text);
        asm/intr_main.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libc.a:sprintf.o(.text);
        *libc.a:vfprintf.o(.text);
        *libc.a:wsetup.o(.text);
        *libc.a:dtoa.o(.text);
        *libc.a:fflush.o(.text);
        *libc.a:findfp.o(.text);
        *libc.a:freer.o(.text);
        *libc.a:mtrim.o(.text);
        *libc.a:fvwrite.o(.text);
        *libc.a:fwalk.o(.text);
        *libc.a:locale.o(.text);
        *libc.a:makebuf.o(.text);
        *libc.a:mallocr.o(.text);
        *libc.a:mbtowc_r.o(.text);
        *libc.a:memchr.o(.text);
        *libc.a:memcpy.o(.text);
        *libc.a:memmove.o(.text);
        *libc.a:memset.o(.text);
        *libc.a:mlock.o(.text);
        *libc.a:mprec.o(.text);
        *libc.a:s_isinf.o(.text);
        *libc.a:s_isnan.o(.text);
        *libc.a:sbrkr.o(.text);
        *libc.a:stdio.o(.text);
        *libc.a:strcmp.o(.text);
        *libc.a:strlen.o(.text);
        *libc.a:syscalls.o(.text);
        *libc.a:writer.o(.text);
        *libc.a:callocr.o(.text);
        *libc.a:closer.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:fstatr.o(.text);
        *libc.a:libcfunc.o(.text);
        *libc.a:lseekr.o(.text);
        *libc.a:readr.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libgcc.a:dp-bit.o(.text);
        *libgcc.a:fp-bit.o(.text);
        *libgcc.a:_lshrdi3.o(.text);
        *libgcc.a:_muldi3.o(.text);
        *libgcc.a:_negdi2.o(.text);
        data/data.o(.data);
        *libc.a:vfprintf.o(.rodata);
        *libc.a:dtoa.o(.rodata);
        data/data.o(.data.2007C44);
        *libc.a:locale.o(.rodata);
        *libc.a:mprec.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        data/data.o(.data.2007DD0);
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gIntrTable = .;
        . = 0x00000040; gUnk_03000040 = .;
        . = 0x00000044; *libc.a:impure.o(.data);
        . = ALIGN(4); *libc.a:locale.o(.data);
        . = ALIGN(8); *libc.a:mallocr.o(.data);
        . = 0x00000790; gUnk_03000790 = .;
        . = 0x00000898;
        . = ALIGN(8); *libc.a:syscalls.o(.bss);
        . = ALIGN(8); *libgcc.a:dp-bit.o(.bss);
        . = ALIGN(8); *libgcc.a:fp-bit.o(.bss);
        . = ALIGN(8);  gUnk_03000970 = .;
        . = 0x00000978; gUnk_03000978 = .;
        . = 0x000009B8; gUnk_030009B8 = .;
        . = 0x00001138; gUnk_03001138 = .;
        . = 0x00001178; gUnk_03001178 = .;
        . = 0x000011B8; gUnk_030011B8 = .;
        . = 0x000019D4; *libc.a:sbrkr.o(COMMON);
        . = 0x000019D8; end = .;
        . = 0x00007D00; gUnk_03007D00 = .;
        . = 0x00008000;
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
