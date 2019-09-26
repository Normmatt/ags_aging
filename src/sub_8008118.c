#include "gba/gba.h"
#include "definitions.h"

void sub_8008118()
{
    sOamData v3 = {         // [sp+0h]
        .y = 160,
        .x = 240,
        .paletteNum = 15,
    };
    sOamData v4[17];        // [sp+8h]
    s32 v5;                 // [sp+90h]
    s32 v6;                 // [sp+94h]
    s32 xOfs;               // [sp+98h]
    u32 numSprites;         // [sp+9Ch]

    numSprites = gUnknown_03002BB0.aging_time ? 17 : 8;
    v5 = REG_TM3CNT_L;
    v6 = REG_TM2CNT_L - 0xFFC4;
    DmaCopy32(3,gUnknown_080C48A0,0x6017E80,0x180);
    sub_800F35C(v4, sizeof(sOamData) * numSprites, &v3);
    xOfs = gUnknown_03002BB0.aging_time ? 0 : 9;

    v4[0].tileNum = (((v5 / 600) % 10) + 1012);
    v4[0].x = ((8 * xOfs++) + 96);
    v4[0].y = 148;

    v4[1].tileNum = (((v5 / 60) % 10) + 1012);
    v4[1].x = ((8 * (xOfs++)) + 96);
    v4[1].y = 148;

    v4[2].tileNum = 1022; // :
    v4[2].x = ((8 * (xOfs++)) + 96);
    v4[2].y = 148;

    v4[3].tileNum = ((((v5 % 60) / 10) % 10) + 1012);
    v4[3].x = ((8 * xOfs++) + 96);
    v4[3].y = 148;

    v4[4].tileNum = (((v5 % 60) % 10) + 1012);
    v4[4].x = ((8 * (xOfs++)) + 96);
    v4[4].y = 148;

    v4[5].tileNum = 1022; // :
    v4[5].x = ((8 * (xOfs++)) + 96);
    v4[5].y = 148;

    v4[6].tileNum = ((((v6 % 60) / 10) % 10) + 1012);
    v4[6].x = ((8 * xOfs++) + 96);
    v4[6].y = 148;

    v4[7].tileNum = (((v6 % 60) % 10) + 1012);
    v4[7].x = ((8 * (xOfs++)) + 96);
    v4[7].y = 148;

    if ( gUnknown_03002BB0.aging_time )
    {
        v4[8].tileNum = 1023; // /
        v4[8].x = ((8 * (xOfs++)) + 96);
        v4[8].y = 148;

        v4[9].tileNum = (((gUnknown_03002BB0.aging_time / 600) % 10) + 1012);
        v4[9].x = ((8 * xOfs++) + 96);
        v4[9].y = 148;

        v4[10].tileNum = (((gUnknown_03002BB0.aging_time / 60) % 10) + 1012);
        v4[10].x = ((8 * (xOfs++)) + 96);
        v4[10].y = 148;

        v4[11].tileNum = 1022; // :
        v4[11].x = ((8 * (xOfs++)) + 96);
        v4[11].y = 148;

        v4[12].tileNum = ((((gUnknown_03002BB0.aging_time % 60) / 10) % 10) + 1012);
        v4[12].x = ((8 * xOfs++) + 96);
        v4[12].y = 148;

        v4[13].tileNum = (((gUnknown_03002BB0.aging_time % 60) % 10) + 1012);
        v4[13].x = ((8 * (xOfs++)) + 96);
        v4[13].y = 148;

        v4[14].tileNum = 1022; // :
        v4[14].x = ((8 * (xOfs++)) + 96);
        v4[14].y = 148;

        v4[15].tileNum = 1012; // 0
        v4[15].x = ((8 * (xOfs++)) + 96);
        v4[15].y = 148;

        v4[16].tileNum = 1012; // 0
        v4[16].x = ((8 * (xOfs++)) + 96);
        v4[16].y = 148;
    }
    DmaCopy32_DirectSize(3,&v4,0x7000400 - sizeof(sOamData) * numSprites, 2 * numSprites);
    REG_DISPCNT |= 0x1000u;
}