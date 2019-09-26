#include "gba/gba.h"
#include "definitions.h"

const sDisplayTest2 gUnknown_08019838[2] = {
    { sub_8007F8C,    9},
    { sub_8007FA4,    9},
};

void sub_8007F0C(u32 target)
{
    if ( gUnknown_08019838[target].num == gUnknown_03001730 )
    {
        gUnknown_08019838[target].handler();
    }
    else
    {
        sub_800465C();
        switch(gUnknown_08019838[target].num)
        {
            case 9:
                sub_8007FBC();
                gUnknown_03001730 = 9;
                break;
        }
        gUnknown_08019838[target].handler();
    }
}

void sub_8007F8C()
{
    REG_DISPCNT = 0x405;
}

void sub_8007FA4()
{
    REG_DISPCNT = 0x415;
}

void sub_8007FBC()
{
    struct BgAffineSrcData v3;

    sub_800F35C(gUnknown_03001740, 0x400u, &gUnknown_08077464);
    v3.texX = 0x5000;
    v3.texY = 0x4000;
    v3.scrX = 120;
    v3.scrY = 80;
    v3.sx = 256;
    v3.sy = 256;
    v3.alpha = 0;
    sub_8004630();
    DmaCopy32(3,gUnknown_081003F4,0x5000000,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_080A8F40,0x6000000,0xA000);
    sub_8004630();
    DmaCopy32(3,gUnknown_080B2F40,0x600A000,0xA000);
    sub_8004630();
    sub_80045B8(0x6014000u);
    sub_8004630();
    sub_8004518();
    REG_BG2CNT = 2;
    BgAffineSet(&v3, (struct BgAffineDstData *)&REG_BG2PA, 1);
}