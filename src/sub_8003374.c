#include "gba/gba.h"
#include "definitions.h"

s32 sub_8003374()
{
    u16 v1[456][2];            // [sp+0h]
    s32 v2;                 // [sp+720h]
    u16 v3;                 // [sp+724h]
    u16 v4;                 // [sp+726h]
    s32 i;                  // [sp+728h]

    v2 = 0;
    v3 = SetIME(0);
    Test_CallFromStack_ASM((void_pointer)sub_8003C88, (void_pointer)&sub_8003C88_end, (u32)v1, 0x1C8);
    v4 = v1[0][0];
    if ( v4 > 227u )
    {
        v2 |= 2u;
    }
    else
    {
        for ( i = 1; i < 456; ++i )
        {
            ++v4;
            if ( v4 == 228 )
                v4 = 0;
            if ( v4 != v1[i][0] )
            {
                v2 |= 2u;
                break;
            }
        }
    }
    for ( i = 1; i < 456; ++i )
    {
        if ( v1[i][1] > 0x4D1u || v1[i][1] <= 0x4C0u )
        {
            v2 |= 1u;
            break;
        }
    }
    SetIME(v3);
    return v2;
}

s32 sub_8003558(void *a1, void *a2)
{
    return sub_8003374();
}

s32 sub_8003574()
{
    s32 v1;             // [sp+0h]
    u16 v2;             // [sp+4h]
    u16 v3;             // [sp+6h]

    v1 = 0;
    v3 = SetIME(0);
    v2 = REG_DISPSTAT;
    REG_DISPSTAT = 32;
    REG_IF = 4;
    sub_800362C();
    if ( !(REG_IF & 4) )
        v1 |= 1;
    REG_DISPSTAT = 0;
    REG_IF = 4;
    sub_800362C();
    if ( REG_IF & 4 )
        v1 |= 2u;
    REG_DISPSTAT = v2;
    SetIME(v3);
    return v1;
}

s32 sub_8003610(void *a1, void *a2)
{
    return sub_8003574();
}

void sub_800362C()
{
    u16 v1;             // [sp+0h]
    u16 v2;             // [sp+2h]
    u16 v3;             // [sp+4h]

    v1 = REG_VCOUNT;
    v2 = v1 + 10;

    if(v2 > 227)
        v2 = 0;
    
    v3 = REG_DISPSTAT & 0xFF;
    v3 |= (v2 << 8);
    REG_DISPSTAT = v3;

    while ( REG_VCOUNT != v2 );
}

s32 sub_80036A8()
{
    s32 v1;             // [sp+0h]
    u16 v2;             // [sp+4h]
    u16 v3;             // [sp+6h]

    v1 = 0;
    v3 = SetIME(0);
    v2 = REG_DISPSTAT;
    REG_DISPSTAT = 16;
    REG_IF = 2;
    sub_8003760();
    if ( !(REG_IF & 2) )
        v1 |= 1;
    REG_DISPSTAT = 0;
    REG_IF = 2;
    sub_8003760();
    if ( REG_IF & 2 )
        v1 |= 2u;
    REG_DISPSTAT = v2;
    SetIME(v3);
    return v1;
}

s32 sub_8003744(void *a1, void *a2)
{
    return sub_80036A8();
}

void sub_8003760()
{
    u16 v0;             // [sp+0h]

    v0 = REG_VCOUNT;
    if ( v0 > 225 )
        v0 = 0;
    while ( REG_VCOUNT != (v0 + 1) );
    while ( REG_VCOUNT != (v0 + 2) );
}

s32 sub_80037BC()
{
    s32 v1;             // [sp+0h]
    u16 v2;             // [sp+4h]
    u16 v3;             // [sp+6h]

    v1 = 0;
    v3 = SetIME(0);
    v2 = REG_DISPSTAT;
    REG_DISPSTAT = 8;
    REG_IF = 1;
    sub_8003874();
    if ( !(REG_IF & 1) )
        v1 |= 1;
    REG_DISPSTAT = 0;
    REG_IF = 1;
    sub_8003874();
    if ( REG_IF & 1 )
        v1 |= 2u;
    REG_DISPSTAT = v2;
    SetIME(v3);
    return v1;
}

