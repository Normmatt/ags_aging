#include "gba/gba.h"
#include "definitions.h"

void sub_8006FB0()
{
    const struct ObjAffineSrcData v14[2] = {        // [sp+0h]
        {
            .xScale = 256,
            .yScale = 256,
            .rotation = 0x4000,
        },
        {
            .xScale = 128,
            .yScale = 128,
            .rotation = 0x4000,
        }
    };
    u32 v18;                                        // [sp+10h]
    u16 tileNum;                                    // [sp+14h]

    sub_800F35C(gUnknown_03001740, 0x400u, &gUnknown_08077464);
    tileNum = 0;
    gUnknown_03001740[0].tileNum = tileNum;
    gUnknown_03001740[0].y = 90;
    gUnknown_03001740[0].x = 0;
    gUnknown_03001740[0].priority = 2;

    tileNum += 0x80;
    gUnknown_03001740[1].bpp = 0;
    gUnknown_03001740[1].paletteNum = 15;
    gUnknown_03001740[1].tileNum = tileNum;

    tileNum += 0x40;
    gUnknown_03001740[2].tileNum = tileNum;
    gUnknown_03001740[2].shape = 1;
    gUnknown_03001740[2].size = 3;
    gUnknown_03001740[2].y = 90;
    gUnknown_03001740[2].x = 174;
    gUnknown_03001740[2].priority = 3;

    tileNum += 0x40;
    gUnknown_03001740[3].tileNum = tileNum;
    gUnknown_03001740[3].shape = 0;
    gUnknown_03001740[3].size = 2;
    gUnknown_03001740[3].y = 122;
    gUnknown_03001740[3].x = 174;
    gUnknown_03001740[3].priority = 3;

    tileNum += 0x20;
    gUnknown_03001740[4].tileNum = tileNum;
    gUnknown_03001740[4].shape = 2;
    gUnknown_03001740[4].size = 2;
    gUnknown_03001740[4].y = 122;
    gUnknown_03001740[4].x = 206;
    gUnknown_03001740[4].priority = 3;

    tileNum += 0x10;
    gUnknown_03001740[5].tileNum = tileNum;
    gUnknown_03001740[5].shape = 0;
    gUnknown_03001740[5].size = 1;
    gUnknown_03001740[5].y = 122;
    gUnknown_03001740[5].x = 222;
    gUnknown_03001740[5].priority = 3;

    tileNum += 0x8;
    gUnknown_03001740[6].tileNum = tileNum;
    gUnknown_03001740[6].shape = 1;
    gUnknown_03001740[6].size = 0;
    gUnknown_03001740[6].y = 138;
    gUnknown_03001740[6].x = 222;
    gUnknown_03001740[6].priority = 3;

    tileNum += 0x4;
    gUnknown_03001740[7].bpp = 0;
    gUnknown_03001740[7].paletteNum = 15;
    gUnknown_03001740[7].tileNum = tileNum;
    gUnknown_03001740[7].y = 0;
    gUnknown_03001740[7].x = 174;
    gUnknown_03001740[7].priority = 3;
    
    ObjAffineSet(v14, &gUnknown_03001740[0].affineParam, 2, 8);
    sub_8004630();
    DmaCopy32(3,gUnknown_081007F4,0x5000000,0x200);
    DmaCopy32(3,gUnknown_080BDF80,0x5000200,0x200);
    DmaCopy32(3,gUnknown_080BCF40,0x50003E0,0x20);
    sub_8004630();
    DmaCopy32(3,gUnknown_080D527C,0x6000000,0x8000);
    sub_8004630();
    DmaCopy32(3,gUnknown_080F96F8,0x600A800,0x4000);
    DmaCopy32(3,gUnknown_080F6A6C,0x600E800,0x800);
    sub_8004630();
    v18 = 0x6010000;
    DmaCopy32(3,gUnknown_080BE180,v18,0x1000); v18 += 0x1000;
    DmaCopy32(3,gUnknown_080BCF60,v18,0x800); v18 += 0x800;
    DmaCopy32(3,gUnknown_080C1780,v18,0x800); v18 += 0x800;
    DmaCopy32(3,gUnknown_080C2180,v18,0x400); v18 += 0x400;
    DmaCopy32(3,gUnknown_080C2780,v18,0x200); v18 += 0x200;
    DmaCopy32(3,gUnknown_080C2B80,v18,0x100); v18 += 0x100;
    DmaCopy32(3,gUnknown_080C2E80,v18,0x80); v18 += 0x80;
    DmaCopy32(3,gUnknown_080BD780,v18,0x800); v18 += 0x800;
    sub_8004630();
    sub_8004518();
    REG_BG2CNT = 0x1D82;
    REG_BG3CNT = 0xD581u;
    REG_MOSAIC = 0x4400;
    sub_8004630();
}