#include "gba/gba.h"
#include "definitions.h"

static const struct_3001B40_windowinfo windowinfo = {
    .x_offset = 0,
    .y_offset = 1,
    .max_width = 30,
    .max_height = 19,
    .wrap_text = 0,
};

void DrawHeading(char *a1)
{
    REG_DISPCNT |= 0x80u;
    sub_800DA4C();
    sub_800E710(1);
    sub_800E9C0(2);
    sub_800EA20();
    gUnknown_03001B40.bg1_tile_number = 0x405F;
    DrawString(0, 3, "                              ");
    gUnknown_03001B40.x = 1;
    gUnknown_03001B40.y = 0;
    DrawString(0, 3, a1);
    gUnknown_03001B40.bg1_tile_number = 0;
    gUnknown_03001B40.windowinfo = windowinfo;
    UpdateTilemaps();
    REG_DISPCNT &= 0xFF7Fu;
}