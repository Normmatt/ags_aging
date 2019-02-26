OUTPUT_ARCH(arm)

gNumMusicPlayers = 4;

SECTIONS
{
    . = 0x02000000;
    EWRAM (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_ewram.txt"
    }

    . = 0x03000000;
    IWRAM (NOLOAD) :
    ALIGN(4)
    {
        __data_start__ = ABSOLUTE(.);
        INCLUDE "sym_data.txt"
        __data_end__  = ABSOLUTE(.);
        INCLUDE "sym_iwram.txt"
    }

    __data_size__ = __data_end__ - __data_start__;

	. = 0x08000000;
    ROM : SUBALIGN(0)
	{
		asm/crt0.o(.text);
        . = 0x00000118;
        src/main.o(.text);                      /* rodata 08018098 */
        src/sub_8000200.o(.text);               /* rodata 0801809C */
        src/sub_800028C.o(.text);               /* rodata 080180BC */
        src/sub_8000370.o(.text);               /* rodata 08018140 */
        src/aging_main.o(.text);                /* rodata 0801829C */
        src/sub_800060C.o(.text);               /* rodata 080182D8 */
        src/sub_8000684.o(.text);               /* rodata 08018308 */
        src/selftest_main.o(.text);             /* rodata 08018348 */
        src/sub_800081C.o(.text);               /* rodata 08018384 */
        src/sub_800095C.o(.text);               /* rodata 080183EC */
        src/sub_8000A04.o(.text);               /* rodata 08018408 */
        src/sub_8000AD4.o(.text);               /* rodata 08018448 */
        src/sub_8000CF4.o(.text);               /* rodata 08018718 */
        src/sub_8000E14.o(.text);               /* rodata 0801875C */
        src/sub_80012A4.o(.text);               /* rodata 080187B0 */
        src/sub_80014B0.o(.text);               /* rodata 080187F0 */
        src/sub_8001888.o(.text);               /* rodata 0801885C */
        src/sub_8001AFC.o(.text);               /* rodata 08018988 */
        src/sub_8001F80.o(.text);               /* rodata 08019054 */
        src/sub_8001FA8.o(.text);               /* rodata 08019064 */
        src/sub_8002024.o(.text);               /* rodata 0801908C */
        src/sub_80020A0.o(.text);               /* rodata 080190B0 */
        src/sub_8002488.o(.text);               /* rodata 080190D8 */
        src/sub_8002CAC.o(.text);               /* rodata 080190F0 */
        asm/sub_80031B8.o(.text);               /* rodata 0801915C */
        asm/sub_8003C88.arm.o(.text);           /* rodata 08019198 */
        asm/sub_8003DF4.o(.text);               /* rodata 080194D8 */
        asm/sub_80055D4.o(.text);               /* rodata 080195A0 */
        asm/sub_8006750.o(.text);               /* rodata 0801967C */
        asm/sub_8006FB0.o(.text);               /* rodata 08019738 */
        asm/sub_8007704.o(.text);               /* rodata 08019790 */
        asm/sub_8007C34.o(.text);               /* rodata 08019804 */
        asm/sub_8007F0C.o(.text);               /* rodata 08019838 */
        asm/sub_8008118.o(.text);               /* rodata 08019864 */
        asm/sub_8008ADC.o(.text);               /* rodata 08077898 */
        asm/sub_8008FB4.o(.text);               /* rodata 080778B0 */
        asm/sub_8009240.o(.text);               /* rodata none */
        asm/sub_8009308.o(.text);               /* rodata 080778DC */
        asm/sub_800A9D4.o(.text);               /* rodata 0807A8E0 */
        asm/sub_800B0A0.o(.text);               /* rodata 0807A8EC */
        asm/sub_800B724.o(.text);               /* rodata 0807AA4C */
        asm/sub_800C04C.o(.text);               /* rodata 08083088 */
        asm/sub_800C2C8.o(.text);               /* rodata 0808317C */
        asm/sub_800C3C8.o(.text);               /* rodata 0808322C */
        asm/sub_800CD3C.o(.text);               /* rodata 08083340 */
        asm/sub_800DA4C.o(.text);               /* rodata 08100C1C */
        asm/sub_800E6E8.o(.text);               /* rodata 08100C7C */
        asm/sub_800E710.o(.text);               /* rodata 08101884 */
        asm/sub_800E9C0.o(.text);               /* rodata 08101A60 */
        asm/sub_800EC50.o(.text);               /* rodata 08101C2C */
        asm/interrupt_handler.arm.o(.text);     /* rodata none */
        asm/sub_800F150.o(.text);               /* rodata none? */
        asm/unknown_lib.o(.text);               /* rodata none? */
        asm/m4a.o(.text);                       /* rodata none? */
        asm/unknown_lib_2.o(.text);             /* rodata none? */
        asm/svc.o(.text);                       /* rodata none? */
        asm/AgbEeprom.o(.text);                 /* rodata 08141DFC */
        
        tools/agbcc/lib/libgcc.a:_call_via_rX.o(.text);
        tools/agbcc/lib/libgcc.a:_divsi3.o(.text);
        tools/agbcc/lib/libgcc.a:_dvmd_tls.o(.text);
        tools/agbcc/lib/libgcc.a:_modsi3.o(.text);
        tools/agbcc/lib/libgcc.a:_umodsi3.o(.text);

        tools/agbcc/lib/libc.a:memcpy.o(.text);
        tools/agbcc/lib/libc.a:memset.o(.text);
        tools/agbcc/lib/libc.a:sprintf.o(.text);
        tools/agbcc/lib/libc.a:strcmp.o(.text);
        tools/agbcc/lib/libc.a:strlen.o(.text);
        tools/agbcc/lib/libc.a:vfprintf.o(.text);
        tools/agbcc/lib/libc.a:wsetup.o(.text);
        tools/agbcc/lib/libc.a:dtoa.o(.text);
        tools/agbcc/lib/libc.a:fflush.o(.text);
        tools/agbcc/lib/libc.a:findfp.o(.text);
        tools/agbcc/lib/libc.a:freer.o(.text);
        tools/agbcc/lib/libc.a:fvwrite.o(.text);
        tools/agbcc/lib/libc.a:fwalk.o(.text);
        tools/agbcc/lib/libc.a:locale.o(.text);
        tools/agbcc/lib/libc.a:makebuf.o(.text);
        tools/agbcc/lib/libc.a:mallocr.o(.text);
        tools/agbcc/lib/libc.a:mbtowc_r.o(.text);
        tools/agbcc/lib/libc.a:memchr.o(.text);
        tools/agbcc/lib/libc.a:memmove.o(.text);
        tools/agbcc/lib/libc.a:mlock.o(.text);
        tools/agbcc/lib/libc.a:mprec.o(.text);
        tools/agbcc/lib/libc.a:s_isinf.o(.text);
        tools/agbcc/lib/libc.a:s_isnan.o(.text);
        tools/agbcc/lib/libc.a:sbrkr.o(.text);
        tools/agbcc/lib/libc.a:stdio.o(.text);
        tools/agbcc/lib/libc.a:syscalls.o(.text);
        tools/agbcc/lib/libc.a:writer.o(.text);
        tools/agbcc/lib/libc.a:callocr.o(.text);
        tools/agbcc/lib/libc.a:closer.o(.text);
        tools/agbcc/lib/libc.a:errno.o(.text);
        tools/agbcc/lib/libc.a:fstatr.o(.text);
        tools/agbcc/lib/libc.a:libcfunc.o(.text);
        tools/agbcc/lib/libc.a:lseekr.o(.text);
        tools/agbcc/lib/libc.a:readr.o(.text);

        tools/agbcc/lib/libgcc.a:_udivsi3.o(.text);
        tools/agbcc/lib/libgcc.a:dp-bit.o(.text);
        tools/agbcc/lib/libgcc.a:fp-bit.o(.text);
        tools/agbcc/lib/libgcc.a:_lshrdi3.o(.text);
        tools/agbcc/lib/libgcc.a:_muldi3.o(.text);
        tools/agbcc/lib/libgcc.a:_negdi2.o(.text);
        
        /* Read Only Data */
        /* src/main.o(.rodata); */
	} = 0
    
    . = 0x08018098;
    RODATA :
	ALIGN(4)
    {
        /* Read Only Data */
        src/main.o(.rodata);                      /* rodata 08018098 */
        src/sub_8000200.o(.rodata);               /* rodata 0801809C */
        src/sub_800028C.o(.rodata);               /* rodata 080180BC */
        src/sub_8000370.o(.rodata);               /* rodata 08018140 */ 
        src/aging_main.o(.rodata);                /* rodata 0801829C */
        src/sub_800060C.o(.rodata);               /* rodata 080182D8 */
        src/sub_8000684.o(.rodata);               /* rodata 08018308 */
        src/selftest_main.o(.rodata);             /* rodata 08018348 */
        src/sub_800081C.o(.rodata);               /* rodata 08018384 */
        src/sub_800095C.o(.rodata);               /* rodata 080183EC */
        src/sub_8000A04.o(.rodata);               /* rodata 08018408 */
        src/sub_8000AD4.o(.rodata);               /* rodata 08018448 */
        src/sub_8000CF4.o(.rodata);               /* rodata 08018718 */
        src/sub_8000E14.o(.rodata);               /* rodata 0801875C */
        src/sub_80012A4.o(.rodata);               /* rodata 080187B0 */
        src/sub_80014B0.o(.rodata);               /* rodata 080187F0 */
        src/sub_8001888.o(.rodata);               /* rodata 0801885C */
        src/sub_8001AFC.o(.rodata);               /* rodata 08018988 */
        src/sub_8001F80.o(.rodata);               /* rodata 08019054 */
        src/sub_8001FA8.o(.rodata);               /* rodata 08019064 */
        src/sub_8002024.o(.rodata);               /* rodata 0801908C */
        src/sub_80020A0.o(.rodata);               /* rodata 080190B0 */
        src/sub_8002488.o(.rodata);               /* rodata 080190D8 */
        src/sub_8002CAC.o(.rodata);               /* rodata 0801915C */
    } = 0
    
    . = 0x0801915C;
    RODATA1 :
	ALIGN(4)
    {
        /* Read Only Data */
        data/data.o(.rodata);
    } = 0
    
    RODATA2 :
	ALIGN(4)
    {
        /* Read Only Data */
        tools/agbcc/lib/libc.a:memcpy.o(.rodata);
        tools/agbcc/lib/libc.a:memset.o(.rodata);
        tools/agbcc/lib/libc.a:sprintf.o(.rodata);
        tools/agbcc/lib/libc.a:strcmp.o(.rodata);
        tools/agbcc/lib/libc.a:strlen.o(.rodata);
        tools/agbcc/lib/libc.a:vfprintf.o(.rodata);
        tools/agbcc/lib/libc.a:wsetup.o(.rodata);
        tools/agbcc/lib/libc.a:dtoa.o(.rodata);
        tools/agbcc/lib/libc.a:impure.o(.rodata);
        tools/agbcc/lib/libc.a:fflush.o(.rodata);
        tools/agbcc/lib/libc.a:findfp.o(.rodata);
        tools/agbcc/lib/libc.a:freer.o(.rodata);
        tools/agbcc/lib/libc.a:fvwrite.o(.rodata);
        tools/agbcc/lib/libc.a:fwalk.o(.rodata);
        tools/agbcc/lib/libc.a:locale.o(.rodata);
        tools/agbcc/lib/libc.a:makebuf.o(.rodata);
        tools/agbcc/lib/libc.a:mallocr.o(.rodata);
        tools/agbcc/lib/libc.a:mbtowc_r.o(.rodata);
        tools/agbcc/lib/libc.a:memchr.o(.rodata);
        tools/agbcc/lib/libc.a:memmove.o(.rodata);
        tools/agbcc/lib/libc.a:mlock.o(.rodata);
        tools/agbcc/lib/libc.a:mprec.o(.rodata);
        tools/agbcc/lib/libc.a:s_isinf.o(.rodata);
        tools/agbcc/lib/libc.a:isnan.o(.rodata);
        tools/agbcc/lib/libc.a:sbrk.o(.rodata);
        tools/agbcc/lib/libc.a:stdio.o(.rodata);
        tools/agbcc/lib/libc.a:syscalls.o(.rodata);
        tools/agbcc/lib/libc.a:writer.o(.rodata);
        tools/agbcc/lib/libc.a:callocr.o(.rodata);
        tools/agbcc/lib/libc.a:closer.o(.rodata);
        tools/agbcc/lib/libc.a:errno.o(.rodata);
        tools/agbcc/lib/libc.a:fstatr.o(.rodata);
        tools/agbcc/lib/libc.a:libcfunc.o(.rodata);
        tools/agbcc/lib/libc.a:lseekr.o(.rodata);
        tools/agbcc/lib/libc.a:readr.o(.rodata);
    } = 0

    . = 0x081421A0;
    __data_rom__ = .;
    DATA :
	ALIGN(4)
    {
        /* Data */
        src/aging_main.o(.data);                /* rodata 0801829C */
        src/sub_8000AD4.o(.data);               /* rodata 08018448 */
        src/sub_8001AFC.o(.text);               /* rodata 08018988 */
    } = 0
    
    . = 0x081421A0;
    DATA2 :
	ALIGN(4)
    {
        /* Data */
        data/data2.o(.data);
    } = 0
    
    /* DWARF debug sections.
       Symbols in the DWARF debugging sections are relative to the beginning
       of the section so we begin them at 0.  */

    /* DWARF 1 */
    .debug          0 : { *(.debug) }
    .line           0 : { *(.line) }

    /* GNU DWARF 1 extensions */
    .debug_srcinfo  0 : { *(.debug_srcinfo) }
    .debug_sfnames  0 : { *(.debug_sfnames) }

    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }

    /* DWARF 2 */
    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
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
