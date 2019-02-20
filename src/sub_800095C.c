#include "gba/gba.h"
#include "definitions.h"

void sub_800095C()
{
    sInterruptSetup v0;         // [sp+0h]
    u16 v1;                     // [sp+44h]

    SaveAndDisableInterruptHandlers(&v0, 1u, 1u);
    SetInterruptHandler(1u, j_UpdateTilemaps);
    REG_DISPSTAT = 8;
    SetIE(1u);
    SetIME(1u);
    DrawHeading("KEY INPUT TEST");
    DrawInputButtons(gUnknown_03002BB0.isAGS);
    while ( 1 )
    {
        WaitForInterrupt(1u);
        v1 = ~REG_KEYINPUT & 0x3FF;
        sub_800C2C8(gUnknown_03002BB0.isAGS, v1);
    }
    RestoreInterruptHandlers(&v0);
}

void j_UpdateTilemaps()
{
    UpdateTilemaps();
}
