#include "gba/gba.h"
#include "definitions.h"

void sub_8004A90(u32 target)
{
    if ( gUnknown_080194D8[target].num == gUnknown_03001730 )
    {
        gUnknown_080194D8[target].handler();
    }
    else
    {
        sub_800465C();
        switch(gUnknown_080194D8[target].num)
        {
            case 0:
                sub_8004DF0();
                gUnknown_03001730 = 0;
                break;
            case 1:
                sub_8005084();
                gUnknown_03001730 = 1;
                break;
            case 2:
                sub_80053C8();
                gUnknown_03001730 = 2;
                break;
        }
        gUnknown_080194D8[target].handler();
    }
}

void sub_8004B40()
{
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_1D_MAP;
}
