#include "gba/gba.h"
#include "definitions.h"

const sDisplayTest2 gUnknown_080194D8[11] = {
    { sub_8004B40,    0},
    { sub_8004B58,    1},
    { sub_8004B94,    1},
    { sub_8004BD0,    1},
    { sub_8004C0C,    1},
    { sub_8004C4C,    1},
    { sub_8004C8C,    1},
    { sub_8004CC8,    1},
    { sub_8004D04,    1},
    { sub_8004D44,    2},
    { sub_8004D9C,    2},
};

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

void sub_8004B58()
{
    REG_BLDCNT = 0;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004B94()
{
    REG_BLDCNT = 0xA7;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004BD0()
{
    REG_BLDCNT = 0xE7;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004C0C()
{
    REG_BLDCNT = 0x2747;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004C4C()
{
    REG_BLDCNT = 0x3711;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004C8C()
{
    REG_BLDCNT = 0x90;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004CC8()
{
    REG_BLDCNT = 0xD0;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004D04()
{
    REG_BLDCNT = 0x2750;
    REG_BLDY = 0xA;
    REG_BLDALPHA = 0xC0C;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
}

void sub_8004D44()
{
    REG_BG1CNT &= ~BGCNT_MOSAIC;
    REG_BG2CNT &= ~BGCNT_MOSAIC;
    REG_BG3CNT &= ~BGCNT_MOSAIC;
    REG_DISPCNT = DISPCNT_BG_ALL_ON;
}

void sub_8004D9C()
{
    REG_BG1CNT |= BGCNT_MOSAIC;
    REG_BG2CNT |= BGCNT_MOSAIC;
    REG_BG3CNT |= BGCNT_MOSAIC;
    REG_DISPCNT = DISPCNT_BG_ALL_ON;
}

void sub_8004DF0()
{
    sub_800F35C(gUnknown_03001740, 0x400, &gUnknown_0807748C);
    DmaCopy32(3,gUnknown_08077494,gUnknown_03001740,0x3F0);
    sub_8004630();
    DmaCopy32(3,gUnknown_081003F4,0x5000000,0x200);
    DmaCopy32(3,gUnknown_081003F4,0x5000200,0x200);
    sub_8004630();
    DmaCopy32(3,gUnknown_080C4A20,0x6000000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_080EDF0C,0x600F800,0x800);
    DmaCopy32(3,gUnknown_080EE7DC,0x600F000,0x800);
    DmaCopy32(3,gUnknown_080EF0AC,0x600E800,0x800);
    DmaCopy32(3,gUnknown_080EF97C,0x600E000,0x800);
    sub_8004630();
    DmaCopy32(3,gUnknown_080C4A20,0x6010000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    sub_8004630();
    sub_8004518();
    REG_BG0CNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_MODE_3;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    REG_BG1CNT = DISPCNT_OBJ_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_MODE_2;
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    REG_BG2CNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_MODE_1;
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;
    REG_BG3CNT = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_MODE_0;
    REG_BG3HOFS = 0;
    REG_BG3VOFS = 0;
    REG_MOSAIC = 0x88;
    sub_8004630();
}

void sub_8005084()
{
    u32 val;
    
    sub_800F35C(gUnknown_03001740, 0x400, &gUnknown_08077464);
    gUnknown_03001740[0].tileNum = 0;
    gUnknown_03001740[0].y = 40;
    gUnknown_03001740[0].x = 68;
    gUnknown_03001740[1].tileNum = 0;
    gUnknown_03001740[1].y = 40;
    gUnknown_03001740[1].x = 108;
    gUnknown_03001740[1].hflip = 1;
    gUnknown_03001740[1].objMode = 1;
    sub_8004630();
    DmaCopy32(3,gUnknown_081003F4,0x5000000,0x200);
    DmaCopy32(3,gUnknown_080BDF80,0x5000200,0x200);
    DmaCopy32(3,gUnknown_080BCF40,0x50003E0,0x20);
    sub_8004630();
    DmaCopy32(3,gUnknown_080C4A20,0x6000000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_080F024C,0x600F800,0x800);
    DmaCopy32(3,gUnknown_080F0B1C,0x600F000,0x800);
    DmaCopy32(3,gUnknown_080F13EC,0x600E800,0x800);
    sub_8004630();
    val = 0x6010000;
    DmaCopy32(3,gUnknown_080BF380,val,0x1000);
    val += 0x1000;
    DmaCopy32(3,gUnknown_080BD780,val,0x800);
    val += 0x800;
    sub_8004630();
    DmaCopy32(3,gUnknown_03001740,0x7000000,0x400);
    sub_8004630();
    sub_8004518();
    REG_BG0CNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_MODE_2;
    REG_BG0HOFS = 0xFFA8u;
    REG_BG0VOFS = 0xFFE0u;
    REG_BG1CNT = DISPCNT_OBJ_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_MODE_1;
    REG_BG1HOFS = 0xFFB8u;
    REG_BG1VOFS = 0xFFC0u;
    REG_BG2CNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_MODE_0;
    REG_BG2HOFS = 0xFF98u;
    REG_BG2VOFS = 0xFFC0u;
    REG_MOSAIC = 0x88;
    sub_8004630();
}

void sub_80053C8()
{
    DmaCopy32(3,gUnknown_081005F4,0x5000000,0x200);     //DK_pal_acl
    sub_8004630();
    DmaCopy32(3,gUnknown_080CCE50,0x6000000,0x8000);    //DK_char_acg
    sub_8004630();
    DmaCopy32(3,gUnknown_080F61A0,0x6008000,0x800);     //DK_bg0_asc
    DmaCopy32(3,gUnknown_080F1CBC,0x6008800,0x1000);    //DK_bg1_asc
    DmaCopy32(3,gUnknown_080F2E08,0x6009800,0x1000);    //DK_bg2_asc
    DmaCopy32(3,gUnknown_080F3F54,0x600A800,0x2000);    //DK_bg3_asc
    sub_8004630();
    sub_80045B8((u8*)0x6010000u);
    sub_8004630();
    sub_8004518();
    REG_BG0CNT = 0x1083;
    REG_BG0HOFS = 0x88;
    REG_BG0VOFS = 0xFF82u;
    REG_BG1CNT = 0x5182;
    REG_BG1HOFS = 0xFF95u;
    REG_BG1VOFS = 0xFFBAu;
    REG_BG2CNT = 0x9381u;
    REG_BG2HOFS = 0x3F;
    REG_BG2VOFS = 0xFFB9u;
    REG_BG3CNT = 0xD580u;
    REG_BG3HOFS = 0xFFD1u;
    REG_BG3VOFS = 0xFFBCu;
    REG_MOSAIC = 0x88;
    sub_8004630();
}