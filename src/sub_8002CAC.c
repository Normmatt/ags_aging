#include "gba/gba.h"
#include "definitions.h"

s32 sub_8002CAC(void *a1, void *a2)
{
    u32 v4[2];          // [sp+8h]
    s32 v6;             // [sp+10h]
    u16 v7;             // [sp+14h]

    v6 = 0;
    v7 = SetIME(0);
    *(vu32 *)0x9FFFFF0 = 0x1234567;
    *(u32 *)a2 = (*(vu8 *)0x9FFFFF0 << 0) | (*(vu8 *)0x9FFFFF1 << 8) | (*(vu8 *)0x9FFFFF2 << 16) | (*(vu8 *)0x9FFFFF3 << 24);
    if ( *(u32 *)a2 != 0x1234567 )
        v6 |= 1u;
    *((u32 *)a2 + 1) = *(vu16 *)0x9FFFFF0 | (*(vu16 *)0x9FFFFF2 << 16);
    if ( *((u32 *)a2 + 1) != 0x1234567 )
        v6 |= 2u;
    *((u32 *)a2 + 2) = *(vu32 *)0x9FFFFF0;
    if ( *((u32 *)a2 + 2) != 0x1234567 )
        v6 |= 4u;
    *(vu16 *)0x9FFFFF0 = 0x304;
    *(vu16 *)0x9FFFFF2 = 0x102;
    *((u32 *)a2 + 3) = *(vu16 *)0x9FFFFF0 | (*(vu16 *)0x9FFFFF2 << 16);
    if ( *((u32 *)a2 + 3) != 0x1020304 )
        v6 |= 8u;
    *(vu32 *)0x9FFFFF0 = 0x4030201;
    *((u32 *)a2 + 4) = *(vu32 *)0x9FFFFF0;
    if ( *((u32 *)a2 + 4) != 0x4030201 )
        v6 |= 0x10u;
    v4[0] = 0x10203040;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = (u32)&v4[0];
    REG_DMA3DAD = 0x9FFFFF0;
    REG_DMA3CNT = 0x80000002;
    DmaWait(3);
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x9FFFFF0;
    REG_DMA3DAD = (u32)&v4[1];
    REG_DMA3CNT = 0x80000002;
    DmaWait(3);
    if ( v4[0] != v4[1] )
        v6 |= 0x20u;
    *((u32 *)a2 + 5) = v4[1];
    v4[0] = 0x40302010;
    REG_DMA3CNT = 0;
    REG_DMA3SAD = (u32)&v4[0];
    REG_DMA3DAD = 0x9FFFFF0;
    REG_DMA3CNT = 0x84000001;
    DmaWait(3);
    REG_DMA3CNT = 0;
    REG_DMA3SAD = 0x9FFFFF0;
    REG_DMA3DAD = (u32)&v4[1];
    REG_DMA3CNT = 0x84000001;
    DmaWait(3);
    if ( v4[0] != v4[1] )
        v6 |= 0x40u;
    *((u32 *)a2 + 6) = v4[1];
    SetIME(v7);
    return v6;
}

s32 sub_8002F60(void *a1, void *a2)
{
    s32 v6;             // [sp+8h]

    v6 = 0;

    //BUG: Why do these not use volatile?
    *(u8 *)0xE000AAA = 0xAAu;
    if(*(vu8 *)0xE000AAA != 0xAAu)
        v6 |= 1u;

    *(u8 *)0xE001555 = 0x55;
    if(*(vu8 *)0xE001555 != 0x55)
        v6 |= 1u; //BUG: Was this supposed to be a 2?
    
    return v6;
}

s32 sub_8002FB8()
{
    u32 v2;             // [sp+0h]
    s32 v1;             // [sp+4h]

    v1 = 0;
    v2 = REG_WAITCNT;
    if ( v2 & 0x8000 )
        v1 |= 1;

    return v1;
}

s32 sub_8002FF4(void *a1, void *a2)
{
    return sub_8002FB8();
}

s32 sub_8003010()
{
    s32 v2;             // [sp+0h]
    u16 v3;             // [sp+4h]
    u16 v4;             // [sp+6h]
    u32 v5;             // [sp+8h]

    v2 = 0;
    v4 = SetIME(0);
    v3 = REG_WAITCNT;
    REG_WAITCNT = 0x4014;
    v5 = sub_800326C();
    if ( v5 != 24 )
        v2 |= 1;
    REG_WAITCNT = 0x14;
    v5 = sub_800326C();
    if ( v5 != 51 )
        v2 |= 2u;
    REG_WAITCNT = v3;
    SetIME(v4);
    return v2;
}

s32 sub_800308C(void *a1, void *a2)
{
    return sub_8003010();
}

s32 sub_80030A8(void *a1, void *a2)
{
    u16 v1;             // [sp+8h]

    v1 = REG_WAITCNT;
    REG_WAITCNT = *(u32*)a1 << 11;
    sub_800EC94();
    REG_WAITCNT = v1;

    return 0;
}
