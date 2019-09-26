#include "gba/gba.h"
#include "definitions.h"

const sDisplayTest2 gUnknown_08019790[7] = {
    { sub_8007784,    7},
    { sub_80077D0,    7},
    { sub_800781C,    7},
    { sub_8007868,    7},
    { sub_80078B4,    7},
    { sub_8007904,    7},
    { sub_8007950,    7},
};

void sub_8007704(u32 target)
{
    if ( gUnknown_08019790[target].num == gUnknown_03001730 )
    {
        gUnknown_08019790[target].handler();
    }
    else
    {
        sub_800465C();
        switch(gUnknown_08019790[target].num)
        {
            case 7:
                sub_8007998();
                gUnknown_03001730 = 7;
                break;
        }
        gUnknown_08019790[target].handler();
    }
}

void sub_8007784()
{
    BgAffineSet(&gUnknown_030003E0, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_BG2CNT &= 0xFFBF;
    REG_BLDCNT = 0;
    REG_DISPCNT = 0x443;
}

void sub_80077D0()
{
    BgAffineSet(&gUnknown_030003E0, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_BG2CNT &= 0xFFBF;
    REG_BLDCNT = 0;
    REG_DISPCNT = 0x1443;
}

void sub_800781C()
{
    BgAffineSet(&gUnknown_030003E0, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_BG2CNT &= 0xFFBF;
    REG_BLDCNT = 0xA7;
    REG_DISPCNT = 0x1443;
}

void sub_8007868()
{
    BgAffineSet(&gUnknown_030003E0, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_BG2CNT &= 0xFFBF;
    REG_BLDCNT = 0xE7;
    REG_DISPCNT = 0x1443;
}

void sub_80078B4()
{
    BgAffineSet(&gUnknown_030003E0, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_BG2CNT &= 0xFFBF;
    REG_BLDCNT = 0x450;
    REG_DISPCNT = 0x1443;
}

void sub_8007904()
{
    BgAffineSet(&gUnknown_030003F4, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_BG2CNT &= 0xFFBF;
    REG_BLDCNT = 0;
    REG_DISPCNT = 0x1443;
}

void sub_8007950()
{
    BgAffineSet(&gUnknown_03000408, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_BG2CNT |= 0x40;
    REG_BLDCNT = 0;
    REG_DISPCNT = 0x1443;
}

void sub_8007998()
{
    sub_800F35C(gUnknown_03001740, 0x400u, &gUnknown_08077464);
    gUnknown_03001740[0].tileNum = 512;
    gUnknown_03001740[0].y = 80;
    gUnknown_03001740[0].x = 112;
    gUnknown_03001740[0].priority = 0;

    gUnknown_03001740[1].tileNum = 512;
    gUnknown_03001740[1].y = 70;
    gUnknown_03001740[1].x = 102;
    gUnknown_03001740[1].priority = 1;

    gUnknown_03001740[2].tileNum = 512;
    gUnknown_03001740[2].y = 60;
    gUnknown_03001740[2].x = 92;
    gUnknown_03001740[2].priority = 2;

    gUnknown_03001740[3].tileNum = 512;
    gUnknown_03001740[3].y = 50;
    gUnknown_03001740[3].x = 82;
    gUnknown_03001740[3].priority = 3;
    sub_8004630();
    DmaCopy32(3,gUnknown_081003F4,0x5000000,0x200);
    DmaCopy32(3,gUnknown_080BDF80,0x5000200,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_08083340,0x6000000,0x12C00);
    sub_8004630();
    DmaCopy32(3,gUnknown_080BE180,0x6014000,0x1000);
    sub_8004630();
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    sub_8004630();
    sub_8004518();
    REG_BG2CNT = 0;
    REG_MOSAIC = 0x81;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    sub_8004630();
}