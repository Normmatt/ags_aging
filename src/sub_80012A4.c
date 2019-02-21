#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

void sub_80012A4(struct_80011C4 *a1)
{
    struct_3001B40_windowinfo windowinfo = {        // [sp+0h]
        .x_offset = 2,
        .y_offset = 2,
        .max_width = 26,
        .max_height = 18,
        .wrap_text = 0,
    };
    struct_3001B40_windowinfo v0;                   // [sp+18h]
    s32 i;                                          // [sp+2Ch]

    v0 = gUnknown_03001B40.windowinfo;
    gUnknown_03001B40.windowinfo = windowinfo;
    DrawString(0, 0, "\x0C");
    gUnknown_03001B40.x = 0;
    gUnknown_03001B40.y = 0;
    DrawString(0, 0, a1->menu_option[a1->initial_idx].name);
    gUnknown_03001B40.x = 0;
    gUnknown_03001B40.y = 1;
    for ( i = 0; i < strlen(a1->menu_option[a1->initial_idx].name); ++i )
        DrawString(2, 0, "~");
    for ( i = 0; i < a1->num_entries; ++i )
    {
        gUnknown_03001B40.x = 2;
        gUnknown_03001B40.y = 2 * i + 2;
        DrawString(0, 4, a1->menu_option[a1->submenu_indexes[i]].name);
        if ( !a1->menu_option[a1->submenu_indexes[i]].level )
            DrawString(1, 5, " R");
    }
    gUnknown_03001B40.x = 0;
    gUnknown_03001B40.y = 2 * a1->selected_idx + 2;
    DrawString(1, 1, "C");
    gUnknown_03001B40.windowinfo = v0;
}

void testmain(u32 option)
{
    switch ( option )
    {
        case 1u:
            testprogramMain();
            return;
        case 0u:
            sub_8001AFC();
            return;
        case 2u:
            sub_80003E8();
            break;
        case 3u:
            sub_8000430();
            break;
        case 4u:
            agingMain();
            return;
        case 5u:
            selftestMain();
            break;
        case 6u:
            sub_800095C();
            break;
    }
}
