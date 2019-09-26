#include "gba/gba.h"
#include "definitions.h"

s32 sub_8008ADC(u32 *a1, void *a2)
{
    u16 v11[4] = { 0x5F4, 0x6FA, 0x77D, 0x7BE };        // [sp+8h]
    u16 v12[4] = { 0x7CE9, 0xBE75, 0xDF3B, 0xEF9E };    // [sp+10h]
    u32 v13; // [sp+18h]
    u32 v14; // [sp+1Ch]
    u8 v15[2];  // [sp+20h]

    REG_SOUNDCNT_X = 0x80;
    REG_SOUNDCNT_L = ((a1[0] & 0x80) ? 0x8000 : 0)     | 
                     ((a1[0] & 0x20) ? 0x4000 : 0)     |
                     ((a1[0] & 0x08) ? 0x2000 : 0)     |
                     ((a1[0] & 0x02) ? 0x1000 : 0)     |
                     ((a1[0] & 0x40) ? 0x0800 : 0)     |
                     ((a1[0] & 0x10) ? 0x0400 : 0)     |
                     ((a1[0] & 0x04) ? 0x0200 : 0)     |
                     ((a1[0] & 0x01) ? 0x0100 : 0)     |
                     (((a1[1] >> 8) & 7) << 4)         |
                     (a1[1] & 7);

    REG_SOUNDCNT_H = ((a1[0] & 0x800) ? 0xE000 : 0xC000) |
                     ((a1[0] & 0x400) ? 0x1800 : 0x800)  |
                     ((a1[0] & 0x200) ? 0x0200 : 0)      |
                     ((a1[0] & 0x100) ? 0x0100 : 0)      |
                     (a1[2] & 0xF);
    REG_SOUND1CNT_L = 8;
    REG_SOUND1CNT_H = 0xF080u;
    REG_SOUND1CNT_X = v11[a1[3] & 3] | 0x8000;
    REG_SOUND2CNT_L = 0xF080u;
    REG_SOUND2CNT_H = v11[(a1[3] >> 2) & 3] | 0x8000;
    REG_SOUND3CNT_L = 0xE0;
    REG_WAVE_RAM0 = 0;
    REG_WAVE_RAM1 = -1;
    REG_WAVE_RAM2 = 0;
    REG_WAVE_RAM3 = -1;
    REG_SOUND3CNT_L = 0xA0;
    REG_WAVE_RAM0 = 0;
    REG_WAVE_RAM1 = -1;
    REG_WAVE_RAM2 = 0;
    REG_WAVE_RAM3 = -1;
    REG_SOUND3CNT_H = 0x2000;
    REG_SOUND3CNT_X = v11[(a1[3] >> 4) & 3] | 0x8000;
    REG_SOUND4CNT_L = 0xF000u;
    REG_SOUND4CNT_H = 0x8037u;
    v15[0] = (a1[1] >> 16) & 0x7F;
    v15[1] = ~v15[0] + 1;
    v13 = (v15[0] << 24) | (v15[1] << 16) | (v15[0] << 8) | v15[1];
    REG_DMA1CNT = 0;
    REG_DMA1SAD = (vu32)&v13;
    REG_DMA1DAD = (vu32)&REG_FIFO_A;
    REG_DMA1CNT = 0xB7000000;
    REG_TM0CNT = 0;
    REG_TM0CNT = v12[(a1[3] >> 8) & 3] | 0x800000;
    v15[0] = (a1[1] >> 24) & 0x7F;
    v15[1] = ~v15[0] + 1;
    v14 = (v15[0] << 24) | (v15[1] << 16) | (v15[0] << 8) | v15[1];
    REG_DMA2CNT = 0;
    REG_DMA2SAD = (vu32)&v14;
    REG_DMA2DAD = (vu32)&REG_FIFO_B;
    REG_DMA2CNT = 0xB7000000;
    REG_TM1CNT = 0;
    REG_TM1CNT = v12[(a1[3] >> 8) & 3] | 0x800000;
    sub_800EC94();
    REG_SOUNDCNT_X = 0;
    REG_DMA1CNT = 0;
    REG_DMA2CNT = 0;
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
    return 0;
}