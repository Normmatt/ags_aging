#include "gba/gba.h"
#include "definitions.h"

const sDisplayTest gUnknown_08019198[50] = {
    { sub_8004714,    0},
    { sub_8004714,    1},
    { sub_8004714,    2},
    { sub_8004714,    3},
    { sub_8004714,    4},
    { sub_8004714,    5},
    { sub_8004714,    6},
    { sub_8004714,    7},
    { sub_8004714,    8},
    { sub_8004714,    9},
    { sub_8004714,   10},
    { sub_8004A90,    0},
    { sub_8004A90,    1},
    { sub_8004A90,    2},
    { sub_8004A90,    3},
    { sub_8004A90,    4},
    { sub_8004A90,    5},
    { sub_8004A90,    6},
    { sub_8004A90,    7},
    { sub_8004A90,    8},
    { sub_8004A90,    9},
    { sub_8004A90,   10},
    { sub_80055D4,    0},
    { sub_80055D4,    1},
    { sub_80055D4,    2},
    { sub_80055D4,    3},
    { sub_80055D4,    4},
    { sub_80055D4,    5},
    { sub_80055D4,    6},
    { sub_8006750,    0},
    { sub_8006750,    1},
    { sub_8006750,    2},
    { sub_8006750,    3},
    { sub_8006750,    4},
    { sub_8006750,    5},
    { sub_8006750,    6},
    { sub_8006750,    7},
    { sub_8006750,    8},
    { sub_8007704,    0},
    { sub_8007704,    1},
    { sub_8007704,    2},
    { sub_8007704,    3},
    { sub_8007704,    4},
    { sub_8007704,    5},
    { sub_8007704,    6},
    { sub_8007C34,    0},
    { sub_8007C34,    1},
    { sub_8007F0C,    0},
    { sub_8007F0C,    1},
    { sub_80055D4,    7},
};

const sDisplayTest gUnknown_08019328[24] = {
    { sub_8004714,    0},
    { sub_8004714,    1},
    { sub_8004714,    2},
    { sub_8004714,    3},
    { sub_8004714,    4},
    { sub_8004714,    5},
    { sub_8004714,    6},
    { sub_8004714,    7},
    { sub_8004714,    8},
    { sub_8004714,    9},
    { sub_8004714,   10},
    { sub_8004A90,    0},
    { sub_8004A90,    1},
    { sub_8004A90,    9},
    { sub_80055D4,    2},
    { sub_80055D4,    3},
    { sub_80055D4,    5},
    { sub_8006750,    0},
    { sub_8007704,    1},
    { sub_8007704,    2},
    { sub_8007704,    3},
    { sub_8007C34,    1},
    { sub_8007F0C,    1},
    { sub_80055D4,    7},
};

const sDisplayTest gUnknown_080193E8[10] = {
    { sub_8004714,    0},
    { sub_8004714,    1},
    { sub_8004714,    2},
    { sub_8004714,    3},
    { sub_8004714,    4},
    { sub_8004714,    5},
    { sub_8004714,    6},
    { sub_8004714,    7},
    { sub_8004714,    8},
    { sub_8004714,    9},
};

const sDisplayTest gUnknown_08019438[3] = {
    { sub_8004714,    0},
    { sub_8004714,    1},
    { sub_8004714,    2},
};

u32 sub_8003DF4(struct_v5 *a1, void *a2)
{
    u16 old_dispstat;           // [sp+8h]
    sInterruptSetup v6;         // [sp+Ch]

    SaveAndDisableInterruptHandlers(&v6, 1u, 1u);
    old_dispstat = REG_DISPSTAT;
    REG_DISPSTAT = 8;
    gUnknown_03001734 = a1->dword0;
    gUnknown_03001730 = -1;
    switch ( gUnknown_03001734 )
    {
        case 0u:
            sub_8003ED0((u32*)&a1->field4);
            break;
        case 1u:
            sub_8004038();
            break;
        case 2u:
            sub_8004258();
            break;
        case 3u:
            sub_800413C(gUnknown_080193E8, 10);
            break;
        case 4u:
            sub_800413C(gUnknown_08019438, 3);
            break;
        case 5u:
            sub_80043F4();
            break;
    }
    REG_DISPSTAT = old_dispstat;
    RestoreInterruptHandlers(&v6);
    return 0;
}

