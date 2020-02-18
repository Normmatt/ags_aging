#include "gba/gba.h"
#include "definitions.h"

extern void_pointer gUnknown_03000428;
/* sub_800E710.s */
u16 gUnknown_0300046C[96] = {};
s32 gUnknown_0300052C = 0;

extern u16 gUnknown_030011D8;

extern const u8 gUnknown_08101A60[]; // TODO: determine its type
extern const u16 gUnknown_08101C48[]; // palette
extern const u16 gUnknown_08101C68[]; // tileset
extern const u16 gUnknown_08106788[]; // tilemap

static u32 sub_800E9E8(u32 *, u8 *);

void sub_800E9C0(u32 r0)
{
    sub_800DD50(r0, gUnknown_08101A60, 0x1A0, sub_800E9E8);
}

static u32 sub_800E9E8(u32 *sp00, u8 *sp04)
{
    ++*sp00;
    return gUnknown_0300046C[*sp04 - 32];
}

void sub_800EA20(void)
{
    REG_DISPCNT |= DISPCNT_BG3_ON;
    REG_BG3CNT = BGCNT_PRIORITY(3)
                 | BGCNT_CHARBASE(2)
                 | BGCNT_SCREENBASE(31);
    REG_BG3HOFS = 0;
    REG_BG3VOFS = 0;
    DmaCopy32(3, gUnknown_08101C48, 0x50001E0, 32);
    *(u16 *)0x5000000 = gUnknown_08101C48[0];
    DmaCopy32(3, gUnknown_08101C68, 0x6008000, 0x4B20);
    DmaCopy32(3, gUnknown_08106788, 0x600F800, 0x800);
}

void sub_800EB08(u32 a1)
{
    if (gUnknown_0300052C)
        gUnknown_030011D8 = REG_WAITCNT;
    switch (a1)
    {
    case 0:
        IdentifyEeprom(4);
        SetEepromTimerIntr(0, &gUnknown_03000428);
        break;
    case 1:
        REG_TM0CNT = 0;
        REG_WAITCNT = gUnknown_030011D8;
        break;
    }
}

s32 sub_800EB70(u16 a1, char *a2)
{
    sInterruptSetup setup;
    u32 unused;
    u32 sp50 = 0;

    SaveAndDisableInterruptHandlers(&setup, 1, 0);
    SetEepromTimerIntr(0, &gUnknown_03000428);
    if (ProgramEepromDword(a1, (void *)a2))
        sp50 |= 2;
    if (VerifyEepromDword(a1, (void *)a2))
        sp50 |= 4;
    RestoreInterruptHandlers(&setup);
    return sp50;
}

s32 sub_800EBF0(u16 a1, char *a2)
{
    sInterruptSetup setup;
    u32 unused;
    u32 sp50 = 0;

    SaveAndDisableInterruptHandlers(&setup, 1, 0);
    SetEepromTimerIntr(0, &gUnknown_03000428);
    if (ReadEepromDword(a1, (void *)a2))
        sp50 |= 1;
    RestoreInterruptHandlers(&setup);
    return sp50;
}
