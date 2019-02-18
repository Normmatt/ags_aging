#include "gba/gba.h"
#include "definitions.h"

void selftestMain()
{
    sInterruptSetup v0;         // [sp+0h]
    u32 v1;                     // [sp+44h]
    struct_v5 v2;               // [sp+48h]
    u32 v3[8];                  // [sp+68h]

    SaveAndDisableInterruptHandlers(&v0, 1u, 1u);
    REG_DISPSTAT = 8;
    v2.dword0 = 5;
    sub_8003DF4(&v2, v3);
    if ( !gUnknown_03002BB0.isAGS )
        DrawHeading("AGB SELF TEST CARTRIDGE");
    else
        DrawHeading("AGS SELF TEST CARTRIDGE");
    EnableAllTests();
    DisableSpecificTestInClass(5u, 1u);
    v1 = RunAllTestClasses();
    DrawFinalTestResult(v1);
    RestoreInterruptHandlers(&v0);
}