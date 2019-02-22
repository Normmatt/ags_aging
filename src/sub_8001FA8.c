#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

ALIGNED(4) static const char args_string[] = {"ARG%d:%08XH ARG%d:%08XH\n"};
ALIGNED(4) const char gUnknown_08019080[] = {"\n"};

void sub_8001FA8(u32 *a1)
{
    s32 i;              // [sp+4h]
    char v3[128];       // [sp+8h]

    for ( i = 0; i < 4; ++i )
    {
        sprintf(v3, args_string, 2 * i, a1[2 * i], 2 * i + 1, a1[2 * i + 1]);
        DrawString(0, 4, v3);
    }
    DrawString(0, 4, gUnknown_08019080);
}
