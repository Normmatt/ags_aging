#include <stdio.h>
#include "gba/gba.h"
#include "definitions.h"

const sTest stru_8018988[] = {
    { sub_80020C8,                  "GET SYSTEM ROM CHECK SUM"                  },
    { sub_80021EC,                  "CPU EXTERNAL WORK RAM TEST"                },
    { sub_80022E4,                  "CPU INTERNAL WORK RAM TEST"                },
    { sub_8002628,                  "PALETTE RAM TEST"                          },
    { sub_8002AB4,                  "VRAM TEST"                                 },
    { sub_8002C8C,                  "OAM TEST"                                  },
    { sub_8002CAC,                  "CARTRIDGE ROM TEST"                        },
    { sub_8002F60,                  "CARTRIDGE RAM TEST"                        },
    { sub_8002FF4,                  "CARTRIDGE TYPE FLAG TEST"                  },
    { sub_800308C,                  "PREFETCH BUFFER TEST"                      },
    { sub_80030A8,                  "SET PHI OUTPUT CONTROL"                    },
    { sub_800319C,                  "WAIT STATE WAIT CONTROL TEST"              },
    { sub_8003250,                  "CARTRIDGE RAM WAIT CONTROL TEST"           },
};

const sTest stru_8018B24[] = {
    { sub_8003558,                  "V COUNTER TEST"                            },
    { sub_8003610,                  "V COUNT INTR FLAG TEST"                    },
    { sub_8003744,                  "H BLANK INTR FLAG TEST"                    },
    { sub_8003858,                  "V BLANK INTR FLAG TEST"                    },
    { sub_8003A00,                  "V COUNT STATUS TEST"                       },
    { sub_8003BA0,                  "H BLANK STATUS TEST"                       },
    { sub_8003C6C,                  "V BLANK STATUS TEST"                       },
};

const sTest stru_8018BF0[] = {
    { sub_8003DF4,                  "DISPLAY"                                   },
};

const sTest stru_8018C00[] = {
    { sub_8008ADC,                  "PLAY SOUND"                                },
};

const sTest stru_8018C14[] = {
    { sub_8009074,                  "TIMER PRESCALER TEST"                      },
    { sub_80090EC,                  "TIMER CONNECT TEST"                        },
    { sub_8009240,                  "TIMER INTR FLAG TEST"                      },
};

const sTest stru_8018C70[] = {
    { sub_800A2E4,                  "DMA ADDRESS CONTROL TEST"                  },
    { sub_800A46C,                  "DMA V BLANK START TEST"                    },
    { sub_800A614,                  "DMA H BLANK START TEST"                    },
    { sub_800A788,                  "DMA DISPLAY START TEST"                    },
    { sub_800A7A4,                  "DMA DREQ START TEST"                       },
    { sub_800A9D4,                  "DMA INTR FLAG TEST"                        },
    { sub_800AC88,                  "DMA PRIORITY TEST"                         },
};

const sTest stru_8018D48[] = {
    { sub_800ACA4,                  "NORMAL SIO"                                },
    { sub_800AEF0,                  "MULTI PLAY SIO"                            },
    { sub_800B2EC,                  "UART RECV SIO"                             },
    { sub_800B50C,                  "UART SEND SIO"                             },
    { sub_800B724,                  "DIRECT"                                    },
    { sub_800B7DC,                  "JOY BUS RESET"                             },
    { sub_800B8D0,                  "JOY BUS STATUS"                            },
    { sub_800B91C,                  "JOY BUS WRITE"                             },
    { sub_800BA64,                  "JOY BUS READ"                              },
};

const sTest stru_8018E14[] = {
    { sub_800C04C,                  "KEY INPUT TEST"                            },
    { sub_800C0B8,                  "KEY INPUT SIMPLE TEST"                     },
};

const sTest stru_8018E4C[] = {
    { sub_800C5C0,                  "V BLANK INTR TEST"                         },
    { sub_800C6AC,                  "H BLANK INTR TEST"                         },
    { sub_800C798,                  "V COUNT INTR TEST"                         },
    { sub_800C8AC,                  "TIMER INTR TEST"                           },
    { sub_800C9D4,                  "SIO INTR TEST"                             },
    { sub_800CB50,                  "DMA INTR TEST"                             },
    { sub_800CCB8,                  "KEY INTR TEST"                             },
    { sub_800CD3C,                  "CARTRIDGE INTR TEST"                       },
};

const sTest stru_8018F1C[] = {
    { sub_800CE04,                  "EXECUTE STOP FUNCTION"                     },
    { sub_800CE3C,                  "EXECUTE HALT FUNCTION"                     },
};

