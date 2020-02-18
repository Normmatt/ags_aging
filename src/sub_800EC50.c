#include <stdio.h>
#include "definitions.h"

static u32 sub_800EE5C(u32);
static u32 sub_800EDD0(vu8 *);
static void sub_800EE1C(vu8 *, u32);

static const char gUnknown_08101C2C[] = "EEPROM ";

s32 CheckSaveForEepromMagic(void)
{
    char buf[8];

    sub_800EBF0(0, buf);
    if (strcmp(gUnknown_08101C2C, buf) != 0)
    {
        sprintf(buf, gUnknown_08101C2C);
        if (sub_800EB70(0, buf) != 0)
            return 1;
    }
    return 0;
}

void sub_800EC94(void)
{
    *(vu16 *)0xE001FFE = 0;
    sub_800ECB4();
    *(vu16 *)0xE001FFC;
}

void sub_800ECB4(void)
{
    while (*(vu32 *)0x9FFFFF8 & 1)
        ;
}

void sub_800ECD4(u32 *cmd_out, u32 *expected_response)
{
    s32 i;
    vu32 *sp0C;

    *cmd_out = sub_800EE5C(sub_800EDD0((void *)0xE001000));
    sp0C = (void *)0xE001004;
    for (i = 0; i < 8; ++i)
    {
        *expected_response++ = sub_800EE5C(sub_800EDD0((void *)sp0C));
        ++sp0C;
    }
    *(vu16 *)0xE001FFC;
}

void sub_800ED48(u32 a1, u32 a2, u32 *a3)
{
    s32 i;
    vu32 *sp10;

    sub_800EE1C((void *)0x0E001400, sub_800EE5C(a1));
    sub_800EE1C((void *)0x0E001404, sub_800EE5C(a2));
    sp10 = (void *)0xE001408;
    for (i = 0; i < 8; ++i)
    {
        sub_800EE1C((void *)sp10, sub_800EE5C(a3[i]));
        ++sp10;
    }
    *(vu16 *)0xE001FFE = 0;
}

static u32 sub_800EDD0(vu8 *sp00)
{
    u32 ret = sp00[0]
              | (sp00[1] << 8)
              | (sp00[2] << 16)
              | (sp00[3] << 24);
    return ret;
}

static void sub_800EE1C(vu8 *sp00, u32 sp04)
{
    sp00[0] = sp04;
    sp00[1] = sp04 >> 8;
    sp00[2] = sp04 >> 16;
    sp00[3] = sp04 >> 24;
}

static u32 sub_800EE5C(u32 sp00)
{
    return ((sp00 >> 24) & 0xFF)
           | ((sp00 >> 8) & 0xFF00)
           | ((sp00 << 8) & 0xFF0000)
           | ((sp00 << 24) & 0xFF000000);
}

// TODO: should it merge with sSettings as a union? 
typedef struct
{
    u16 unk0[6];
    u16 unkC[5];
} sArr;

void ResetConfiguration(void)
{
    u32 i;

    // '&= 0' will be optimized to '= 0' if you directly cast it to u16 *. 
    for (i = 0; i < 6; ++i)
        ((sArr *)&gUnknown_03002BB0)->unk0[i] &= 0;
    for (i = 0; i < 5; ++i)
        ((sArr *)&gUnknown_03002BB0)->unkC[i] &= 0;
    gUnknown_03002BB0.default_option = 4;
    gUnknown_03002BB0.isAGS = 1;
    gUnknown_03002BB0.aging_time = 180;
    gUnknown_03002BB0.checksum = CalculateConfigurationChecksum();
}

s32 LoadConfiguration(void)
{
    s32 ret = 0;
    u32 i;

    for (i = 0; i < 3; ++i)
        sub_800EBF0(i + 1, (char *)&gUnknown_03002BB0 + 8 * i);
    if (gUnknown_03002BB0.checksum != CalculateConfigurationChecksum())
    {
        ResetConfiguration();
        UpdateChecksum();
        ret = 1;
    }
    return ret;
}

void UpdateChecksum(void)
{
    u32 i;

    gUnknown_03002BB0.checksum = CalculateConfigurationChecksum();
    for (i = 0; i < 3; ++i)
        sub_800EB70(i + 1, (char *)&gUnknown_03002BB0 + 8 * i);
}

u16 CalculateConfigurationChecksum(void)
{
    u16 checksum = 0;
    u32 i;

    for (i = 0; i < 6; ++i)
        checksum += ~((sArr *)&gUnknown_03002BB0)->unk0[i];
    return checksum;
}
