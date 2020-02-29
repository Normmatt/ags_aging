#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

// header
extern u8 SlaveIdNumber;

// types
typedef void (*IntrFunc)(void);

typedef struct sInterruptSetup
{
  u16 ime;
  u16 ie;
  IntrFunc handler[16];
} sInterruptSetup;

typedef struct struct_3001B40_sub
{
  u16 (*callback)(s32 *, char *);
  u16 tile_number;
  u16 unk;
} struct_3001B40_sub;

typedef struct struct_3001B40_windowinfo
{
  s32 x_offset;
  s32 y_offset;
  s32 max_width;
  s32 max_height;
  u32 wrap_text;
} struct_3001B40_windowinfo;

typedef struct struct_3001B40
{
  s32 x;
  s32 y;
  u16 BG0_Tilemap[32][32];
  u16 BG1_Tilemap[32][32];
  u16 bg1_tile_number;
  u16 unused;
  struct_3001B40_windowinfo windowinfo;
  u16 number_of_tiles;
  u16 unused2;
  struct_3001B40_sub special_handlers[8];
} struct_3001B40;

// ewram
extern u8 gUnk_02006E10[];
extern struct_3001B40_windowinfo gUnk_02006E48;
extern u16 gUnk_02006EA8[];
extern u8 gUnk_02007AB1[];

// iwram
extern IntrFunc gIntrTable[];
extern u8 gUnk_03000790[];
extern struct_3001B40 gUnk_03000970;

#endif // GUARD_DATA_H
