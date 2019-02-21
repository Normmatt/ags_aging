#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

void DrawTestResults()
{
    struct_3001B40_windowinfo windowinfo = {        // [sp+0h]
        .x_offset = 2,
        .y_offset = 2,
        .max_width = 26,
        .max_height = 14,
        .wrap_text = 0,
    };
    struct_3001B40_windowinfo v0;                   // [sp+14h]
    u32 i;                                          // [sp+28h]
    char v2[128];                                   // [sp+2Ch]

    v0 = gUnknown_03001B40.windowinfo;
    gUnknown_03001B40.windowinfo = windowinfo;
    DrawString(0, 0, "\x0C");
    gUnknown_03001B40.x = 0;
    gUnknown_03001B40.y = 0;
    for ( i = 0; i < NUM_TEST_CLASSES; ++i )
    {
        DrawString(0, 4, "............");
        gUnknown_03001B40.x = 0;
        sprintf(v2, "%s", testClasses[i].name);
        DrawString(0, 4, v2);
        gUnknown_03001B40.x = 12;
        DrawPassFailResult(testClasses[i].testsPtr, testClasses[i].numTests);
    }
    gUnknown_03001B40.windowinfo = v0;
    WaitForInterrupt(1u);
    UpdateTilemaps();
}
