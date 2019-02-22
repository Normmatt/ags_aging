#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

void sub_8001888(vu32 a1)
{
    struct_3001B40_windowinfo windowinfo = {        // [sp+0h]
        .x_offset = 2,
        .y_offset = 2,
        .max_width = 26,
        .max_height = 18,
        .wrap_text = 0,
    };
    const char *v8[] = {                            // [sp+18h]
        "CHECKER",
        "MENU",
        "LCD UNIT CHECKER",
        "FLICKER ADJUSTER",
        "AGING CARTRIDGE",
        "SELF TEST CARTRIDGE",
        "KEY INPUT TEST",
    };
    const char *hw_type[] = {                       // [sp+34h]
        "AGB",
        "AGS",
    };
    struct_3001B40_windowinfo v9;                   // [sp+3Ch]
    u32 v11;                                        // [sp+50h]
    char v10[128];                                  // [sp+54h]

    v9 = gUnknown_03001B40.windowinfo;
    gUnknown_03001B40.windowinfo = windowinfo;
    DrawString(0, 0, gUnknown_08018800);
    gUnknown_03001B40.x = 0;
    gUnknown_03001B40.y = 0;
    DrawString(0, 4, "1.TARGET");
    gUnknown_03001B40.x = 1;
    gUnknown_03001B40.y = 1;
    DrawString(1, 5, a1==0 ? "L " : "  ");
    DrawString(0, 4, v8[gUnknown_03002BB0.default_option]);
    DrawString(1, 5, a1==0 ? " R" : "  ");
    gUnknown_03001B40.x = 0;
    gUnknown_03001B40.y = 3;
    DrawString(0, 4, "2.TYPE");
    gUnknown_03001B40.x = 1;
    gUnknown_03001B40.y = 4;
    DrawString(1, 5, a1==1 ? "L " : "  ");
    DrawString(0, 4, hw_type[gUnknown_03002BB0.isAGS]);
    DrawString(1, 5, a1==1 ? " R" : "  ");
    gUnknown_03001B40.x = 0;
    gUnknown_03001B40.y = 6;
    DrawString(0, 4, "3.AGING TIME");
    gUnknown_03001B40.x = 1;
    gUnknown_03001B40.y = 7;
    DrawString(1, 5, a1==2 ? "L " : "  ");
    if ( gUnknown_03002BB0.aging_time )
    {
        sprintf(v10, "%02d:%02d:00", gUnknown_03002BB0.aging_time / 60, gUnknown_03002BB0.aging_time % 60);
        DrawString(0, 4, v10);
    }
    else
    {
        sprintf(v10, "ENDLESS");
        DrawString(0, 4, v10);
    }
    DrawString(1, 5, a1==2 ? " R" : "  ");
    gUnknown_03001B40.windowinfo = v9;
}