void sub_8003ED0(u32 *a1)
{
    u32 target;         // [sp+4h]
    u32 v7;             // [sp+8h]
    u32 v8;             // [sp+Ch]
    u32 *v9;            // [sp+10h]

    WaitForInterrupt(1u);
    target = a1[1];
    switch ( a1[0] )
    {
        case 0u:
            sub_8004A90(target);
            break;
        case 1u:
            sub_80055D4(target);
            break;
        case 2u:
            sub_8006750(target);
            break;
        case 3u:
            sub_8007704(target);
            break;
        case 4u:
            sub_8007C34(target);
            break;
        case 5u:
            sub_8007F0C(target);
            break;
        case 6u:
            sub_8004714(target);
            break;
    }
    if ( !a1[2] )
    {
        sub_800EC94();
    }
    else
    {
        REG_DMA3CNT = 0;
        *((vu16*)0xE001FFE) = 0;
        v9 = (int *)0x6017FFC;
        while ( *((u32*)0x9FFFFF8) & 1 )
        {
            if ( REG_DMA3CNT & 0x80000000 )
            {
                v8 = *v9;
                *v9 = v8;
                if ( v9 == (u32 *)0x6000000 )
                    v9 = (u32 *)0x6017FFC;
                else
                    --v9;
            }
            else
            {
                REG_DMA3CNT = 0;
                REG_DMA3SAD = 0x6017FFC;
                REG_DMA3DAD = (u32)&v7;
                REG_DMA3CNT = 0x84C06000;
                //WTF: Why does this copy into a temporary, 0x6000 times... then never use it?
            }
        }
        *((vu16*)0xE001FFC); //WTF: does reading this effect SRAM somehow?
        REG_DMA3CNT = 0;
        while ( REG_DMA3CNT & 0x80000000 );
    }
}

void sub_8004038()
{
    u32 idx;            // [sp+0h]
    s32 update;         // [sp+4h]
    s32 unused;         // [sp+8h]

    idx = 0;
    update = 1;
    m4aSoundInit();
    SetIME(0);
    SetInterruptHandler(1u, sub_80044F8);
    SetIME(1u);
    m4aSongNumStart(14);
    m4aSongNumStart(100);
    ReadKey();
    gUnknown_03000460.intervalCount = 0;
    while ( 1 )
    {
        WaitForInterrupt(1u);
        if ( update )
        {
            REG_DISPCNT &= 0xFF7F;
            gUnknown_08019328[idx].handler(gUnknown_08019328[idx].num);
            update = 0;
        }
        m4aSoundMain();
        ReadKeyPlus();
        if ( gUnknown_03000460.Trg & A_BUTTON )
        {
            idx++;
            if ( idx < 24 )
            {
                update = 1;
            }
            else
            {
                break;
            }
        }
        if ( gUnknown_03000460.Trg & B_BUTTON )
        {
            if ( idx )
            {
                --idx;
                update = 1;
            }
        }
    }
    m4aMPlayAllStop();
    SoundVSyncOff_rev01();
}

