#include "gba/gba.h"
#include "definitions.h"

u32 gUnknown_03000000 = 1;

void agingMain()
{
    sInterruptSetup v0;             // [sp+0h] [bp-90h]
    s32 i;                          // [sp+44h] [bp-4Ch]
    struct_v5 v2;                   // [sp+48h] [bp-48h]
    u32 v3[8];                      // [sp+68h] [bp-28h]

    SaveAndDisableInterruptHandlers(&v0, 1u, 1u);
    REG_DISPSTAT = 8;
    if ( !gUnknown_03002BB0.isAGS )
        DrawHeading("AGB AGING CARTRIDGE");
    else
        DrawHeading("AGS AGING CARTRIDGE");
    EnableAllTests();
    DisableSpecificTestInClass(5u, 0);             // Skip INPUT test 0
    DisableAllTestsInThisClass(4u);                // Skip all COM tests
    if ( RunAllTestClasses() )
        sub_800060C();
    sub_8000684();
    SetIME(0);
    SetInterruptHandler(1u, sub_8008118);
    SetIME(1u);
    REG_TM1CNT = 0;
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;
    REG_TM3CNT = 0x840000;
    REG_TM2CNT = 0x84FFC4;
    REG_TM1CNT = 0x83BFFE;
    EnableAllTests();
    DisableAllTestsInThisClass(2u);                // Skip all TIMER tests
    DisableAllTestsInThisClass(4u);                // Skip all COM tests
    DisableAllTestsInThisClass(5u);                // Skip all INPUT tests
    DisableSpecificTestInClass(6u, 3u);            // Skip INTERRUPT test 3
    while ( 1 )
    {
        v2.dword0 = 2;
        v2.field4.dword8 = 0;
        sub_8003DF4(&v2, v3);
        if ( !gUnknown_03002BB0.isAGS )
            DrawHeading("AGB AGING CARTRIDGE");
        else
            DrawHeading("AGS AGING CARTRIDGE");
        if ( RunAllTestClasses() )
            break;
        for ( i = 0; i <= 119; ++i )
            WaitForInterrupt(1u);
        if ( gUnknown_03002BB0.aging_time && gUnknown_03000000 && REG_TM3CNT_L >= (s32)gUnknown_03002BB0.aging_time )
            sub_8000728();
    }
    REG_TM1CNT = 0;
    sub_800060C();
    RestoreInterruptHandlers(&v0);
}