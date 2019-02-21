#include "gba/gba.h"
#include "definitions.h"

ALIGNED(4) const char config_string[] = {"CONFIGURATION"};
ALIGNED(4) const char gUnknown_08018800[] = {"\x0C"}; //Why is this reused in other files?

void sub_80014B0()
{
    sInterruptSetup v0;             // [sp+0h]
    struct_3001B40 v1;              // [sp+44h]
    sSettings original_settings;    // [sp+10A8h]
    u32 reset_settings;             // [sp+10C0h]
    s32 selected_idx;               // [sp+10C4h]

    selected_idx = 0;
    SaveAndDisableInterruptHandlers(&v0, 1u, 1u);
    REG_DISPSTAT = 8;
    memcpy(&v1, &gUnknown_03001B40, 0x1064u);
    DrawHeading(config_string);
    original_settings = gUnknown_03002BB0;
    ReadKey();
    while ( 1 )
    {
        sub_8001888(selected_idx);
        WaitForInterrupt(1u);
        UpdateTilemaps();
        ReadKeyPlus();
        if ( gUnknown_03000460.Trg & A_BUTTON )
        {
            reset_settings = 0;
            break;
        }
        if ( gUnknown_03000460.Trg & B_BUTTON )
        {
            reset_settings = 1;
            break;
        }
        if ( gUnknown_03000460.Trg & DPAD_UP )
        {
            if ( !selected_idx )
                selected_idx = 2;
            else
                --selected_idx;
        }
        if ( gUnknown_03000460.Trg & DPAD_DOWN )
        {
            if ( selected_idx == 2 )
                selected_idx = 0;
            else
                ++selected_idx;
        }
        if ( gUnknown_03000460.Trg & DPAD_LEFT )
        {
            switch( selected_idx )
            {
                case 0:
                {
                    if ( gUnknown_03002BB0.default_option == 1 )
                        gUnknown_03002BB0.default_option = 6;
                    else
                        --gUnknown_03002BB0.default_option;
                    break;
                }
                case 1:
                {
                    if ( !gUnknown_03002BB0.isAGS )
                        gUnknown_03002BB0.isAGS = 1;
                    else
                        --gUnknown_03002BB0.isAGS;
                    break;
                }
                case 2:
                {
                    if ( !gUnknown_03002BB0.aging_time )
                        gUnknown_03002BB0.aging_time = 5940;
                    else
                        gUnknown_03002BB0.aging_time -= 30;
                    break;
                }
            }
        }
        if ( gUnknown_03000460.Trg & DPAD_RIGHT )
        {
            switch( selected_idx )
            {
                case 0:
                {
                    if ( gUnknown_03002BB0.default_option == 6 )
                        gUnknown_03002BB0.default_option = 1;
                    else
                        ++gUnknown_03002BB0.default_option;
                    break;
                }
                case 1:
                {
                    if ( gUnknown_03002BB0.isAGS == 1 )
                        gUnknown_03002BB0.isAGS = 0;
                    else
                        ++gUnknown_03002BB0.isAGS;
                    break;
                }
                case 2:
                {
                    if ( gUnknown_03002BB0.aging_time == 5940 )
                        gUnknown_03002BB0.aging_time = 0;
                    else
                        gUnknown_03002BB0.aging_time += 30;
                    break;
                }
            }
        }
    }
    if ( reset_settings == 1 )
    {
        gUnknown_03002BB0 = original_settings;
    }
    else
    {
        sub_800EB08(0);
        if ( CheckSaveForEepromMagic() == 1 )
        {
            ReadKey();
            DrawString(0, 0, gUnknown_08018800);
            while ( !gUnknown_03000460.Trg )
            {
                WaitForInterrupt(1u);
                UpdateTilemaps();
                ReadKeyPlus();
                if ( gUnknown_0300045C & 0x20 )
                {
                    gUnknown_03001B40.x = 3;
                    gUnknown_03001B40.y = 9;
                    DrawString(0, 1, "EEPROM IS NOT AVAILABLE!");
                }
                else
                {
                    gUnknown_03001B40.x = 3;
                    gUnknown_03001B40.y = 9;
                    DrawString(0, 1, "                        ");
                }
            }
        }
        else
        {
            UpdateChecksum();
        }
        sub_800EB08(1u);
    }
    memcpy(&gUnknown_03001B40, &v1, 0x1064u);
    RestoreInterruptHandlers(&v0);
}
