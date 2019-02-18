#include "gba/gba.h"
#include "definitions.h"

void AgbMain()
{
    u32 v0; // [sp+0h]
    u16 v1; // [sp+4h]

    sub_800D5F4();
    REG_WAITCNT = 0x5B7;
    ResetConfiguration();
    v0 = sub_8000200();
    if ( v0 )
    {
        switch (v0)
        {
            case 1:
            {
                gUnknown_03002BB0.default_option = 0;
                gUnknown_03002BB0.isAGS = 0;
                break;
            }
            case 2:
            {
                gUnknown_03002BB0.default_option = 0;
                gUnknown_03002BB0.isAGS = 1;
                break;
            }
            default:
        }
    }
    else
    {
        sub_800EB08(0);
        if ( CheckSaveForEepromMagic() == 1 )
        {
            gUnknown_03002BB0.default_option = 4;
            gUnknown_03002BB0.isAGS = 0;
            gUnknown_03002BB0.field_8 = 0;
        }
        else if ( LoadConfiguration() )
        {
            sub_800028C();
        }
        sub_800EB08(1);
    }
    v1 = (~REG_KEYINPUT & 0x3FF);
    if ( v1 == (L_BUTTON | R_BUTTON) && !v0 )
    {
        testprogramMain();
        while ( 1 );
    }
    
    testmain(gUnknown_03002BB0.default_option);
    while ( 1 );
}