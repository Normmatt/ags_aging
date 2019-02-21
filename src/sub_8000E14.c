#include <string.h>
#include "gba/gba.h"
#include "definitions.h"

void DrawPassFailResult(sTestInstance *instance, int numTests)
{
    s32 skipped;            // [sp+8h]
    s32 fail;               // [sp+Ch]
    s32 enabled;            // [sp+10h]
    s32 i;                  // [sp+14h]
    s32 initial_x;          // [sp+18h]

    skipped = 0;
    fail = 0;
    enabled = 0;
    initial_x = gUnknown_03001B40.x;
    for ( i = 0; i < numTests; ++i )
    {
        if ( !instance[i].enabled )
        {
            DrawString(0, 4, "-");
        }
        else
        {
            if ( !instance[i].executed )
            {
                DrawString(0, 4, "_");
                skipped |= 1u;
            }
            else
            {
                if ( !instance[i].result )
                {
                    DrawString(0, 2, "O");
                }
                else
                {
                    DrawString(0, 1, "X");
                    fail |= 1u;
                }
            }
            enabled |= 1u;
        }
    }
    gUnknown_03001B40.x = initial_x + 9;
    if ( enabled && !skipped )
    {
        DrawString(1, 5, "r");                  // Arrow character
        if ( fail )
            DrawString(0, 1, "FAIL");
        else
            DrawString(0, 2, "PASS");
    }
    DrawString(0, 4, "\n\n");
}

s32 StartTest(u32 classId, u32 instanceId)
{
    s32 result;

    if ( !testClasses[classId].testsPtr[instanceId].enabled )
        return 0;

    result = testClasses[classId].testsPtr[instanceId].funcPtr();
    testClasses[classId].testsPtr[instanceId].result =  result;
    testClasses[classId].testsPtr[instanceId].executed = 1;
    return result;
}

void sub_8000FF0(const menuOption *menuOptions, int idx)
{
    sInterruptSetup v6;             // [sp+8h]
    struct_80011C4 v7;              // [sp+4Ch]

    SaveAndDisableInterruptHandlers(&v6, 1u, 1u);
    REG_DISPSTAT = 8;
    v7.menu_option = menuOptions;
    v7.initial_idx = idx;
    v7.selected_idx = 0;
    sub_80011C4(&v7);
    ReadKey();
    while ( 1 )
    {
        sub_80012A4(&v7);
        WaitForInterrupt(1u);
        UpdateTilemaps();
        ReadKeyPlus();
        if ( gUnknown_03000460.Trg & B_BUTTON )
            break;
        if ( gUnknown_03000460.Trg & DPAD_UP )
        {
            if ( !v7.selected_idx )
                v7.selected_idx = v7.num_entries - 1;
            else
                --v7.selected_idx;
        }
        if ( gUnknown_03000460.Trg & DPAD_DOWN )
        {
            if ( v7.selected_idx == v7.num_entries - 1 )
                v7.selected_idx = 0;
            else
                ++v7.selected_idx;
        }
        if ( gUnknown_03000460.Trg & A_BUTTON )
        {
            switch(menuOptions[v7.submenu_indexes[v7.selected_idx]].level)
            {
                case 0:
                {
                    sub_8000FF0(menuOptions, v7.submenu_indexes[v7.selected_idx]);
                    break;
                }
                case 1:
                {
                    if ( menuOptions[v7.submenu_indexes[v7.selected_idx]].handler )
                    {
                        menuOptions[v7.submenu_indexes[v7.selected_idx]].handler();
                    }
                    break;
                }
            }
        }
    }
    RestoreInterruptHandlers(&v6);
}

void sub_80011C4(struct_80011C4 *a1)
{
    s32 idx;        // [sp+4h]

    a1->num_entries = 0;
    idx = a1->initial_idx + 1;
    while ( a1->menu_option[idx].level != 2 )
    {
        a1->submenu_indexes[a1->num_entries++] = idx;
        if ( !a1->menu_option[idx].level )
            idx = sub_8001240(a1, idx);
        else
            ++idx;
        
    }
}

s32 sub_8001240(struct_80011C4 *a1, s32 idx)
{
    idx++;
    while ( a1->menu_option[idx].level != 2 )
    {
        if ( !a1->menu_option[idx].level )
            idx = sub_8001240(a1, idx);
        else
            ++idx;
    }
    return idx + 1;
}

