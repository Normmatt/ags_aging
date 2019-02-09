#include "gba/gba.h"
#include "definitions.h"

u32 sub_8000200()
{
    u8 v3[12];      // [sp+0h]
    vu8 *v4;        // [sp+Ch]
    s32 i;          // [sp+10h]

    v4 = (vu8 *)0xE001004;
    for ( i = 0; i <= 10; ++i )
    {
        v3[i] = *v4++;
    }
    v3[11] = 0;
    if ( !strcmp("AGB CHECKER", v3) )
        return 1;
    else if ( !strcmp("AGS CHECKER", v3) )
        return 2;
    else 
        return 0;
}