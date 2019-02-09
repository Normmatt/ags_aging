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


//Functions
extern u32 sub_8000200();
extern void sub_800028C();
extern void testprogramMain();
extern void testmain(u32 option);
extern void sub_800D5F4();
extern void sub_800EB08(u32 a1);
extern s32 CheckSaveForEepromMagic();
extern void ResetConfiguration();
extern s32 LoadConfiguration();

//EWRAM
//extern u32 gUnknown_0200043C;

//IWRAM
extern u16 gUnknown_03000462;
extern sSettings gUnknown_03002BB0;

//Data
//extern u16 gUnknown_080ECF78[8];

#endif  // GUARD_AGB_SRAM_H
