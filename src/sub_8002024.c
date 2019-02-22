#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

void sub_8002024(u32 *a1)
{
    s32 i;              // [sp+4h]
    char v3[128];       // [sp+8h]

    for ( i = 0; i < 4; ++i )
    {
        sprintf(v3, "RET%d:%08XH RET%d:%08XH\n", 2 * i, a1[2 * i], 2 * i + 1, a1[2 * i + 1]);
        DrawString(0, 4, v3);
    }
    DrawString(0, 4, gUnknown_08019080);
}
