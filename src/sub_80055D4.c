#include "gba/gba.h"
#include "definitions.h"

const sDisplayTest2 gUnknown_080195A0[8] = {
    { sub_8005698,    3},
    { sub_80056C4,    3},
    { sub_80056F0,    3},
    { sub_800571C,    4},
    { sub_800575C,    4},
    { sub_800579C,    5},
    { sub_8005848,    5},
    { sub_80058F4,   10},
};

void sub_80055D4(u32 target)
{
    if ( gUnknown_080195A0[target].num == gUnknown_03001730 )
    {
        gUnknown_080195A0[target].handler();
    }
    else
    {
        sub_800465C();
        switch(gUnknown_080195A0[target].num)
        {
            case 3:
                sub_8005998();
                gUnknown_03001730 = 3;
                break;
            case 4:
                sub_8005D58();
                gUnknown_03001730 = 4;
                break;
            case 5:
                sub_80064BC();
                gUnknown_03001730 = 5;
                break;
            case 10:
                sub_800661C();
                gUnknown_03001730 = 10;
                break;
        }
        gUnknown_080195A0[target].handler();
    }
}

void sub_8005698()
{
    BgAffineSet(&gUnknown_03000354, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_MODE_1;
}

void sub_80056C4()
{
    BgAffineSet(&gUnknown_03000368, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_MODE_1;
}

void sub_80056F0()
{
    BgAffineSet(&gUnknown_0300037C, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_MODE_1;
}

void sub_800571C()
{
    REG_WININ_L = 0x05;
    REG_WININ_H = 0x10;
    REG_WINOUT_L = 0x03;
    REG_WINOUT_H = 0x10;
    REG_DISPCNT = DISPCNT_OBJWIN_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON | DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_MODE_1;
}

void sub_800575C()
{
    REG_WININ_L = 0x25;
    REG_WININ_H = 0x10;
    REG_WINOUT_L = 0x03;
    REG_WINOUT_H = 0x10;
    REG_DISPCNT = DISPCNT_OBJWIN_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON | DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_MODE_1;
}

void sub_800579C()
{
    DmaCopy32(3,gUnknown_080C2F00,0x5000000,0x200);
    DmaCopy32(3,gUnknown_080C3100,0x6008000,0x2C0);
    DmaCopy32(3,gUnknown_080C33C0,0x6000000,0x800);
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
}

void sub_8005848()
{
    DmaCopy32(3,gUnknown_080C3BC0,0x5000000,0x200);
    DmaCopy32(3,gUnknown_080C3DC0,0x6008000,0x2C0);
    DmaCopy32(3,gUnknown_080C4080,0x6000000,0x800);
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_H_OFF | DISPCNT_MODE_1;
}

void sub_80058F4()
{
    s16 vofs;       // [sp+0h]
    s16 hofs;       // [sp+2h]
    s32 i;          // [sp+4h]

    vofs = 0x81;
    hofs = 0x81;
    REG_BG0VOFS = vofs;
    REG_BG1HOFS = hofs;
    REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_MODE_1;
    for ( i = 0; i < 256; ++i )
    {
        REG_BG0VOFS = vofs--;
        REG_BG1HOFS = hofs--;
        switch(gUnknown_03001734)
        {
            case 2:
                sub_8008118();
            case 1:
            case 3:
            case 4:
            case 5:
                m4aSoundMain();
        }
        WaitForInterrupt(1u);
    }
}

void sub_8005998()
{
    sub_800F35C(gUnknown_03001740, 0x400, &gUnknown_0807746C);
    gUnknown_03001740[0] = gUnknown_08077474;
    gUnknown_03001740[0].tileNum = 0;
    gUnknown_03001740[0].y = 90;
    gUnknown_03001740[0].x = 0;

    gUnknown_03001740[1] = gUnknown_0807747C;
    gUnknown_03001740[1].tileNum = 8;
    gUnknown_03001740[1].y = 90;
    gUnknown_03001740[1].x = 32;

    gUnknown_03001740[2] = gUnknown_08077484;
    gUnknown_03001740[2].tileNum = 12;
    gUnknown_03001740[2].y = 90;
    gUnknown_03001740[2].x = 48;

    gUnknown_03001740[3] = gUnknown_0807747C;
    gUnknown_03001740[3].tileNum = 136;
    gUnknown_03001740[3].y = 122;
    gUnknown_03001740[3].x = 32;

    gUnknown_03001740[4] = gUnknown_08077484;
    gUnknown_03001740[4].tileNum = 140;
    gUnknown_03001740[4].y = 122;
    gUnknown_03001740[4].x = 48;

    sub_8004630();
    DmaCopy16(3,gUnknown_081007F4,0x5000000,0x200);
    DmaCopy32(3,gUnknown_081007F4,0x5000200,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_080DD6AC,0x6000000,0x8000);
    DmaCopy32(3,gUnknown_080D527C,0x6004000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_080F6BD8,0x600C000,0x800);
    DmaCopy32(3,gUnknown_080F74AC,0x600C800,0x2000);
    DmaCopy32(3,gUnknown_080F6A6C,0x600E800,0x800);
    sub_8004630();
    DmaCopy32(3,gUnknown_080D527C,0x6010000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    sub_8004630();
    sub_8004518();
    REG_BG0CNT = 0x1802;
    REG_BG0HOFS = 0xFFECu;
    REG_BG0VOFS = 0xFFF6u;
    REG_BG1CNT = 0xD985u;
    REG_BG1HOFS = 0xFFECu;
    REG_BG1VOFS = 0xFFC4u;
    REG_BG2CNT = 0x1D84;
    sub_8004630();
}

void sub_8005D58()
{
    struct BgAffineSrcData v9;      // [sp+0h]

    sub_800F35C(gUnknown_03001740, 0x400u, &gUnknown_0807746C);

    gUnknown_03001740[1].tileNum = 400;
    gUnknown_03001740[1].y = 64;
    gUnknown_03001740[1].x = 64;
    gUnknown_03001740[1].priority = 0;

    gUnknown_03001740[2].tileNum = 24;
    gUnknown_03001740[2].y = 64;
    gUnknown_03001740[2].x = 96;
    gUnknown_03001740[2].priority = 0;

    gUnknown_03001740[3].tileNum = 24;
    gUnknown_03001740[3].y = 96;
    gUnknown_03001740[3].x = 64;
    gUnknown_03001740[3].priority = 0;

    gUnknown_03001740[4].tileNum = 24;
    gUnknown_03001740[4].y = 96;
    gUnknown_03001740[4].x = 96;
    gUnknown_03001740[4].priority = 0;

    gUnknown_03001740[5].tileNum = 400;
    gUnknown_03001740[5].y = 128;
    gUnknown_03001740[5].x = 96;
    gUnknown_03001740[5].priority = 0;

    gUnknown_03001740[6].tileNum = 400;
    gUnknown_03001740[6].y = 96;
    gUnknown_03001740[6].x = 128;
    gUnknown_03001740[6].priority = 0;

    gUnknown_03001740[7].tileNum = 400;
    gUnknown_03001740[7].y = 96;
    gUnknown_03001740[7].x = 160;
    gUnknown_03001740[7].priority = 3;

    gUnknown_03001740[8].tileNum = 408;
    gUnknown_03001740[8].y = 0;
    gUnknown_03001740[8].x = 0;
    gUnknown_03001740[8].objMode = 2;
    gUnknown_03001740[8].priority = 0;

    gUnknown_03001740[9].tileNum = 408;
    gUnknown_03001740[9].y = 0;
    gUnknown_03001740[9].x = 32;
    gUnknown_03001740[9].objMode = 2;
    gUnknown_03001740[9].priority = 0;

    gUnknown_03001740[10].tileNum = 408;
    gUnknown_03001740[10].y = 32;
    gUnknown_03001740[10].x = 0;
    gUnknown_03001740[10].objMode = 2;
    gUnknown_03001740[10].priority = 0;

    gUnknown_03001740[11].tileNum = 408;
    gUnknown_03001740[11].y = 32;
    gUnknown_03001740[11].x = 32;
    gUnknown_03001740[11].objMode = 2;
    gUnknown_03001740[11].priority = 0;

    gUnknown_03001740[12].tileNum = 408;
    gUnknown_03001740[12].y = 16;
    gUnknown_03001740[12].x = 16;
    gUnknown_03001740[12].priority = 0;

    v9.texX = 0x8000;
    v9.texY = 0x8000;
    v9.scrX = 128;
    v9.scrY = 128;
    v9.sx = 256;
    v9.sy = 256;
    v9.alpha = 0;
    sub_8004630();
    DmaCopy32(3,gUnknown_081009F4,0x5000000,0x200);
    DmaCopy32(3,gUnknown_081009F4,0x5000200,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_080C4A20,0x6000000,0x8000);
    DmaCopy32(3,gUnknown_080E5ADC,0x6004000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_080FDF44,0x600C000,0x800);
    DmaCopy32(3,gUnknown_080FE814,0x600C800,0x800);
    DmaCopy32(3,gUnknown_080FF0E4,0x600D000,0x800);
    sub_8004630();
    DmaCopy32(3,gUnknown_080E5ADC,0x6010000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    sub_8004630();
    sub_8004518();
    REG_BG0CNT = 0x1802;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    REG_BG1CNT = 0x1901;
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    REG_BG2CNT = 0x1A84;
    BgAffineSet(&v9, (struct BgAffineDstData *)&REG_BG2PA, 1);
    REG_WIN0H = 0x2060;
    REG_WIN0V = 0x2060;
    REG_WIN1H = 0x4080;
    REG_WIN1V = 0x4080;
    REG_BLDCNT = 0x2747;
    REG_BLDY = 10;
    REG_BLDALPHA = 0xC0C;
    sub_8004630();
}

void  sub_80064BC()
{
    s32 i;      // [sp+0h]

    sub_800F35C(gUnknown_03001740, 0x400u, &gUnknown_08077464);
    for ( i = 0; i < 19; ++i )
    {
        gUnknown_03001740[i].tileNum = 0;
        gUnknown_03001740[i].y = 48;
        gUnknown_03001740[i].x = 9 * (19 - i);
    }
    sub_8004630();
    DmaCopy32(3,gUnknown_080BDF80,0x5000200,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_080BE180,0x6010000,0x1000);
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    sub_8004630();
    sub_8004518();
    REG_BG0CNT = 0x8B;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    sub_8004630();
}

void sub_800661C()
{
    DmaCopy32(3,gUnknown_081003F4,0x5000000,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_080C4A20,0x6000000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_080FF254,0x600C000,0x800);
    DmaCopy32(3,gUnknown_080FFB24,0x600C800,0x800);
    sub_8004630();
    sub_80045B8(0x6010000u);
    sub_8004630();
    sub_8004518();
    REG_BG0CNT = 0x1800;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    REG_BG1CNT = 0x1901;
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    sub_8004630();
}