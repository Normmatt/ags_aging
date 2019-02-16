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

typedef struct struct_3001B40_sub
{
  void *callback;
  u16 tile_number;
  u16 unk;
} struct_3001B40_sub;


typedef struct struct_3001B40
{
  s32 x;
  s32 y;
  u16 BG0_Tilemap[1024];
  u16 BG1_Tilemap[1024];
  u16 bg1_tile_number;
  u16 unused;
  u32 x_offset;
  u32 y_offset;
  u32 max_width;
  u32 max_height;
  u32 wrap_text;
  u16 number_of_tiles;
  u16 unused2;
  struct_3001B40_sub special_handlers[8];
} struct_3001B40;

typedef struct menuOption
{
  u32 level;
  const char *name;
  void_pointer handler;
} menuOption;

typedef struct struct_v5_1
{
  u32 dword0;
  u32 dword4;
  u32 dword8;
  u32 dwordC;
  u32 dword10;
  u32 dword14;
  u32 dword18;
} struct_v5_1;

typedef struct struct_v5
{
  u32 dword0;
  struct_v5_1 field4;
} struct_v5;


typedef struct sTestInstance
{
  int enabled;
  int executed;
  int result;
  void_pointer funcPtr;
  char *name;
} sTestInstance;

typedef struct sTestClass
{
  sTestInstance *testsPtr;
  int numTests;
  char *name;
} sTestClass;




//Functions
extern u32 sub_8000200();
extern void sub_800028C();
extern void testprogramMain();
extern void sub_80003E8();
extern void sub_8000430();
extern void agingMain();
extern void sub_800060C();
extern void sub_8000684();
extern void sub_8000728();
extern void selftestMain();
extern void DrawFinalTestResult(u32 a1);
extern void sub_800095C();
extern void DrawHeading(const char *a1);
extern u32 RunAllTestClasses();
extern void EnableAllTests();
extern void DisableSpecificTestInClass(u32 a1, u32 a2);
extern void DisableAllTestsInThisClass(u32 a1);
extern void ClearAllTestClassesResults();
extern void DrawTestResults();
extern void DrawPassFailResult(sTestInstance *instance, int numTests);
extern s32 StartTest(u32 classId, u32 instanceId);
extern void sub_8000FF0(const menuOption *a1, int a2);
extern void testmain(u32 option);
extern void sub_80014B0();
extern u32 sub_8003DF4(struct_v5 *a1, u32 *a2);
extern void sub_8008118();
extern void sub_800D5F4();
extern void WaitForInterrupt(u16 irq);
extern void_pointer SetInterruptHandler(u16 a1, void_pointer a2);
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
extern u32 gUnknown_03000000;
extern u32 gUnknown_0300045C;
extern keyStatus gUnknown_03000460;
extern struct_3001B40 gUnknown_03001B40;
extern sSettings gUnknown_03002BB0;

//Data
//extern u16 gUnknown_080ECF78[8];

#endif  // GUARD_AGB_SRAM_H