const sTestCollection stru_8018F5C[] = {
    { NULL,                         1                                           },
    { stru_8018988,                 sizeof(stru_8018988) / sizeof(sTest)        },
    { stru_8018B24,                 sizeof(stru_8018B24) / sizeof(sTest)        },
    { stru_8018BF0,                 sizeof(stru_8018BF0) / sizeof(sTest)        },
    { stru_8018C00,                 sizeof(stru_8018C00) / sizeof(sTest)        },
    { stru_8018C14,                 sizeof(stru_8018C14) / sizeof(sTest)        },
    { stru_8018C70,                 sizeof(stru_8018C70) / sizeof(sTest)        },
    { stru_8018D48,                 sizeof(stru_8018D48) / sizeof(sTest)        },
    { stru_8018E14,                 sizeof(stru_8018E14) / sizeof(sTest)        },
    { stru_8018E4C,                 sizeof(stru_8018E4C) / sizeof(sTest)        },
    { stru_8018F1C,                 sizeof(stru_8018F1C) / sizeof(sTest)        },
};

u32 gUnknown_03000350 = 0;

void sub_8001AFC()
{
    sInterruptSetup v3;                             // [sp+0h]
    struct_3001B40 v4;                              // [sp+44h]
    u32 cmd;                                        // [sp+10A8h]
    u32 v6;                                         // [sp+10ACh]
    s32 v7;                                         // [sp+10B0h]
    u32 v8[8];                                      // [sp+10B4h]
    u32 v9[8];                                      // [sp+10D4h]
    const sTest *v10;                               // [sp+10F4h]
    s32 i;                                          // [sp+10F8h]
    char v12[128];                                  // [sp+10FCh]
    char v13[128];                                  // [sp+117Ch]

    cmd = 0;
    v6 = 0;
    SaveAndDisableInterruptHandlers(&v3, 1u, 1u);
    REG_DISPSTAT = 8;
    if ( !gUnknown_03002BB0.isAGS )
        DrawHeading("AGB BOARD/FINAL CHECKER");
    else
        DrawHeading("AGS BOARD/FINAL CHECKER");
    while ( 1 )
    {
        v6 = cmd;
        v7 = 0;
        for ( i = 0; i <= 7; ++i )
        {
            v8[i] = v9[i] = 0;
        }
        sub_800ECB4();
        sub_800ECD4(&cmd, v8);
        v10 = sub_8001EFC(cmd);
        if ( !v10 )
        {
            if ( !cmd )
            {
                DrawString(0, 0, "\x0C");
                DrawString(0, 1, "\nSTART COMMUNICATION!!");
            }
            else
            {
                DrawString(0, 0, "\x0C");
                sprintf(v12, "\nILLEGAL NO!!(%08XH)", cmd);
                DrawString(0, 1, v12);
            }
            WaitForInterrupt(1u);
            UpdateTilemaps();
        }
        else
        {
            if ( gUnknown_03000350 )
            {
                DrawString(0, 0, "\x0C");
                sprintf(v12, "\n%s\n\n", v10->name);
                DrawString(0, 1, v12);
                sub_8001F80(cmd);
                sub_8001FA8(v8);
                WaitForInterrupt(1u);
                UpdateTilemaps();
            }
            else if ( cmd != v6 )
            {
                DrawString(0, 0, "\x0C");
                sprintf(v13, "\n%s", v10->name);
                DrawString(0, 1, v13);
                WaitForInterrupt(1u);
                UpdateTilemaps();
            }
        }
        if ( (u32)v10->funcPtr == (u32)sub_8003DF4 )
            memcpy(&v4, &gUnknown_03001B40, 0x1064u);
        if ( v10 )
        {
            v7 = v10->funcPtr(v8, v9);
        }
        else if ( !cmd )
        {
            gUnknown_03000350 = *&v8[3]; //TODO: Fix this fake match
        }
        if ( (u32)v10->funcPtr == (u32)sub_8003DF4 )
        {
            if ( !gUnknown_03002BB0.isAGS )
                DrawHeading("AGB BOARD/FINAL CHECKER");
            else
                DrawHeading("AGS BOARD/FINAL CHECKER");
            REG_DISPCNT |= 0x80;
            memcpy(&gUnknown_03001B40, &v4, 0x1064u);
            REG_DISPCNT &= 0xFF7Fu;
        }
        if ( v10 )
        {
            if ( gUnknown_03000350 )
            {
                sub_8002024(v9);
                sub_80020A0(v7);
                WaitForInterrupt(1u);
                UpdateTilemaps();
            }
        }
        sub_800ED48(cmd, v7, v9);
    }

    RestoreInterruptHandlers(&v3);
}

const sTest* sub_8001EFC(u32 a1)
{
    u16 class_id;               // [sp+4h]
    u16 test_id;                // [sp+6h]

    class_id = a1 >> 16;
    test_id = a1 & 0xFFFF;
    if ( class_id > ((sizeof(stru_8018F5C) / sizeof(sTestCollection))-1) )
        return NULL;
    if ( test_id >= stru_8018F5C[class_id].numTests )
        return NULL;
    if ( !class_id && !test_id)
        return NULL;

    return &stru_8018F5C[class_id].testsPtr[test_id];
}
