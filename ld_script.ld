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
        src/sub_80031B8.o(.text);               /* rodata 0801915C */
        src/sub_800326C.arm.o(.text);           /* rodata none */
        src/sub_8003374.o(.text);               /* rodata 08019178 */
        src/sub_8003C88.arm.o(.text);           /* rodata 08019198 */
        src/sub_8003DF4.o(.text);               /* rodata 08019198 */
        src/sub_8004A90.o(.text);               /* rodata 080194D8 */
        src/sub_80055D4.o(.text);               /* rodata 080195A0 */
        src/sub_8006750.o(.text);               /* rodata 0801967C */
        src/sub_8006FB0.o(.text);               /* rodata 08019738 */
        src/sub_8007704.o(.text);               /* rodata 08019790 */
        src/sub_8007C34.o(.text);               /* rodata 08019804 */
        src/sub_8007F0C.o(.text);               /* rodata 08019838 */
                                                /* rodata 08019864 */
        src/sub_8008118.o(.text);               /* rodata 08077884 */
        src/sub_8008ADC.o(.text);               /* rodata 08077898 */
        src/sub_8008FB4.o(.text);               /* rodata 080778B0 */
        src/sub_800925C.arm.o(.text);           /* rodata none */
        asm/sub_8009308.o(.text);               /* rodata 080778DC */
        asm/sub_800A9D4.o(.text);               /* rodata 0807A8E0 */
        src/multiboot_test.o(.text);            /* rodata 0807A8EC */
        asm/sub_800B2EC.o(.text);               /* rodata none */
        asm/sub_800B724.o(.text);               /* rodata 0807AA4C */
        asm/sub_800C04C.o(.text);               /* rodata 08083088 */
        asm/sub_800C2C8.o(.text);               /* rodata 0808317C */
        asm/sub_800C3C8.o(.text);               /* rodata 0808322C */
        asm/sub_800CD3C.o(.text);               /* rodata 08083340 */
        asm/sub_800DA4C.o(.text);               /* rodata 08100C1C */
        asm/sub_800E6E8.o(.text);               /* rodata 08100C7C */
        asm/sub_800E710.o(.text);               /* rodata 08101884 */
        src/sub_800E9C0.o(.text);               /* rodata 08101A60 */
        src/sub_800EC50.o(.text);               /* rodata 08101C2C */
        src/interrupt_handler.arm.o(.text);     /* rodata none */
        asm/sub_800F150.o(.text);               /* rodata none? */
        asm/unknown_lib.o(.text);               /* rodata none? */
        asm/m4a.o(.text);                       /* rodata none? */
        src/multiboot.o(.text);                 /* rodata none */
        src/svc.o(.text);                       /* rodata none */
        asm/AgbEeprom.o(.text);                 /* rodata 08141DFC */
        
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);

        *libc.a:memcpy.o(.text);
        *libc.a:memset.o(.text);
        *libc.a:sprintf.o(.text);
        *libc.a:strcmp.o(.text);
        *libc.a:strlen.o(.text);
        *libc.a:vfprintf.o(.text);
        *libc.a:wsetup.o(.text);
        *libc.a:dtoa.o(.text);
        *libc.a:fflush.o(.text);
        *libc.a:findfp.o(.text);
        *libc.a:freer.o(.text);
        *libc.a:fvwrite.o(.text);
        *libc.a:fwalk.o(.text);
        *libc.a:locale.o(.text);
        *libc.a:makebuf.o(.text);
        *libc.a:mallocr.o(.text);
        *libc.a:mbtowc_r.o(.text);
        *libc.a:memchr.o(.text);
        *libc.a:memmove.o(.text);
        *libc.a:mlock.o(.text);
        *libc.a:mprec.o(.text);
        *libc.a:s_isinf.o(.text);
        *libc.a:s_isnan.o(.text);
        *libc.a:sbrkr.o(.text);
        *libc.a:stdio.o(.text);
        *libc.a:syscalls.o(.text);
        *libc.a:writer.o(.text);
        *libc.a:callocr.o(.text);
        *libc.a:closer.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:fstatr.o(.text);
        *libc.a:libcfunc.o(.text);
        *libc.a:lseekr.o(.text);
        *libc.a:readr.o(.text);

        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:dp-bit.o(.text);
        *libgcc.a:fp-bit.o(.text);
        *libgcc.a:_lshrdi3.o(.text);
        *libgcc.a:_muldi3.o(.text);
        *libgcc.a:_negdi2.o(.text);
        
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
        src/sub_80031B8.o(.rodata);               /* rodata 0801915C */
        src/sub_8003374.o(.rodata);               /* rodata 08019178 */
        src/sub_8003DF4.o(.rodata);               /* rodata 08019198 */
        src/sub_8004A90.o(.rodata);               /* rodata 080194D8 */
        src/sub_80055D4.o(.rodata);               /* rodata 080195A0 */
        src/sub_8006750.o(.rodata);               /* rodata 0801967C */
        src/sub_8006FB0.o(.rodata);               /* rodata 08019738 */
        src/sub_8007704.o(.rodata);               /* rodata 08019790 */
        src/sub_8007C34.o(.rodata);               /* rodata 08019804 */
        src/sub_8007F0C.o(.rodata);               /* rodata 08019838 */
        data/rodata_08019864.o(.rodata);          /* rodata 08019864 */
        src/sub_8008118.o(.rodata);               /* rodata 08077884 */
        src/sub_8008ADC.o(.rodata);               /* rodata 08077898 */
        src/sub_8008FB4.o(.rodata);               /* rodata 080778B0 */
        src/sub_800925C.arm.o(.rodata);           /* rodata none */
        data/sub_8009308.o(.rodata);              /* rodata 080778DC */
        data/sub_800A9D4.o(.rodata);              /* rodata 0807A8E0 */
        src/multiboot_test.o(.rodata);            /* rodata 0807A8EC */
        data/sub_800B724.o(.rodata);              /* rodata 0807AA4C */
        data/sub_800C04C.o(.rodata);              /* rodata 08083088 */
        data/sub_800C2C8.o(.rodata);              /* rodata 0808317C */
        data/sub_800C3C8.o(.rodata);              /* rodata 0808322C */
        data/sub_800CD3C.o(.rodata);              /* rodata 08083340 */
        data/sub_800DA4C.o(.rodata);              /* rodata 08100C1C */
        data/sub_800E6E8.o(.rodata);              /* rodata 08100C7C */
        data/sub_800E710.o(.rodata);              /* rodata 08101884 */
        data/sub_800E9C0.o(.rodata);              /* rodata 08101A60 */
        src/sub_800EC50.o(.rodata);               /* rodata 08101C2C */
        data/sub_800EA20.o(.rodata);              /* rodata 08101C48 */
        data/m4a.o(.rodata);                      /* rodata 08106F88 */
        src/interrupt_handler.arm.o(.rodata);     /* rodata none */
        asm/sub_800F150.o(.rodata);               /* rodata none? */
        asm/unknown_lib.o(.rodata);               /* rodata none? */
        asm/m4a.o(.rodata);                       /* rodata none? */
        data/AgbEeprom.o(.rodata);                /* rodata 08141DFC */

        /* Read Only Data */
        *libc.a:memcpy.o(.rodata);
        *libc.a:memset.o(.rodata);
        *libc.a:sprintf.o(.rodata);
        *libc.a:strcmp.o(.rodata);
        *libc.a:strlen.o(.rodata);
        *libc.a:vfprintf.o(.rodata);
        *libc.a:wsetup.o(.rodata);
        *libc.a:dtoa.o(.rodata);
        *libc.a:impure.o(.rodata);
        *libc.a:fflush.o(.rodata);
        *libc.a:findfp.o(.rodata);
        *libc.a:freer.o(.rodata);
        *libc.a:fvwrite.o(.rodata);
        *libc.a:fwalk.o(.rodata);
        *libc.a:locale.o(.rodata);
        *libc.a:makebuf.o(.rodata);
        *libc.a:mallocr.o(.rodata);
        *libc.a:mbtowc_r.o(.rodata);
        *libc.a:memchr.o(.rodata);
        *libc.a:memmove.o(.rodata);
        *libc.a:mlock.o(.rodata);
        *libc.a:mprec.o(.rodata);
        *libc.a:s_isinf.o(.rodata);
        *libc.a:isnan.o(.rodata);
        *libc.a:sbrk.o(.rodata);
        *libc.a:stdio.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        *libc.a:writer.o(.rodata);
        *libc.a:callocr.o(.rodata);
        *libc.a:closer.o(.rodata);
        *libc.a:errno.o(.rodata);
        *libc.a:fstatr.o(.rodata);
        *libc.a:libcfunc.o(.rodata);
        *libc.a:lseekr.o(.rodata);
        *libc.a:readr.o(.rodata);
    } = 0

    . = 0x081421A0;
    __data_rom__ = .;
    DATA :
	ALIGN(4)
    {
        /* Data */
        src/aging_main.o(.data);                /* rodata 0801829C */
        src/sub_8000AD4.o(.data);               /* rodata 08018448 */
        src/sub_8001AFC.o(.data);               /* rodata 08018988 */
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
