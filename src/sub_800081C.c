#include "gba/gba.h"
#include "definitions.h"

void DrawFinalTestResult(u32 a1)
{
    char *strings[2] = {
        "TEST PASSED.",
        "TEST FAILED."
    };

    m4aSoundInit();
    if ( !a1 )
    {
        m4aSongNumStart(7);
        gUnknown_03001B40.bg1_tile_number = 0x205F;
    }
    else
    {
        m4aSongNumStart(11);
        gUnknown_03001B40.bg1_tile_number = 0x105F;
    }
    gUnknown_03001B40.x = 2;
    gUnknown_03001B40.y = 15;
    DrawString(0, 3, "                          ");
    gUnknown_03001B40.x = 2;
    gUnknown_03001B40.y = 16;
    DrawString(0, 3, "                          ");
    gUnknown_03001B40.x = 2;
    gUnknown_03001B40.y = 17;
    DrawString(0, 3, "                          ");
    while ( 1 )
    {
        WaitForInterrupt(1u);
        SoundVSync_rev01();
        m4aSoundMain();
        UpdateTilemaps();
        if ( gUnknown_0300045C & 0x20 )
        {
            gUnknown_03001B40.x = 9;
            gUnknown_03001B40.y = 16;
            DrawString(0, 3, a1==0 ? strings[0] : strings[1]);
        }
        else
        { 
            gUnknown_03001B40.x = 9;
            gUnknown_03001B40.y = 16;
            DrawString(0, 3, "            ");
        }
    }

    m4aMPlayAllStop();
    SoundVSyncOff_rev01();
}