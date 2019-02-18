#include "gba/gba.h"
#include "definitions.h"

void sub_800028C()
{
    struct sInterruptSetup v0;      // [sp+0h]

    SaveAndDisableInterruptHandlers(&v0, 1u, 1u);
    REG_DISPSTAT = 8;
    DrawHeading("LOAD CONFIGURATION");
    ReadKey();
    while ( !gUnknown_03000460.Trg )
    {
        WaitForInterrupt(1u);
        UpdateTilemaps();
        ReadKeyPlus();
        if ( gUnknown_0300045C & 0x20 )
        {
            gUnknown_03001B40.x = 7;
            gUnknown_03001B40.y = 8;
            DrawString(0, 1, "CHECK SUM ERROR!");
            gUnknown_03001B40.x = 7;
            gUnknown_03001B40.y = 10;
            DrawString(0, 1, "DEFAULT IS SAVED.");
        }
        else
        {
            gUnknown_03001B40.x = 7;
            gUnknown_03001B40.y = 8;
            DrawString(0, 1, "                ");
            gUnknown_03001B40.x = 7;
            gUnknown_03001B40.y = 10;
            DrawString(0, 1, "                 ");
        }
    }
    RestoreInterruptHandlers(&v0);
}