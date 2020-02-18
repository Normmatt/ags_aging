#include "definitions.h"

u16 gUnknown_0300046C[96] = {};

extern const u8 gUnknown_08101A60[]; // TODO: determine its type

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
