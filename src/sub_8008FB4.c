#include "gba/gba.h"
#include "definitions.h"

s32 sub_8008FB4()
{
    u32 i;                                      // [sp+0h]
    u32 j;                                      // [sp+4h]
    u32 res;                                    // [sp+8h]
    u32 failMask = 0;                           // [sp+Ch]
    u16 old_ime;                                // [sp+10h]
    u32 idx;                                    // [sp+14h]
    u32 expected[4] = { 4096, 64, 16, 4 };      // [sp+18h]

    old_ime = SetIME(0);
    idx = 0;
    for ( i = 0; i <= 3; ++i )
    {
        for ( j = 0; j <= 3; ++j )
        {
            res = Test_CallFromStack_ASM((void_pointer)sub_800925C, (void_pointer)&sub_800925C_end, &REG_TMCNT(i), (j << 16) | 0x800000);
            if ( res != expected[j] )
            {
                failMask |= 1 << idx;
            }
            ++idx;
        }
    }
    SetIME(old_ime);
    return failMask;
}

s32 sub_8009074(void *a1, void *a2)
{
    return sub_8008FB4();
}

s32 sub_8009090()
{
    u32 res;             // [sp+0h]
    s32 failed;          // [sp+4h]
    u16 old_ime;         // [sp+8h]

    failed = 0;
    old_ime = SetIME(0);
    res = Test_CallFromStack_ASM((void_pointer)sub_8009294,(void_pointer)&sub_8009294_end, 65534, 0);
    if (res != 512 )
    {
        failed |= 1;
    }
    SetIME(old_ime);
    return failed;
}

s32 sub_80090EC(void *a1, void *a2)
{
    return sub_8009090();
}

s32 sub_8009108()
{
    s32 res;            // [sp+0h]
    u32 i;              // [sp+4h]
    u16 old_ime;        // [sp+8h]

    res = 0;
    old_ime = SetIME(0);
    for ( i = 0; i <= 3; ++i )
    {
        REG_TMCNT32(i) = 0;
        REG_IF = 8 << i;
        REG_TMCNT32(i) = 0xC0F000;
        Test_CallFromStack_ASM((void_pointer)sub_80092FC,(void_pointer)&sub_80092FC_end, 1034, 0);
        REG_TMCNT32(i) = 0;
        if ( !(REG_IF & (8 << i)) )
        {
            res |= 1 << 2 * i;
        }
        REG_TMCNT32(i) = 0;
        REG_IF = 8 << i;
        REG_TMCNT32(i) = 0x80F000;
        Test_CallFromStack_ASM((void_pointer)sub_80092FC,(void_pointer)&sub_80092FC_end, 1034, 0);
        REG_TMCNT32(i) = 0;
        if ( REG_IF & (8 << i) )
        {
            res |= 2 << 2 * i;
        }
    }
    SetIME(old_ime);
    return res;
}

s32 sub_8009240(void *a1, void *a2)
{
    return sub_8009108();
}