#include <stdio.h>
#include "functions.h"

void sub_020001FC(void)
{
    char buf[0x80];

    sub_02000278();
    REG_DISPCNT |= DISPCNT_FORCED_BLANK;
    sub_02000534();
    gUnk_03000970.x = 1;
    gUnk_03000970.y = 1;
    sprintf(buf, gUnk_02006E10, SlaveIdNumber); // "BOOT CHANNEL : %d"
    DrawString(0, 0, buf);
    UpdateTilemaps();
    REG_DISPCNT &= ~DISPCNT_FORCED_BLANK;
    while (1)
        ;
}

void sub_02000278(void)
{
    DmaCopy32(3, IntrMain, gUnk_03000790, 0x41 * 4);
    INTR_VECTOR = gUnk_03000790;
}

void WaitForInterrupt(u16 irq)
{
    INTR_CHECK &= ~irq;
    while ((INTR_CHECK & irq) != irq)
        ;
}

IntrFunc SetInterruptHandler(u16 a1, IntrFunc intr)
{
    s32 i;
    IntrFunc oldIntr;

    for (i = 0; i < 16 && !(a1 & 1); ++i, a1 >>= 1)
        ;
    oldIntr = gIntrTable[i];
    gIntrTable[i] = intr;
    return oldIntr;
}

void sub_02000380(void)
{
    s32 i;

    for (i = 0; i < 16; ++i)
        gIntrTable[i] = NULL;
}

u16 sub_020003B4(u16 ime)
{
    u16 imeBak = REG_IME;

    REG_IME = ime;
    return imeBak;
}

u16 sub_020003E4(u16 ie)
{
    u16 ieBak = REG_IE;

    REG_IE = ie;
    return ieBak;
}

void SaveAndDisableInterruptHandlers(sInterruptSetup *setup, u16 ime, u16 ie)
{
    u16 imeBak = sub_020003B4(0);
    u16 ieBak = sub_020003E4(ie);
    s32 i;

    setup->ime = imeBak;
    setup->ie = ieBak;

    for (i = 0; i < 16; ++i)
    {
        setup->handler[i] = gIntrTable[i];
        gIntrTable[i] = NULL;
    }

    REG_IF = INTR_FLAG_VBLANK
             | INTR_FLAG_HBLANK
             | INTR_FLAG_VCOUNT
             | INTR_FLAG_TIMER0
             | INTR_FLAG_TIMER1
             | INTR_FLAG_TIMER2
             | INTR_FLAG_TIMER3
             | INTR_FLAG_SERIAL
             | INTR_FLAG_DMA0
             | INTR_FLAG_DMA1
             | INTR_FLAG_DMA2
             | INTR_FLAG_DMA3
             | INTR_FLAG_KEYPAD
             | INTR_FLAG_GAMEPAK;
    sub_020003B4(ime);
}

void RestoreInterruptHandlers(sInterruptSetup *setup)
{
    s32 i;

    sub_020003B4(0);
    for (i = 0; i < 16; ++i)
        gIntrTable[i] = setup->handler[i];
    sub_020003E4(setup->ie);
    sub_020003B4(setup->ime);
}

void sub_02000534(void)
{
    s32 i;

    REG_DISPCNT = DISPCNT_FORCED_BLANK | DISPCNT_BG0_ON | DISPCNT_BG1_ON;
    REG_BG0CNT = BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0);
    REG_BG1CNT = BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    REG_BG2CNT = 0;
    REG_BG3CNT = 0;
    REG_MOSAIC = 0;
    REG_BG2X = 0;
    REG_BG2Y = 0;
    REG_BG3X = 0;
    REG_BG3Y = 0;
    REG_BG2PA = 0x100;
    REG_BG2PB = 0;
    REG_BG2PC = 0;
    REG_BG2PD = 0x100;
    REG_BG3PA = 0x100;
    REG_BG3PB = 0;
    REG_BG3PC = 0;
    REG_BG3PD = 0x100;
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;
    REG_BG3HOFS = 0;
    REG_BG3VOFS = 0;
    REG_WIN0H = 0;
    REG_WIN0V = 0;
    REG_WIN1H = 0;
    REG_WIN1V = 0;
    REG_WININ = 0;
    REG_WINOUT = 0;
    REG_BLDCNT = 0;
    REG_BLDALPHA = 0;
    REG_BLDY = 0;
    gUnk_03000970.x = 0;
    gUnk_03000970.y = 0;
    DmaFill32(3, 0, gUnk_03000970.BG0_Tilemap, 0x800);
    DmaFill32(3, 0, gUnk_03000970.BG1_Tilemap, 0x800);
    gUnk_03000970.bg1_tile_number = 0;
    gUnk_03000970.windowinfo = gUnk_02006E48;
    gUnk_03000970.number_of_tiles = 0;
    for (i = 0; i < 8; ++i)
    {
        gUnk_03000970.special_handlers[i].callback = sub_02000D0C;
        gUnk_03000970.special_handlers[i].tile_number = 0;
    }
    UpdateTilemaps();
    sub_02000920(0, 0);
    sub_02000920(1, RGB(31, 0, 0));
    sub_02000920(2, RGB(3, 20, 5));
    sub_02000920(3, RGB(31, 31, 0));
    sub_02000920(4, RGB(3, 3, 22));
    sub_02000920(5, RGB(31, 5, 23));
    sub_02000920(6, RGB(5, 29, 28));
    sub_02000920(7, RGB(31, 31, 31));
    sub_020011D0(0);
    *(u16 *)PLTT = RGB(31, 31, 31);
}

void sub_02000838(s32 a1, const void *src, s32 size, void *callback)
{
    s32 unused;

    gUnk_03000970.special_handlers[a1].tile_number =  gUnk_03000970.number_of_tiles;
    gUnk_03000970.special_handlers[a1].callback = callback;
    DmaCopy32(3, src, 0x20 * gUnk_03000970.special_handlers[a1].tile_number + (void *)VRAM, size);
    gUnk_03000970.number_of_tiles += size / 0x20;
}

void sub_02000920(s32 whichPal, u16 color)
{
    u16 r, g, b, *p;
    s32 i;

    r = color & 0x1F;
    g = (color >> 5) & 0x1F;
    b = (color >> 10) & 0x1F;
    p = 0x10 * whichPal + (u16 *)PLTT;
    *(p++); // not really understandable
    *(p++) = RGB(31, 0, 0);
    *(p++) = RGB(3, 20, 5);
    *(p++) = RGB(31, 31, 0);
    *(p++) = RGB(3, 3, 22);
    *(p++) = RGB(31, 5, 23);
    *(p++) = RGB(5, 29, 28);
    *(p++) = RGB(31, 31, 31);
    *(p++) = 0;
    for (i = 1; i < 8; ++i)
        *(p++) = r * i / 8 | 0x20 * (g * i / 8) | ((u16)(b * i / 8) << 0xA);
    *p = color;
}

void UpdateTilemaps(void)
{
    DmaCopy32(3, gUnk_03000970.BG0_Tilemap, BG_SCREEN_ADDR(28), 0x800);
    DmaCopy32(3, gUnk_03000970.BG1_Tilemap, BG_SCREEN_ADDR(29), 0x800);
}
