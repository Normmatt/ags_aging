#include "gba/gba.h"
#include "definitions.h"
#include "multiboot.h"

void sub_800B0A0(void)
{
    static const struct_3001B40_windowinfo gUnknown_0807A8EC =
    {
        .x_offset = 2,
        .y_offset = 3,
        .max_width = 26,
        .max_height = 14,
        .wrap_text = FALSE,
    };

    struct_3001B40_windowinfo win1 = gUnknown_0807A8EC;
    struct_3001B40_windowinfo win2 = gUnknown_03001B40.windowinfo;

    gUnknown_03001B40.windowinfo = win1;
    DrawString(0, 4, "       PREPARATION        \n");
    DrawString(2, 4, "       ~~~~~~~~~~~        \n");
    DrawString(0, 4, "1.PREPARE CABLE(AGB-005)  \n");
    DrawString(0, 4, "  AND ANOTHER AGB.        \n\n");
    DrawString(0, 4, "2.CONNECT THIS AGB WITH   \n");
    DrawString(0, 4, "  ANOTHER AGB  BY THE     \n");
    DrawString(0, 4, "  CABLE.                  \n\n");
    DrawString(0, 4, "3.TURN ON ANOTHER AGB.");
    ReadKey();
    while (!(gUnknown_03000460.Trg & START_BUTTON))
    {
        WaitForInterrupt(1);
        UpdateTilemaps();
        ReadKeyPlus();
        gUnknown_03001B40.x = 2;
        gUnknown_03001B40.y = 13;
        if (gUnknown_0300045C & 0x20)
            DrawString(0, 1, "PUSH START TO CONTINUE");
        else
            DrawString(0, 1, "                      ");
    }
    gUnknown_03001B40.windowinfo = win2;
}

extern const u8 gUnknown_0807AA6C[];

s32 sub_800B1F0(void)
{
    struct MultiBootParam params;
    s32 i = 0;

    gUnknown_03001B40.x = 8;
    gUnknown_03001B40.y = 9;
    DrawString(0, 4, "WAIT A MOMENT...");
    WaitForInterrupt(1);
    UpdateTilemaps();
    DmaCopy32(3, gUnknown_0807AA6C, (void *)EWRAM_START, 0x855C);
    params.masterp = (u8 *)EWRAM_START;
    params.server_type = MULTIBOOT_SERVER_TYPE_QUICK;
    MultiBootInit(&params);
    for (;;)
    {
        if (MultiBootCheckComplete(&params))
            break;
        ++i;
        if (i > 120)
            return 1;
        WaitForInterrupt(1);
        MultiBootMain(&params);
        if (params.client_bit & 0xE && params.probe_count == 0)
            MultiBootStartMaster(&params, (void *)EWRAM_START + 0xC0, 0x855C - 0xC0, 0, 1);
    };
    return 0;
}
