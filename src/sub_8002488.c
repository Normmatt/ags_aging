#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

const static struct BgAffineSrcData affine_src_80190D8 = {
        .texX = 0x7800,
        .texY = 0x5000,
        .scrX = 0x78,
        .scrY = 0x50,
        .sx = 0x208,
        .sy = 0x208,
        .alpha = 0xE000,
};

s32 sub_8002488(u32 *a1)
{
    s32 v3;                 // [sp+4h]
    u16 v4;                 // [sp+8h]
    u16 v5;                 // [sp+Ah]

    v3 = 0;
    v4 = SetIME(0);
    v5 = REG_DISPCNT;
    REG_DISPCNT = 0x80;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x5000000;
    REG_DMA3DAD = 0x2000000;
    REG_DMA3CNT = 0x84000100;
    DmaWait(3);
    if ( WriteAndVerifyMemory_U32(0x5000000u, 0x5000400u, 0x55555555u, a1, a1 + 1) )
        v3 |= 1;
    if ( WriteAndVerifyWord_ASM(0x5000000u, 0x5000400u, a1 + 2, a1 + 3) )
        v3 |= 2u;
    if ( WriteAndVerifyMemory_U32(0x5000000u, 0x5000400u, 0xAAAAAAAA, a1 + 4, a1 + 5) )
        v3 |= 4u;
    if ( TimeDmaToAndFromMemory_U16(0x5000000u, 0) )
        v3 |= 8u;
    if ( TimeDmaToAndFromMemory_U32(0x5000000u, 0, 0x10u) )
        v3 |= 0x10u;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x2000000;
    REG_DMA3DAD = 0x5000000;
    REG_DMA3CNT = 0x84000100;
    DmaWait(3);
    REG_DISPCNT = v5;
    SetIME(v4);
    return v3;
}

s32 sub_800260C()
{
    u32 v1[8];              // [sp+0h]
    return sub_8002488(v1);
}

s32 sub_8002628(void *a1, void *a2)
{
    return sub_8002488(a2);
}

s32 sub_8002648(u32 *a1)
{
    s32 v3;                 // [sp+4h]
    u16 v4;                 // [sp+8h]
    u16 v5;                 // [sp+Ah]

    v3 = 0;
    v4 = SetIME(0);
    v5 = REG_DISPCNT;
    REG_DISPCNT = 0x80;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x6000000;
    REG_DMA3DAD = 0x2000000;
    REG_DMA3CNT = 0x84006000;
    DmaWait(3);
    if ( WriteAndVerifyMemory_U32(0x6000000u, 0x6018000u, 0x55555555u, a1, a1 + 1) )
        v3 |= 1;
    if ( WriteAndVerifyWord_ASM(0x6000000u, 0x6018000u, a1 + 2, a1 + 3) )
        v3 |= 2u;
    if ( WriteAndVerifyMemory_U32(0x6000000u, 0x6018000u, 0xAAAAAAAA, a1 + 4, a1 + 5) )
        v3 |= 4u;
    if ( TimeDmaToAndFromMemory_U16(0x6000000u, 0) )
        v3 |= 8u;
    if ( TimeDmaToAndFromMemory_U32(0x6000000u, 0, 0x10u) )
        v3 |= 0x10u;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x2000000;
    REG_DMA3DAD = 0x6000000;
    REG_DMA3CNT = 0x84006000;
    DmaWait(3);
    REG_DISPCNT = v5;
    SetIME(v4);
    return v3;
}