void sub_800413C(const sDisplayTest *tests, s32 a2)
{
    s32 idx;            // [sp+8h]
    s32 update;         // [sp+Ch]
    s32 unused;         // [sp+10h]

    idx = 0;
    update = 1;
    m4aSoundInit();
    SetIME(0);
    SetInterruptHandler(1u, sub_80044F8);
    SetIME(1u);
    ReadKey();
    gUnknown_03000460.intervalCount = 0;
    while ( 1 )
    {
        WaitForInterrupt(1u);
        if ( update )
        {
            REG_DISPCNT &= 0xFF7F;
            tests[idx].handler(tests[idx].num);
            update = 0;
        }
        m4aSoundMain();
        ReadKeyPlus();
        if ( gUnknown_03000460.Trg & A_BUTTON )
        {
            idx++;
            if ( idx < a2 )
            {
                update = 1;
                m4aSongNumStart(4);
            }
            else
            {
                idx = a2 - 1;
                m4aSongNumStart(5);
            }
        }
        if ( gUnknown_03000460.Trg & B_BUTTON )
        {
            if ( idx )
            {
                --idx;
                update = 1;
                m4aSongNumStart(4);
            }
            else
            {
                idx = 0;
                m4aSongNumStart(5);
            }
        }
    }
    m4aMPlayAllStop();
    SoundVSyncOff_rev01();
}

void sub_8004258()
{
    u32 idx; // [sp+0h] [bp-14h]
    s32 v3; // [sp+4h] [bp-10h]

    v3 = 1;
    m4aSoundInit();
    SetIME(0);
    SetInterruptHandler(1u, sub_80044F8);
    SetIME(1u);
    while ( 1 )
    {
        WaitForInterrupt(1u);
        if ( gUnknown_030010A0 > 30 || v3 )
        {
            if ( v3 )
            {
                v3 = 0;
                idx = 0;
            }
            else
            {
                ++idx;
            }
            if ( idx > 49 )
                break;

            REG_DISPCNT &= 0xFF7F;
            gUnknown_08019198[idx].handler(gUnknown_08019198[idx].num);
            if ( gUnknown_08019198[idx].handler != sub_8006750 )
            {
                DmaCopy32(3,gUnknown_080C4880,0x50003E0,0x20);
            }
            if ( !idx )
            {
                m4aSongNumStart(14);
                m4aSongNumStart(100);
            }
            if ( idx == 48 )
            {
                m4aMPlayFadeOut((int)&gUnknown_03003D10, 16);
                m4aMPlayFadeOut((int)&gUnknown_03003D50, 16);
            }
            gUnknown_030010A0 = 0;
        }

        if ( (gUnknown_08019198[idx].handler != sub_8004A90 || gUnknown_08019198[idx].num)
          && (gUnknown_08019198[idx].handler != sub_8007704 || gUnknown_08019198[idx].num) )
        {
            sub_8008118();
        }
        m4aSoundMain();
    }
    m4aMPlayAllStop();
    SoundVSyncOff_rev01();
}

void sub_80043F4()
{
    u32 idx;            // [sp+0h]
    s32 update;         // [sp+4h]
    s32 unused;         // [sp+8h]

    idx = 0;
    update = 1;
    m4aSoundInit();
    SetIME(0);
    SetInterruptHandler(1u, sub_80044F8);
    SetIME(1u);
    m4aSongNumStart(14);
    m4aSongNumStart(100);
    ReadKey();
    gUnknown_03000460.intervalCount = 0;
    while ( 1 )
    {
        WaitForInterrupt(1u);
        if ( update )
        {
            REG_DISPCNT &= 0xFF7F;
            gUnknown_08019198[idx].handler(gUnknown_08019198[idx].num);
            update = 0;
        }
        m4aSoundMain();
        ReadKeyPlus();
        if ( gUnknown_03000460.Trg & A_BUTTON )
        {
            idx++;
            if ( idx < 50 )
            {
                update = 1;
            }
            else
            {
                break;
            }
        }
        if ( gUnknown_03000460.Trg & B_BUTTON )
        {
            if ( idx )
            {
                --idx;
                update = 1;
            }
        }
    }
    m4aMPlayAllStop();
    SoundVSyncOff_rev01();
}

void sub_80044F8()
{
    SoundVSync_rev01();
    ++gUnknown_030010A0;
}

