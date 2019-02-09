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
        INCLUDE "sym_iwram.txt"
    }
    
	. = 0x08000000;
    ROM : SUBALIGN(0)
	{
		asm/crt0.o(.text);
        . = 0x00000118;
        src/main.o(.text);              /* rodata 08018098 */
        src/sub_8000200.o(.text);       /* rodata 0801809C */
        asm/sub_800028C.o(.text);       /* rodata 080180BC */
        asm/sub_8000370.o(.text);       /* rodata 08018140 */
        asm/sub_8000478.o(.text);       /* rodata 0801829C */
        asm/sub_800060C.o(.text);       /* rodata 080182D8 */
        asm/sub_8000684.o(.text);       /* rodata 08018308 */
        asm/sub_8000798.o(.text);       /* rodata 08018348 */
        asm/sub_800081C.o(.text);       /* rodata 08018384 */
        asm/sub_800095C.o(.text);       /* rodata 080183EC */
        asm/sub_8000A04.o(.text);       /* rodata 08018408 */
        asm/sub_8000AD4.o(.text);       /* rodata 08018448 */
        asm/sub_8000CF4.o(.text);       /* rodata 08018718 */
        asm/sub_8000E14.o(.text);       /* rodata 0801875C */
        asm/sub_8000FF0.o(.text);       /* rodata 080187B0 */
        asm/sub_80014B0.o(.text);       /* rodata 080187F0 */
        asm/sub_8001888.o(.text);       /* rodata 0801885C */
        asm/sub_8001AFC.o(.text);       /* rodata 08018988 */
        asm/sub_8001F80.o(.text);       /* rodata 08019054 */
        asm/sub_8001FA8.o(.text);       /* rodata 08019064 */
        asm/sub_8002024.o(.text);       /* rodata 0801908C */
        asm/sub_80020A0.o(.text);       /* rodata 080190B0 */
        asm/sub_80020E8.o(.text);       /* rodata 080190D8 */
        asm/sub_800319C.o(.text);       /* rodata 0801915C */
        asm/sub_8003C88.arm.o(.text);   /* rodata 08019198 */
        asm/sub_8003DF4.o(.text);       /* rodata 080194D8 */
        asm/sub_80055D4.o(.text);       /* rodata 080195A0 */
        asm/sub_8006750.o(.text);       /* rodata 0801967C */
        asm/sub_8006FB0.o(.text);       /* rodata 08019738 */
        asm/sub_8007704.o(.text);       /* rodata 08019790 */
        asm/sub_8007C34.o(.text);       /* rodata 08019804 */
        asm/sub_8007F0C.o(.text);       /* rodata 08019838 */
        asm/sub_8008118.o(.text);       /* rodata 08019864 */
        asm/sub_8008ADC.o(.text);       /* rodata 08077898 */
        asm/sub_8008FB4.o(.text);       /* rodata 080778B0 */
        asm/sub_8009240.o(.text);       /* rodata none */
        asm/sub_8009308.o(.text);       /* rodata 080778DC */
        asm/sub_800A9D4.o(.text);       /* rodata 0807A8E0 */
        asm/sub_800B0A0.o(.text);       /* rodata 0807A8EC */
        asm/sub_800B724.o(.text);       /* rodata 0807AA4C */
        asm/sub_800C04C.o(.text);       /* rodata 08083088 */
        asm/sub_800C2C8.o(.text);       /* rodata 0808317C */
        asm/sub_800C3C8.o(.text);       /* rodata 0808322C */
        /* rodata 08083340 */
        /* rodata 08100C1C */
        /* rodata 08100C7C */
        /* rodata 08101884 */
        /* rodata 08101A60 */
        /* rodata 08101C2C */
        /* rodata 08101C48 */
        asm/code.o(.text);
        
        /* Read Only Data */
        /* src/main.o(.rodata); */
	} = 0
    
    . = 0x08018098;
    RODATA :
	ALIGN(4)
    {
        /* Read Only Data */
        src/main.o(.rodata);              /* rodata 08018098 */
        src/sub_8000200.o(.rodata);       /* rodata 0801809C */
    } = 0
    
    DATA :
	ALIGN(4)
    {
        
        /* Data */
        data/data.o(.data);
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