s32 sub_80027CC(u32 *a1)
{
    s32 v10;                        // [sp+4h]
    u16 v11;                        // [sp+8h]
    u16 v12;                        // [sp+Ah]
    u16 abcd[4];                    // [sp+Ch]
    u32 dx;                         // [sp+14h]
    u32 dy;                         // [sp+18h]
    struct BgAffineSrcData v19;     // [sp+20h]

    v10 = 0;
    v19 = affine_src_80190D8;
    v11 = SetIME(0);
    v12 = REG_DISPCNT;
    //v13 = *(struct BgAffineDstData *)REG_ADDR_BG2PA;
    abcd[0] = REG_BG2PA;
    abcd[1] = REG_BG2PB;
    abcd[2] = REG_BG2PC;
    abcd[3] = REG_BG2PD;
    dx      = REG_BG2X;
    dy      = REG_BG2Y;
    BgAffineSet(&v19, (struct BgAffineDstData *)REG_ADDR_BG2PA, 1);
    REG_DISPCNT = 0x403;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x6000000;
    REG_DMA3DAD = 0x2000000;
    REG_DMA3CNT = 0x84006000;
    DmaWait(3);
    if ( WriteAndVerifyMemory_U32(0x6000000u, 0x6018000u, 0x55555555u, a1, a1 + 1) )
        v10 |= 1;
    if ( WriteAndVerifyWord_ASM(0x6000000u, 0x6018000u, a1 + 2, a1 + 3) )
        v10 |= 2u;
    if ( WriteAndVerifyMemory_U32(0x6000000u, 0x6018000u, 0xAAAAAAAA, a1 + 4, a1 + 5) )
        v10 |= 4u;
    if ( WriteAndVerifyMemory_U32(0x6000000u, 0x6018000u, 0, a1 + 6, a1 + 7) )
        v10 |= 0x20u;
    if ( WriteAndVerifyMemory_U32(0x6000000u, 0x6018000u, 0xFFFFFFFF, a1 + 6, a1 + 7) )
        v10 |= 0x40u;
    if ( sub_800D52C(0x6000000, 0x6018000, 0xA1B2C3D, a1 + 6, a1 + 7) )
        v10 |= 0x10000000u;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x2000000;
    REG_DMA3DAD = 0x6000000;
    REG_DMA3CNT = 0x84006000;
    DmaWait(3);
    REG_BG2PA = abcd[0];
    REG_BG2PB = abcd[1];
    REG_BG2PC = abcd[2];
    REG_BG2PD = abcd[3];
    REG_BG2X  = dx;
    REG_BG2Y  = dy;
    REG_DISPCNT = v12;
    SetIME(v11);
    return v10;
}

s32 sub_8002A8C()
{
    u32 v2[8];              // [sp+0h]
    return sub_8002648(v2) | sub_80027CC(v2);
}

s32 sub_8002AB4(void *a1, void *a2)
{
    if ( *(u32*)a1 == 1 )
        return sub_80027CC(a2);
    else
        return sub_8002648(a2);
}

s32 sub_8002AEC(u32 *a1)
{
    s32 v3;                 // [sp+4h]
    u16 v4;                 // [sp+8h]
    u16 v5;                 // [sp+Ah]

    v3 = 0;
    v4 = SetIME(0);
    v5 = REG_DISPCNT;
    REG_DISPCNT = 0x80;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x7000000;
    REG_DMA3DAD = 0x2000000;
    REG_DMA3CNT = 0x84000100;
    DmaWait(3);
    if ( WriteAndVerifyMemory_U32(0x7000000u, 0x7000400u, 0x55555555u, a1, a1 + 1) )
        v3 |= 1;
    if ( WriteAndVerifyWord_ASM(0x7000000u, 0x7000400u, a1 + 2, a1 + 3) )
        v3 |= 2u;
    if ( WriteAndVerifyMemory_U32(0x7000000u, 0x7000400u, 0xAAAAAAAA, a1 + 4, a1 + 5) )
        v3 |= 4u;
    if ( TimeDmaToAndFromMemory_U16(0x7000000u, 0) )
        v3 |= 8u;
    if ( TimeDmaToAndFromMemory_U32(0x7000000u, 0, 0x20u) )
        v3 |= 0x10u;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x2000000;
    REG_DMA3DAD = 0x7000000;
    REG_DMA3CNT = 0x84000100;
    DmaWait(3);
    REG_DISPCNT = v5;
    SetIME(v4);
    return v3;
}

s32 sub_8002C70()
{
    u32 v1[8];              // [sp+0h]
    return sub_8002AEC(v1);
}

s32 sub_8002C8C(void *a1, void *a2)
{
    return sub_8002AEC(a2);
}
