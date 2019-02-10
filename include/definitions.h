#ifndef DEFINITIONS_AGB_H
#define DEFINITIONS_AGB_H

#include "gba/types.h"

// define a function pointer type
typedef void (*void_pointer)(void);

//Structs
typedef struct sSettings
{
  u32 field_0;
  u32 isAGS;
  u32 field_8;
  u32 field_C;
  u32 field_10;
  u16 field_14;
  u16 field_16;
  u16 field_18;
  u16 field_1A;
  u16 field_1C;
  u16 field_1E;
} sSettings;

typedef struct sInterruptSetup
{
  u16 ime;
  u16 ie;
  void_pointer handler[16];
} sInterruptSetup;

typedef struct keyStatusTag
{
  u16 Cont;
  u16 Trg;
  u32 intervalCount;
  u32 intervalMax;
} keyStatus;

typedef struct struct_3001B40
{
  int field_0;
  int field_4;
} struct_3001B40;


//Functions
extern u32 sub_8000200();
extern void sub_800028C();
extern void testprogramMain();
extern void DrawHeading(const char *a1);
extern void testmain(u32 option);
extern void sub_800D5F4();
extern void WaitForInterrupt(u16 irq);
extern u16 SetIME(u16 a1);
extern u16 SetIE(u16 a1);
extern void sub_800D790(sInterruptSetup *a1, u16 ime, u16 ie);
extern void sub_800D854(sInterruptSetup *a1);
extern void ReadKeyPlus();
extern void ReadKey();
extern void UpdateTilemaps();
extern void DrawString(s32 x, s32 y, char *str);
extern void sub_800EB08(u32 a1);
extern s32 CheckSaveForEepromMagic();
extern void ResetConfiguration();
extern s32 LoadConfiguration();

//EWRAM
//extern u32 gUnknown_0200043C;

//IWRAM
extern u32 gUnknown_0300045C;
extern keyStatus gUnknown_03000460;
extern struct_3001B40 gUnknown_03001B40;
extern sSettings gUnknown_03002BB0;

//Data
//extern u16 gUnknown_080ECF78[8];

#endif  // GUARD_AGB_SRAM_H
