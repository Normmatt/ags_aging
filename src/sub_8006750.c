#include "gba/gba.h"
#include "definitions.h"

const sDisplayTest2 gUnknown_0801967C[9] = {
    { sub_80067D0,    6},
    { sub_80068A8,    6},
    { sub_8006980,    6},
    { sub_8006A58,    6},
    { sub_8006B38,    6},
    { sub_8006C20,    6},
    { sub_8006D00,    6},
    { sub_8006DE0,    6},
    { sub_8006EC8,    6},
};

void sub_8006750(u32 target)
{
    if ( gUnknown_0801967C[target].num == gUnknown_03001730 )
    {
        gUnknown_0801967C[target].handler();
    }
    else
    {
        sub_800465C();
        switch(gUnknown_0801967C[target].num)
        {
            case 6:
                sub_8006FB0();
                gUnknown_03001730 = 6;
                break;
        }
        gUnknown_0801967C[target].handler();
    }
}

void sub_80067D0()
{
    gUnknown_03001740[0].mosaic=0;

    gUnknown_03001740[1].y=90;
    gUnknown_03001740[1].x=64;
    gUnknown_03001740[1].affineMode=0;
    gUnknown_03001740[1].unused_9=0;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_03000390, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003B8, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_80068A8()
{
    gUnknown_03001740[0].mosaic=0;

    gUnknown_03001740[1].y=90;
    gUnknown_03001740[1].x=64;
    gUnknown_03001740[1].affineMode=0;
    gUnknown_03001740[1].unused_9=0;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003B8, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_8006980()
{
    gUnknown_03001740[0].mosaic=0;

    gUnknown_03001740[1].y=90;
    gUnknown_03001740[1].x=64;
    gUnknown_03001740[1].affineMode=0;
    gUnknown_03001740[1].unused_9=0;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003CC, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_8006A58()
{
    gUnknown_03001740[0].mosaic=0;

    gUnknown_03001740[1].y=90;
    gUnknown_03001740[1].x=64;
    gUnknown_03001740[1].affineMode=1;
    gUnknown_03001740[1].unused_9=0;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003CC, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_8006B38()
{
    gUnknown_03001740[0].mosaic=0;

    gUnknown_03001740[1].y=90;
    gUnknown_03001740[1].x=64;
    gUnknown_03001740[1].affineMode=1;
    gUnknown_03001740[1].unused_9=1;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003CC, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_8006C20()
{
    gUnknown_03001740[0].mosaic=0;

    gUnknown_03001740[1].y=58;
    gUnknown_03001740[1].x=32;
    gUnknown_03001740[1].affineMode=3;
    gUnknown_03001740[1].unused_9=1;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003CC, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_8006D00()
{
    gUnknown_03001740[0].mosaic=1;

    gUnknown_03001740[1].y=58;
    gUnknown_03001740[1].x=32;
    gUnknown_03001740[1].affineMode=3;
    gUnknown_03001740[1].unused_9=1;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003CC, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_8006DE0()
{
    gUnknown_03001740[0].mosaic=1;

    gUnknown_03001740[1].y=58;
    gUnknown_03001740[1].x=32;
    gUnknown_03001740[1].affineMode=2;
    gUnknown_03001740[1].unused_9=1;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003CC, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT &= 0xDFFF;
    REG_DISPCNT = 0x1F42;
}

void sub_8006EC8()
{
    gUnknown_03001740[0].mosaic=1;

    gUnknown_03001740[1].y=58;
    gUnknown_03001740[1].x=32;
    gUnknown_03001740[1].affineMode=2;
    gUnknown_03001740[1].unused_9=1;
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    BgAffineSet(&gUnknown_030003A4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    BgAffineSet(&gUnknown_030003CC, (struct BgAffineDstData *)&REG_BG3PA, 1);
    REG_BG2CNT |= 0x2000;
    REG_DISPCNT = 0x1F42;
}