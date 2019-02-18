#include "gba/gba.h"
#include "definitions.h"

void sub_8000684()
{
    m4aSoundInit();
    WaitForInterrupt(1u);
    SoundVSync_rev01();
    m4aSoundMain();
    m4aSongNumStart(7);
    ReadKey();
    while ( !(gUnknown_03000460.Trg & 8) )
    {
        WaitForInterrupt(1u);
        SoundVSync_rev01();
        m4aSoundMain();
        UpdateTilemaps();
        ReadKeyPlus();
        gUnknown_03001B40.x = 5;
        gUnknown_03001B40.y = 16;
        if ( gUnknown_0300045C & 0x20 )
            DrawString(0, 1, "PUSH START TO AGING");
        else
            DrawString(0, 1, "                   ");
    }
    m4aMPlayAllStop();
    SoundVSyncOff_rev01();
}

void sub_8000728()
{
    sInterruptSetup v6;     // [sp+0h] [bp-50h]
    u16 v7;                 // [sp+44h] [bp-Ch]

    REG_DISPCNT |= 0x80;
    SaveAndDisableInterruptHandlers(&v6, 0, 0x1000u);
    v7 = REG_KEYCNT;
    REG_KEYCNT = 0xC008u;
    SoundBiasReset();
    SystemCall(3);
    SoundBiasSet();
    REG_KEYCNT = v7;
    gUnknown_03000000 = 0;
    RestoreInterruptHandlers(&v6);
}