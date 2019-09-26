#include "gba/gba.h"
#include "definitions.h"

const sDisplayTest2 gUnknown_08019804[2] = {
    { sub_8007CB4,    8},
    { sub_8007CCC,    8},
};

void sub_8007C34(u32 target)
{
    if ( gUnknown_08019804[target].num == gUnknown_03001730 )
    {
        gUnknown_08019804[target].handler();
    }
    else
    {
        sub_800465C();
        switch(gUnknown_08019804[target].num)
        {
            case 8:
                sub_8007CE4();
                gUnknown_03001730 = 8;
                break;
        }
        gUnknown_08019804[target].handler();
    }
}

void sub_8007CB4()
{
    REG_DISPCNT = 0x1444;
}

void sub_8007CCC()
{
    REG_DISPCNT = 0x1454;
}

void sub_8007CE4()
{
    struct BgAffineSrcData v6;

    sub_800F35C(gUnknown_03001740, 0x400u, &gUnknown_08077464);
    gUnknown_03001740[1].tileNum = 512;
    gUnknown_03001740[1].y = 90;
    gUnknown_03001740[1].x = 0;
    gUnknown_03001740[1].priority = 2;
    v6.texX = 0x7800;
    v6.texY = 0x5000;
    v6.scrX = 120;
    v6.scrY = 80;
    v6.sx = 256;
    v6.sy = 256;
    v6.alpha = 0;
    sub_8004630();
    DmaCopy32(3,gUnknown_08095F40,0x5000000,0x200);
    DmaCopy32(3,gUnknown_080C0380,0x5000200,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_08096140,0x6000000,0x9600);
    sub_8004630();
    DmaCopy32(3,gUnknown_0809F940,0x600A000,0x9600);
    sub_8004630();
    DmaCopy32(3,gUnknown_080C0580,0x6014000,0x1000);
    sub_8004630();
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    sub_8004630();
    sub_8004518();
    REG_BG2CNT = 2;
    BgAffineSet(&v6, (struct BgAffineDstData *)&REG_BG2PA, 1);
}