void sub_8004518()
{
    *(vu32 *)REG_ADDR_BG2PA = 256;
    *(vu32 *)REG_ADDR_BG2PC = 0x1000000;
    *(vu32 *)REG_ADDR_BG2X = 0;
    *(vu32 *)REG_ADDR_BG2Y = 0;
    *(vu32 *)REG_ADDR_BG3PA = 256;
    *(vu32 *)REG_ADDR_BG3PC = 0x1000000;
    *(vu32 *)REG_ADDR_BG3X = 0;
    *(vu32 *)REG_ADDR_BG3Y = 0;
    *(vu32 *)REG_ADDR_WIN0H = 0;
    *(vu32 *)REG_ADDR_WIN0V = 0;
    *(vu32 *)REG_ADDR_WININ = 0;
    *(vu32 *)REG_ADDR_BLDCNT = 0;
    *(vu32 *)REG_ADDR_BLDALPHA = 0; //BUG: This is not a 4byte aligned address
    *(vu16 *)REG_ADDR_BLDY = 0;
}

void sub_80045B8(u8 *a1)
{
    u8 v4[32];          // [sp+4h]

    memset(v4, 0, 0x20u);
    DmaCopy32(3,v4,a1,0x20);
    DmaFill32(3,0,0x7000000,0x400);
}

void sub_8004630()
{
    if ( gUnknown_03001734 == 1 || gUnknown_03001734 == 2 )
    {
        m4aSoundMain();
        WaitForInterrupt(1u);
    }
}

void sub_800465C()
{
    u16 i;              // [sp+0h]

    if ( gUnknown_03001734 == 2 )
    {
        REG_WININ_L |= 0x20;
        REG_WININ_H |= 0x20;
        REG_WINOUT_L |= 0x20;
        REG_WINOUT_H |= 0x20;
        REG_BLDCNT = 0xBF;
        for ( i = 0; i <= 16; ++i )
        {
            REG_BLDY = i;
            sub_8004630();
        }
    }
    REG_DISPCNT |= DISPCNT_FORCED_BLANK;
}

//LCD Unit Checker
void sub_8004714(u32 target)
{
    s32 col;                // [sp+4h]
    s32 i;                  // [sp+8h]
    s32 j;                  // [sp+Ch]

    sub_8004518();
    sub_80045B8((u8*)0x6014000);
    REG_DISPCNT = DISPCNT_MODE_3 | DISPCNT_BG2_ON;

    switch ( target )
    {
        case 0u: //Black to White gradient interlaced
            DmaCopy32(3,gUnknown_08019864,0x6000000,0x12C00);
            break;
        case 1u: //White
            REG_DISPCNT |= DISPCNT_FORCED_BLANK;
            DmaCopy32(3,0x8000000,0x6000000,0x12C00);
            break;
        case 2u: //Black
            DmaFill32(3, 0, 0x6000000, 0x12C00);
            break;
        case 3u: //Red
            DmaFill32(3, 0x1F001F, 0x6000000, 0x12C00);
            break;
        case 4u: //Green
            DmaFill32(3, 0x3E003E0, 0x6000000, 0x12C00);
            break;
        case 5u: //Blue
            DmaFill32(3, 0x7C007C00, 0x6000000, 0x12C00);
            break;
        case 6u: //White to Black gradient
            DmaCopy32(3,gUnknown_0802C464,0x6000000,0x12C00);
            break;
        case 7u: //Black to White gradient horizontal
            DmaCopy32(3,gUnknown_0803F064,0x6000000,0x12C00);
            break;
        case 8u: //Quadrant indicators
            DmaCopy32(3,gUnknown_08051C64,0x6000000,0x12C00);
            break;
        case 9u: //Fade from Black to White
        {
            for(j=0; j<32; j++)
            {
                col = RGB(j,j,j);
                col |= col << 16; //Left over code from debugging?
                DmaFill32(3, RGB(j,j,j) | (RGB(j,j,j) << 16), 0x6000000, 0x12C00);
                for (i=0; i<4; i++)
                {
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
            break;
        }
        case 10u:
            DmaCopy32(3,gUnknown_08064864,0x6000000,0x12C00);
            break;
    }
    gUnknown_03001730 = -1;
}
