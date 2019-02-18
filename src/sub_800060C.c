#include "gba/gba.h"
#include "definitions.h"

void sub_800060C()
{
    m4aSoundInit();
    m4aSongNumStart(11);
    while ( 1 )
    {
        WaitForInterrupt(1u);
        SoundVSync_rev01();
        m4aSoundMain();
        UpdateTilemaps();
        gUnknown_03001B40.x = 7;
        gUnknown_03001B40.y = 16;
        if ( gUnknown_0300045C & 0x20 )
            DrawString(0, 1, "ERROR OCCURED!!");
        else
            DrawString(0, 1, "               ");
    }

    m4aMPlayAllStop();
    SoundVSyncOff_rev01();
}