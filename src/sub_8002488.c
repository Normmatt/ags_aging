#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

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