s32 sub_8003858(void *a1, void *a2)
{
    return sub_80037BC();
}

void sub_8003874()
{
    u16 v0;             // [sp+0h]

    v0 = REG_VCOUNT;
    if ( v0 > 226 )
        v0 = 0;
    while ( REG_VCOUNT != (v0 + 1) );
    while ( REG_VCOUNT != v0 );
    while ( REG_VCOUNT != (v0 + 1) );
}

s32 sub_80038E8()
{
    u16 v3[4][2];               // [sp+0h]
    s32 v4;                     // [sp+10h]
    u16 v5;                     // [sp+14h]
    u16 v6;                     // [sp+16h]
    s32 i;                      // [sp+18h]
    u16 v8;                     // [sp+1Ch]

    v4 = 0;
    v5 = SetIME(0);
    v8 = REG_DISPSTAT;
    v6 = REG_VCOUNT;
    v6 += 10;
    if ( v6 > 226u )
        v6 = 0;
    REG_DISPSTAT = v6 << 8;
    Test_CallFromStack_ASM((void_pointer)sub_8003CF0, (void_pointer)&sub_8003CF0_end, (u32)v3, 4);
    for ( i = 0; i < 4; ++i )
    {
        if ( v3[i][0] & 4 )
        {
            if ( v3[i][1] != v6 )
            {
                v4 |= 1u;
                break;
            }
        }
        else if ( v3[i][1] != v6 + 1 )
        {
            v4 |= 1u;
            break;
        }
    }
    REG_DISPSTAT = v8;
    SetIME(v5);
    return v4;
}

s32 sub_8003A00(void *a1, void *a2)
{
    return sub_80038E8();
}

s32 sub_8003A1C()
{
    u16 v1[456][2];             // [sp+0h]
    s32 v2;                     // [sp+720h]
    u16 v3;                     // [sp+724h]
    s32 i;                      // [sp+728h]

    v2 = 0;
    v3 = SetIME(0);
    Test_CallFromStack_ASM((void_pointer)sub_8003D38, (void_pointer)&sub_8003D38_end, (u32)v1, 0x1C8);
    for ( i = 1; i <= 455; ++i )
    {
        if ( v1[i][0] & 2 )
        {
            if ( v1[i][1] > 0x3F1u || v1[i][1] <= 0x3DEu )
            {
                v2 |= 1u;
                break;
            }
        }
        else if ( v1[i][1] > 0xE3u || v1[i][1] <= 0xD0u )
        {
            v2 |= 1u;
            break;
        }
    }
    SetIME(v3);
    return v2;
}

s32 sub_8003BA0(void *a1, void *a2)
{
    return sub_8003A1C();
}

s32 sub_8003BBC()
{
    u16 v1[4][2];               // [sp+0h]
    s32 v2;                     // [sp+10h]
    u16 v3;                     // [sp+14h]
    s32 i;                      // [sp+18h]

    v2 = 0;
    v3 = SetIME(0);
    Test_CallFromStack_ASM((void_pointer)sub_8003DAC, (void_pointer)&sub_8003DAC_end, (u32)v1, 4);
    for ( i = 0; i <= 3; ++i )
    {
        if ( v1[i][0] & 1 )
        {
            if ( v1[i][1] != 160 )
            {
                v2 |= 1u;
                break;
            }
        }
        else if ( v1[i][1] != 227 )
        {
            v2 |= 1u;
            break;
        }
    }
    SetIME(v3);
    return v2;
}

s32 sub_8003C6C(void *a1, void *a2)
{
    return sub_8003BBC();
}