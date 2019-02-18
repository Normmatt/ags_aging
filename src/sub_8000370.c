#include "gba/gba.h"
#include "definitions.h"

const menuOption menuOptions[] = {
    {0, "MENU", NULL},
    {1, "CONFIGURATION", &sub_80014B0},
    {0, "TEST PROGRAM", NULL},
        {1, "LCD UNIT CHECKER", &sub_80003E8},
        {1, "FLICKER ADJUSTER", &sub_8000430},
        {1, "AGING CARTRIDGE", &agingMain},
        {1, "SELF TEST CARTRIDGE", &selftestMain},
        {2, NULL, NULL},
    {0, "OPTION PROGRAM", NULL},
        {1, "KEY INPUT TEST", &sub_800095C},
        {2, NULL, NULL},
    {2, NULL, NULL},
};

void testprogramMain()
{
    struct sInterruptSetup v0;  // [sp+0h]

    sub_800D790(&v0, 1u, 1u);
    REG_DISPSTAT = 8;
    if ( !gUnknown_03002BB0.isAGS )
        DrawHeading("AGB TEST PROGRAM");
    else
        DrawHeading("AGS TEST PROGRAM");
    sub_8000FF0(menuOptions, 0);
    testmain(gUnknown_03002BB0.default_option);
    sub_800D854(&v0);
    while ( 1 );
}

void sub_80003E8()
{
    sInterruptSetup v0;     // [sp+0h]
    struct_v5 v1;           // [sp+44h]
    u32 v2[8];              // [sp+64h]

    sub_800D790(&v0, 1u, 1u);
    REG_DISPSTAT = 8;
    v1.dword0 = 3;
    v1.field4.dword8 = 0;
    sub_8003DF4(&v1, v2);
    sub_800D854(&v0);
}

void sub_8000430()
{
    sInterruptSetup v0;     // [sp+0h]
    struct_v5 v1;           // [sp+44h]
    u32 v2[8];              // [sp+64h]

    sub_800D790(&v0, 1u, 1u);
    REG_DISPSTAT = 8;
    v1.dword0 = 4;
    v1.field4.dword8 = 0;
    sub_8003DF4(&v1, v2);
    sub_800D854(&v0);
}
