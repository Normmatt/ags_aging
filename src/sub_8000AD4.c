#include "gba/gba.h"
#include "definitions.h"

extern s32 sub_80021D0();
extern s32 sub_80022C8();
extern s32 sub_800260C();
extern s32 sub_8002A8C();
extern s32 sub_8002C70();
extern s32 sub_8002FB8();
extern s32 sub_8003010();
extern s32 sub_80030E8();
extern s32 sub_80031B8();

extern s32 sub_8003374();
extern s32 sub_8003574();
extern s32 sub_80036A8();
extern s32 sub_80037BC();
extern s32 sub_80038E8();
extern s32 sub_8003A1C();
extern s32 sub_8003BBC();

extern s32 sub_8008FB4();
extern s32 sub_8009090();
extern s32 sub_8009108();

extern s32 sub_800A284();
extern s32 sub_800A29C();
extern s32 sub_800A2B4();
extern s32 sub_800A2CC();
extern s32 sub_800A34C();
extern s32 sub_800A488();
extern s32 sub_800A630();
extern s32 sub_800A838();
extern s32 sub_800A9F0();

extern s32 sub_800AE30();

extern s32 sub_800C02C();
extern s32 sub_800C0A4();

extern s32 sub_800C4F0();
extern s32 sub_800C5DC();
extern s32 sub_800C6C8();
extern s32 sub_800C7B4();
extern s32 sub_800C924();
extern s32 sub_800CA48();
extern s32 sub_800CBF0();

sTestInstance memTests[] = {
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_80021D0,
        .name = "CPU EXTERNAL WORK RAM",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_80022C8,
        .name = "CPU INTERNAL WORK RAM",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800260C,
        .name = "PALETTE RAM",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8002A8C,
        .name = "VRAM",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8002C70,
        .name = "OAM",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8002FB8,
        .name = "CARTRIDGE TYPE FLAG",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8003010,
        .name = "PREFETCH BUFFER",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_80030E8,
        .name = "WAIT STATE WAIT CONTROL",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_80031B8,
        .name = "CARTRIDGE RAM WAIT CONTROL",
    },
};

sTestInstance lcdTests[] = {
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8003374,
        .name = "V COUNTER",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8003574,
        .name = "V COUNT INTR FLAG",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_80036A8,
        .name = "H BLANK INTR FLAG",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_80037BC,
        .name = "V BLANK INTR FLAG",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_80038E8,
        .name = "V COUNT STATUS",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8003A1C,
        .name = "H BLANK STATUS",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8003BBC,
        .name = "V BLANK STATUS",
    },
};

sTestInstance timerTests[] = {
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8008FB4,
        .name = "TIMER PRESCALER",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8009090,
        .name = "TIMER CONNECT",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_8009108,
        .name = "TIMER INTR FLAG",
    },
};

sTestInstance dmaTests[] = {
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A284,
        .name = "DMA0 ADDRESS CONTROL",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A29C,
        .name = "DMA1 ADDRESS CONTROL",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A2B4,
        .name = "DMA2 ADDRESS CONTROL",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A2CC,
        .name = "DMA3 ADDRESS CONTROL",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A34C,
        .name = "DMA V BLANK START",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A488,
        .name = "DMA H BLANK START",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A630,
        .name = "DMA DISPLAY START",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A838,
        .name = "DMA INTR FLAG",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800A9F0,
        .name = "DMA PRIORITY",
    },
};

sTestInstance comTests[] = {
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800AE30,
        .name = "MULTI PLAY SIO",
    },
};

sTestInstance keyTests[] = {
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800C02C,
        .name = "KEY INPUT",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800C0A4,
        .name = "KEY INPUT SIMPLE",
    },
};

sTestInstance interruptTests[] = {
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800C4F0,
        .name = "V BLANK INTR",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800C5DC,
        .name = "H BLANK INTR",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800C6C8,
        .name = "V COUNT INTR",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800C7B4,
        .name = "TIMER INTR",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800C924,
        .name = "SIO INTR",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800CA48,
        .name = "DMA INTR",
    },
    {
        .enabled = 1,
        .executed = 0,
        .result = 0,
        .funcPtr = sub_800CBF0,
        .name = "KEY INTR",
    },
};

sTestClass testClasses[] = {
    {   memTests,       sizeof(memTests) / sizeof(sTestInstance),          "MEMORY"        },
    {   lcdTests,       sizeof(lcdTests) / sizeof(sTestInstance),          "LCD"           },
    {   timerTests,     sizeof(timerTests) / sizeof(sTestInstance),        "TIMER"         },
    {   dmaTests,       sizeof(dmaTests) / sizeof(sTestInstance),          "DMA"           },
    {   comTests,       sizeof(comTests) / sizeof(sTestInstance),          "COM"           },
    {   keyTests,       sizeof(keyTests) / sizeof(sTestInstance),          "KEY INPUT"     },
    {   interruptTests, sizeof(interruptTests) / sizeof(sTestInstance),    "INTERRUPT"     },
};
