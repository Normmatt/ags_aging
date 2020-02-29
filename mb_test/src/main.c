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
    DmaFill32(3, 0, gUnk_03000970.BG0_Tilemap[0], 0x800);
    DmaFill32(3, 0, gUnk_03000970.BG1_Tilemap[0], 0x800);
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
    DmaCopy32(3, gUnk_03000970.BG0_Tilemap[0], BG_SCREEN_ADDR(28), 0x800);
    DmaCopy32(3, gUnk_03000970.BG1_Tilemap[0], BG_SCREEN_ADDR(29), 0x800);
}

void DrawString(s32 x, s32 y, char *str)
{
    s32 i;
    u16 var;

    for (i = 0; str[i] != '\0'; )
    {
        if (str[i][gUnk_02007AB1] & 0x20)
        {
            switch (str[i])
            {
            case '\n':
                DrawString_NewLine();
                ++i;
                break;
            case '\f':
                DrawString_ClearText();
                ++i;
                break;
            case '\e':
                i += sub_020010D8(&x, &y, str + i + 1);
                ++i;
                break;
            default:
                ++i;
            }
        }
        else if (((s8 *)str)[i] >= 0)
        {
            DrawString_CheckAndWrap();
            var = gUnk_03000970.special_handlers[x].callback(&i, &str[i]);
            if (var == 0xFFFF)
                var = 0;
            else
            {
                var += gUnk_03000970.special_handlers[x].tile_number;
                var |= y << 12;
            }
            gUnk_03000970.BG0_Tilemap[gUnk_03000970.windowinfo.y_offset + gUnk_03000970.y][gUnk_03000970.windowinfo.x_offset + gUnk_03000970.x] = var;
            
            gUnk_03000970.BG1_Tilemap[gUnk_03000970.windowinfo.y_offset + gUnk_03000970.y][gUnk_03000970.windowinfo.x_offset + gUnk_03000970.x] = gUnk_03000970.bg1_tile_number;
            ++gUnk_03000970.x;
        }
        else
            ++i;
    }
}

u16 sub_02000D0C(s32 *i_p, char *str)
{
    ++*i_p;
    return (*str - 0x20);
}

void DrawString_CheckAndWrap(void)
{
    s32 i;

    if (gUnk_03000970.x >= gUnk_03000970.windowinfo.max_width)
        DrawString_NewLine();
    if (gUnk_03000970.y >= gUnk_03000970.windowinfo.max_height)
    {
        gUnk_03000970.y = gUnk_03000970.windowinfo.max_height - 1;
        if (gUnk_03000970.windowinfo.wrap_text == TRUE)
        {
            for (i = 0; i < gUnk_03000970.windowinfo.max_height - 1; ++i)
            {
                DmaCopy16(
                    3,
                    &gUnk_03000970.BG0_Tilemap[gUnk_03000970.windowinfo.y_offset + i + 1][gUnk_03000970.windowinfo.x_offset],
                    &gUnk_03000970.BG0_Tilemap[gUnk_03000970.windowinfo.y_offset + i][gUnk_03000970.windowinfo.x_offset],
                    gUnk_03000970.windowinfo.max_width * 2
                );
                DmaCopy16(
                    3,
                    &gUnk_03000970.BG1_Tilemap[gUnk_03000970.windowinfo.y_offset + i + 1][gUnk_03000970.windowinfo.x_offset],
                    &gUnk_03000970.BG1_Tilemap[gUnk_03000970.windowinfo.y_offset + i][gUnk_03000970.windowinfo.x_offset],
                    gUnk_03000970.windowinfo.max_width * 2
                );
            }
            DmaFill16(
                3,
                0,
                &gUnk_03000970.BG0_Tilemap[gUnk_03000970.windowinfo.y_offset + gUnk_03000970.windowinfo.max_height - 1][gUnk_03000970.windowinfo.x_offset],
                gUnk_03000970.windowinfo.max_width * 2
            );
            DmaFill16(
                3,
                0,
                &gUnk_03000970.BG1_Tilemap[gUnk_03000970.windowinfo.y_offset + gUnk_03000970.windowinfo.max_height - 1][gUnk_03000970.windowinfo.x_offset],
                gUnk_03000970.windowinfo.max_width * 2
            );
        }
    }
}

void DrawString_NewLine(void)
{
    gUnk_03000970.x = 0;
    ++gUnk_03000970.y;
}

void DrawString_ClearText(void)
{
    s32 i, j;

    for (i = gUnk_03000970.windowinfo.y_offset;
         i < gUnk_03000970.windowinfo.y_offset + gUnk_03000970.windowinfo.max_height;
         ++i)
    {
        for (j = gUnk_03000970.windowinfo.x_offset;
             j < gUnk_03000970.windowinfo.x_offset + gUnk_03000970.windowinfo.max_width;
             ++j)
        {
            gUnk_03000970.BG0_Tilemap[i][j] = 0;
            gUnk_03000970.BG1_Tilemap[i][j] = 0;
        }
    }
    gUnk_03000970.x = 0;
    gUnk_03000970.y = 0;
}

s32 sub_020010D8(s32 *x_p, s32 *y_p, char *str)
{
    if (*str++ != '[')
        return 0;
    switch (*str++)
    {
    case 'F':
        return sub_0200113C(x_p, *str);
    case 'P':
        return sub_02001178(y_p, *str);
    default:
        return 0;
    }
}

// FIXME: rename the macros
#define ASCII_TO_DEC(c) (c - 0x30)
#define ASCII_TO_HEX_LETTER(c) (c - 0x37)

s32 sub_0200113C(s32 *a1, char a2)
{
    s32 v3 = ASCII_TO_DEC(a2);

    if (v3 >= 0 && v3 <= 7)
    {
        *a1 = v3;
        return 3;
    }
    else
    {
        return 0;
    }
}

s32 sub_02001178(s32 *a1, char a2)
{
    s32 v3 = ASCII_TO_DEC(a2);

    if (a2 >= 'A' && a2 <= 'F')
        v3 = ASCII_TO_HEX_LETTER(a2);
    if (v3 >= 0 && v3 <= 0xF)
    {
        *a1 = v3;
        return 3;
    }
    else
    {
        return 0;
    }
}

void sub_020011D0(s32 a1)
{
    sub_02000838(a1, gUnk_02006EA8, 0xC00, sub_02000D0C);
}
