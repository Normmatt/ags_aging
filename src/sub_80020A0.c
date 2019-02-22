#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

void sub_80020A0(u32 a1)
{
    char buf[128];           // [sp+4h]

    sprintf(buf, "RESULT:%08XH", a1);
    DrawString(0, 4, buf);
}

s32 sub_80020C8(void *a1, void *a2)
{
    *(u32*)a2 = GetSystemRomChecksum();
    return 0;
}

s32 sub_80020E8(u32 *a1)
{
    s32 result;             // [sp+8h]

    result = 0;
    if ( WriteAndVerifyMemory_U8(0x2000000u, 0x2040000u, 0x55u, a1, a1 + 1) )
        result |= 1;
    if ( WriteAndVerifyWord_ASM(0x2000000u, 0x2040000u, a1 + 2, a1 + 3) )
        result |= 2u;
    if ( WriteAndVerifyMemory_U32(0x2000000u, 0x2040000u, 0xAAAAAAAA, a1 + 4, a1 + 5) )
        result |= 4u;
    if ( TimeDmaToAndFromMemory_U16(0x2000000u, 2u) )
        result |= 8u;
    if ( TimeDmaToAndFromMemory_U32(0x2000000u, 2u, 0x10u) )
        result |= 0x10u;

    *(u8*)0x02000000 = 0x01;
    *(u8*)0x02000001 = 0x23;
    if(*(u16*)0x02000000 != 0x2301)
        result |= 0x20u;

    return result;
}

s32 sub_80021D0()
{
    u32 v1[8];              // [sp+0h]
    return sub_80020E8(v1);
}

s32 sub_80021EC(void *a1, void *a2)
{
    return sub_80020E8(a2);
}

s32 sub_800220C(u32 *a1)
{
    sInterruptSetup v3;     // [sp+4h]
    u16 v4;                 // [sp+48h]
    s32 i;                  // [sp+4Ch]

    SaveAndDisableInterruptHandlers(&v3, 0, 0);
    SetInterruptHandler(1u, sub_8002304);
    gUnknown_03007FF8 = 0;
    v4 = REG_DISPSTAT;
    REG_DISPSTAT = 8;
    SetIE(1u);
    SetIME(1u);
    while ( !(gUnknown_03007FF8 & 1) );
    REG_DISPSTAT = v4;
    RestoreInterruptHandlers(&v3);
    for ( i = 0; i < 6; ++i )
        a1[i] = gUnknown_03001088[i];
    return gUnknown_03001080;
}

s32 sub_80022C8()
{
    u32 v1[8];              // [sp+0h]
    return sub_800220C(v1);
}

s32 sub_80022E4(void *a1, void *a2)
{
    return sub_800220C(a2);
}

void sub_8002304()
{
    s32 v0;                 // [sp+0h]
    u32 v1[6];              // [sp+4h]
    s32 i;                  // [sp+1Ch]

    v0 = 0;
    SetIME(0);
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x3000000;
    REG_DMA3DAD = 0x2000000;
    REG_DMA3CNT = 0x84001F40;
    DmaWait(3);
    if ( WriteAndVerifyMemory_U8(0x3000000u, 0x3007D00u, 0x55u, v1, &v1[1]) )
        v0 |= 1;
    if ( WriteAndVerifyWord_ASM(0x3000000u, 0x3007D00u, &v1[2], &v1[3]) )
        v0 |= 2u;
    if ( WriteAndVerifyMemory_U32(0x3000000u, 0x3007D00u, 0xAAAAAAAA, &v1[4], &v1[5]) )
        v0 |= 4u;
    if ( TimeDmaToAndFromMemory_U16(0x3000000u, 0) )
        v0 |= 8u;
    if ( TimeDmaToAndFromMemory_U32(0x3000000u, 0, 0x20u) )
        v0 |= 0x10u;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x2000000;
    REG_DMA3DAD = 0x3000000;
    REG_DMA3CNT = 0x84001F40;
    DmaWait(3);
    for ( i = 0; i < 6; ++i )
    {
        gUnknown_03001088[i] = v1[i];
    }
    gUnknown_03001080 = v0;
}
