#ifndef DEFINITIONS_AGB_H
#define DEFINITIONS_AGB_H

#include "gba/types.h"

#define SystemCall(No)   asm ("SWI    "#No"")

// to help in decompiling
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#define SRAM_BASE ((u16 *)0xE000000)

typedef struct OamData sOamData;

// define a function pointer type
typedef void (*void_pointer)(void);
typedef s32 (*result_pointer)(void);
typedef s32 (*test3_pointer)(void *a1, void *a2);
typedef void (*display_test_function)(u32 target);
typedef void (*display_test_function4)(u32 target, u32 unk1, u32 unk2, u32 unk3);

//Structs
typedef struct sSettings
{
  u32 default_option;
  u32 isAGS;
  s32 aging_time;
  u32 field_C;
  u32 field_10;
  u16 field_14;
  u16 checksum;
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

typedef struct struct_3001B40_windowinfo
{
  u32 x_offset;
  u32 y_offset;
  u32 max_width;
  u32 max_height;
  u32 wrap_text;
} struct_3001B40_windowinfo;

typedef struct struct_3001B40
{
  s32 x;
  s32 y;
  u16 BG0_Tilemap[1024];
  u16 BG1_Tilemap[1024];
  u16 bg1_tile_number;
  u16 unused;
  struct_3001B40_windowinfo windowinfo;
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

typedef struct sTest
{
  test3_pointer funcPtr;
  char *name;
} sTest;

typedef struct sTestCollection
{
  const sTest *testsPtr;
  int numTests;
} sTestCollection;

typedef struct sTestInstance
{
  int enabled;
  int executed;
  int result;
  result_pointer funcPtr;
  char *name;
} sTestInstance;

typedef struct sTestClass
{
  sTestInstance *testsPtr;
  int numTests;
  char *name;
} sTestClass;

typedef struct struct_80011C4
{
  const menuOption *menu_option;
  u32 initial_idx;
  u32 selected_idx;
  s32 num_entries;
  u32 submenu_indexes[8];
} struct_80011C4;

typedef struct sDisplayTest
{
  const display_test_function handler;
  u32 num;
} sDisplayTest;

typedef struct sDisplayTest2
{
  const void_pointer handler;
  s32 num;
} sDisplayTest2;


//Functions
//main.c
extern void AgbMain();
//sub_8000200.c
extern u32 sub_8000200();
extern void sub_800028C();
//sub_8000370.c
extern void testprogramMain();
extern void sub_80003E8();
extern void sub_8000430();
//aging_main.c
extern void agingMain();
//sub_800060C.c
extern void sub_800060C();
extern void sub_8000684();
extern void sub_8000728();
//selftest_main.c
extern void selftestMain();
//sub_800081C.c
extern void DrawFinalTestResult(u32 a1);
//sub_800095C.c
extern void sub_800095C();
extern void j_UpdateTilemaps();
//sub_8000A04.c
extern void DrawHeading(const char *a1);
//sub_8000AD4.c
extern u32 RunAllTestClasses();
extern void EnableAllTests();
extern void DisableSpecificTestInClass(u32 a1, u32 a2);
extern void DisableAllTestsInThisClass(u32 a1);
extern void ClearAllTestClassesResults();
#define NUM_TEST_CLASSES 7
extern sTestClass testClasses[NUM_TEST_CLASSES];
//sub_8000CF4.c
extern void DrawTestResults();
//sub_8000E14.c
extern void DrawPassFailResult(sTestInstance *instance, int numTests);
extern s32 StartTest(u32 classId, u32 instanceId);
extern void sub_8000FF0(const menuOption *a1, int a2);
extern void sub_80011C4(struct_80011C4 *a1);
extern s32 sub_8001240(struct_80011C4 *a1, s32 idx);
//sub_80012A4.c
extern void sub_80012A4(struct_80011C4 *a1);
extern void testmain(u32 option);
//sub_80014B0.c
extern void sub_80014B0();
extern const char gUnknown_08018800[];
//sub_8001888.c
extern void sub_8001888(vu32 a1);
//sub_8001AFC.c
extern void sub_8001AFC();
extern const sTest* sub_8001EFC(u32 a1);
//sub_8001F80.c
extern void sub_8001F80(u32 a1);
//sub_8001FA8.c
extern void sub_8001FA8(u32 *a1);
extern const char gUnknown_08019080[];

extern void sub_8002024(u32 *a1);

extern void sub_80020A0(u32 a1); //Tests after this?

extern s32 sub_80020C8(void *a1, void *a2);
extern s32 sub_80020E8(u32 *a1);
extern s32 sub_80021EC(void *a1, void *a2);
extern s32 sub_80022E4(void *a1, void *a2);
extern void sub_8002304();
extern s32 sub_8002628(void *a1, void *a2);
extern s32 sub_8002AB4(void *a1, void *a2);
extern s32 sub_8002C8C(void *a1, void *a2);
extern s32 sub_8002CAC(void *a1, void *a2);
extern s32 sub_8002F60(void *a1, void *a2);
extern s32 sub_8002FF4(void *a1, void *a2);
extern s32 sub_800308C(void *a1, void *a2);
extern s32 sub_80030A8(void *a1, void *a2);
extern s32 sub_800319C(void *a1, void *a2);
extern s32 sub_8003250(void *a1, void *a2);
extern u32 sub_800326C();
extern u32 sub_800326C_end;
extern s32 sub_800329C(u32 a1, u16 a2);
extern u32 sub_800329C_end;
extern s32 sub_8003310(u16 a1);
extern u32 sub_8003310_end;
extern s32 sub_8003374();

extern s32 sub_8003558(void *a1, void *a2);
extern s32 sub_8003610(void *a1, void *a2);
extern void sub_800362C();
extern s32 sub_8003744(void *a1, void *a2);
extern void sub_8003760();
extern s32 sub_8003858(void *a1, void *a2);
extern void sub_8003874();
extern s32 sub_8003A00(void *a1, void *a2);
extern s32 sub_8003BA0(void *a1, void *a2);
extern s32 sub_8003C6C(void *a1, void *a2);
extern s32 sub_8003C88(u16 *a1, u32 a2);
extern u32 sub_8003C88_end;
extern s32 sub_8003CF0(u32 *a1, u32 a2);
extern u32 sub_8003CF0_end;
extern s32 sub_8003D38(u16 *a1, u32 a2);
extern u32 sub_8003D38_end;
extern s32 sub_8003DAC(u16 *a1, u32 a2);
extern u32 sub_8003DAC_end;

//sub_8003DF4.c
extern u32 sub_8003DF4(struct_v5 *a1, void *a2);
extern void sub_8003ED0(u32 *a1);
extern void sub_8004038();
extern void sub_800413C(const sDisplayTest *a1, s32 a2);
extern void sub_8004258();
extern void sub_80043F4();
extern void sub_80044F8();
extern void sub_8004518();
extern void sub_80045B8(u8 *a1);
extern void sub_8004630();
extern void sub_800465C();
extern void sub_8004714(u32 target);

//sub_8004A90.c
extern void sub_8004A90(u32 target);
extern void sub_8004B40();
extern void sub_8004B58();
extern void sub_8004B94();
extern void sub_8004BD0();
extern void sub_8004C0C();
extern void sub_8004C4C();
extern void sub_8004C8C();
extern void sub_8004CC8();
extern void sub_8004D04();
extern void sub_8004D44();
extern void sub_8004D9C();
extern void sub_8004DF0();
extern void sub_8005084();
extern void sub_80053C8();

//sub_80055D4.c
extern void sub_80055D4(u32 target);
extern void sub_8005698();
extern void sub_80056C4();
extern void sub_80056F0();
extern void sub_800571C();
extern void sub_800575C();
extern void sub_800579C();
extern void sub_8005848();
extern void sub_80058F4();
extern void sub_8005998();
extern void sub_8005D58();
extern void sub_80064BC();
extern void sub_800661C();

//sub_8006750.c
extern void sub_8006750(u32 target);
extern void sub_80067D0();
extern void sub_80068A8();
extern void sub_8006980();
extern void sub_8006A58();
extern void sub_8006B38();
extern void sub_8006C20();
extern void sub_8006D00();
extern void sub_8006DE0();
extern void sub_8006EC8();

//sub_8007704.c
extern void sub_8007704(u32 target);
extern void sub_8007784();
extern void sub_80077D0();
extern void sub_800781C();
extern void sub_8007868();
extern void sub_80078B4();
extern void sub_8007904();
extern void sub_8007950();
extern void sub_8007998();

//sub_8007C34.c
extern void sub_8007C34(u32 target);
extern void sub_8007CB4();
extern void sub_8007CCC();
extern void sub_8007CE4();

//sub_8007F0C.c
extern void sub_8007F0C(u32 target);
extern void sub_8007F8C();
extern void sub_8007FA4();
extern void sub_8007FBC();

//sub_8008118.c
extern void sub_8008118();

//sub_8008ADC.c
extern s32 sub_8008ADC(u32 *a1, void *a2);

//sub_8008FB4.c
extern s32 sub_8008FB4();
extern s32 sub_8009074();
extern s32 sub_8009090();
extern s32 sub_80090EC();
extern s32 sub_8009108();
extern s32 sub_8009240();

//sub_800925C.arm.s
extern u16 sub_800925C(void *a1, u32 a2);
extern u32 sub_800925C_end;
extern u16 sub_8009294(u32 a1);
extern u32 sub_8009294_end;
extern void sub_80092FC(u32 us); //Delay?
extern u32 sub_80092FC_end;

extern s32 sub_8009074(void *a1, void *a2);
extern s32 sub_80090EC(void *a1, void *a2);
extern s32 sub_8009240(void *a1, void *a2);

extern s32 sub_800A2E4(void *a1, void *a2);
extern s32 sub_800A46C(void *a1, void *a2);
extern s32 sub_800A614(void *a1, void *a2);
extern s32 sub_800A788(void *a1, void *a2);
extern s32 sub_800A7A4(void *a1, void *a2);
extern s32 sub_800A9D4(void *a1, void *a2);
extern s32 sub_800AC88(void *a1, void *a2);

extern s32 sub_800ACA4(void *a1, void *a2);
extern s32 sub_800AEF0(void *a1, void *a2);
extern s32 sub_800B2EC(void *a1, void *a2);
extern s32 sub_800B50C(void *a1, void *a2);
extern s32 sub_800B724(void *a1, void *a2);
extern s32 sub_800B7DC(void *a1, void *a2);
extern s32 sub_800B8D0(void *a1, void *a2);
extern s32 sub_800B91C(void *a1, void *a2);
extern s32 sub_800BA64(void *a1, void *a2);

extern s32 sub_800C04C(void *a1, void *a2);
extern s32 sub_800C0B8(void *a1, void *a2);

extern s32 sub_800C5C0(void *a1, void *a2);
extern s32 sub_800C6AC(void *a1, void *a2);
extern s32 sub_800C798(void *a1, void *a2);
extern s32 sub_800C8AC(void *a1, void *a2);
extern s32 sub_800C9D4(void *a1, void *a2);
extern s32 sub_800CB50(void *a1, void *a2);
extern s32 sub_800CCB8(void *a1, void *a2);
extern s32 sub_800CD3C(void *a1, void *a2);

extern s32 sub_800CE04(void *a1, void *a2);
extern s32 sub_800CE3C(void *a1, void *a2);

extern void DrawInputButtons(int isAGS);
extern void sub_800C2C8(u32 a1, u16 a2);

u32 WriteAndVerifyMemory_U8(u32 start_address, u32 end_address, u8 val, u32 *diff_address_out, u32 *diff_val_out);
s32 WriteAndVerifyWord_ASM(u32 start_address, u32 end_address, u32 *diff_address_out, u32 *diff_val_out);
u32 WriteAndVerifyMemory_U32(u32 start_address, u32 end_address, u32 val, u32 *diff_address_out, u32 *diff_val_out);
s32 TimeDmaToAndFromMemory_U16(u32 start_address, u16 unit_size);
s32 TimeDmaToAndFromMemory_U32(u32 start_address, u16 unit_size, u32 bit_width);
extern u32 sub_800D52C(u32 start_address, u32 end_address, u32 val, u32 *diff_address_out, u32 *diff_val_out);

extern void sub_800D5F4();
extern void WaitForInterrupt(u16 irq);
extern void_pointer SetInterruptHandler(u16 a1, void_pointer a2);
extern u16 SetIME(u16 a1);
extern u16 SetIE(u16 a1);
extern void SaveAndDisableInterruptHandlers(sInterruptSetup *a1, u16 ime, u16 ie);
extern void RestoreInterruptHandlers(sInterruptSetup *a1);
extern void ReadKeyPlus();
extern void ReadKey();
extern void sub_800DA4C();
extern void sub_800DD50(u32, const void *, u32, u32 (*)(u32 *, u8 *));
extern void UpdateTilemaps();
extern void DrawString(s32 x, s32 y, const char *str);
extern void sub_800E710(u32 a1);
extern void sub_800E9C0(u32 a1);
extern void sub_800EA20();
extern void sub_800EB08(u32 a1);
extern void sub_800EC94();
extern void sub_800ECB4();
extern void sub_800ECD4(u32 *cmd_out, u32 *expected_response);
extern void sub_800ED48(u32 a1, u32 a2, u32 *a3);
extern s32 CheckSaveForEepromMagic();
extern void ResetConfiguration();
extern s32 LoadConfiguration();
extern void UpdateChecksum();
extern u16 CalculateConfigurationChecksum();
extern void sub_800F35C(void *dst, u32 len, sOamData *qword);
extern u32 GetSystemRomChecksum();

extern s32 Test_CallFromStack_ASM(void_pointer a1, void_pointer a2, u32 a3, u32 a4);

// sub_800E9C0.c
s32 sub_800EB70(u16, char *);
s32 sub_800EBF0(u16, char *);

//
extern const sDisplayTest gUnknown_08019198[50];
extern const sDisplayTest gUnknown_08019328[24];
extern const sDisplayTest gUnknown_080193E8[10];
extern const sDisplayTest gUnknown_08019438[3];
extern const sDisplayTest2 gUnknown_080194D8[11];
extern const sDisplayTest2 gUnknown_080195A0[8];
extern const sDisplayTest2 gUnknown_0801967C[9];
extern const struct ObjAffineSrcData gUnknown_08019738[2];
extern const sDisplayTest2 gUnknown_08019790[7];
extern const sDisplayTest2 gUnknown_08019804[2];
extern const sDisplayTest2 gUnknown_08019838[2];
extern u8 gUnknown_08019864[];
extern u8 gUnknown_0802C464[];
extern u8 gUnknown_0803F064[];
extern u8 gUnknown_08051C64[];
extern u8 gUnknown_08064864[];

//sound.c
extern void m4aSoundInit();
extern void m4aSoundMain();
extern void m4aSongNumStart(int a1);
extern void m4aMPlayAllStop();
extern void SoundVSync_rev01();
extern void SoundVSyncOff_rev01();

//EWRAM
extern u16 gUnknown_02000000;

//IWRAM
extern u32 gUnknown_03000000;
extern u32 gUnknown_03000350;
extern u32 gUnknown_0300045C;
extern keyStatus gUnknown_03000460;
extern struct BgAffineSrcData gUnknown_03000354;
extern struct BgAffineSrcData gUnknown_03000368;
extern struct BgAffineSrcData gUnknown_0300037C;
extern struct BgAffineSrcData gUnknown_03000390;
extern struct BgAffineSrcData gUnknown_030003A4;
extern struct BgAffineSrcData gUnknown_030003B8;
extern struct BgAffineSrcData gUnknown_030003CC;
extern struct BgAffineSrcData gUnknown_030003E0;
extern struct BgAffineSrcData gUnknown_030003F4;
extern struct BgAffineSrcData gUnknown_03000408;
extern vu32 gUnknown_03001080;
extern u32 gUnknown_03001088[6];
extern s32 gUnknown_030010A0;
extern s32 gUnknown_03001730;
extern s32 gUnknown_03001734;
extern sOamData gUnknown_03001740[];
extern u8 gUnknown_03001746[];
extern struct_3001B40 gUnknown_03001B40;
extern sSettings gUnknown_03002BB0;
extern u8 gUnknown_03003D10[];
extern u8 gUnknown_03003D50[];
//extern u16 gUnknown_03007FF8;
#define gUnknown_03007FF8 *(u16*)0x03007FF8

//Data
//extern u16 gUnknown_080ECF78[8];
extern sOamData gUnknown_08077464;
extern sOamData gUnknown_0807746C;
extern sOamData gUnknown_08077474;
extern sOamData gUnknown_0807747C;
extern sOamData gUnknown_08077484;
extern sOamData gUnknown_0807748C;
extern sOamData gUnknown_08077884;
extern u8 gUnknown_08077494[];
extern u8 gUnknown_08083340[];
extern u8 gUnknown_08095F40[];
extern u8 gUnknown_08096140[];
extern u8 gUnknown_0809F940[];
extern u8 gUnknown_080A8F40[];
extern u8 gUnknown_080B2F40[];
extern u8 gUnknown_080BCF40[];
extern u8 gUnknown_080BCF60[];
extern u8 gUnknown_080BD780[];
extern u8 gUnknown_080BDF80[];
extern u8 gUnknown_080BE180[];
extern u8 gUnknown_080BF380[];
extern u8 gUnknown_080C0380[];
extern u8 gUnknown_080C0580[];
extern u8 gUnknown_080C1780[];
extern u8 gUnknown_080C2180[];
extern u8 gUnknown_080C2780[];
extern u8 gUnknown_080C2B80[];
extern u8 gUnknown_080C2E80[];
extern u8 gUnknown_080C2F00[];
extern u8 gUnknown_080C3100[];
extern u8 gUnknown_080C33C0[];
extern u8 gUnknown_080C3BC0[];
extern u8 gUnknown_080C3DC0[];
extern u8 gUnknown_080C4080[];
extern u8 gUnknown_080C4880[];
extern u8 gUnknown_080C48A0[];
extern u8 gUnknown_080C4A20[];
extern u8 gUnknown_080CCE50[];
extern u8 gUnknown_080D527C[];
extern u8 gUnknown_080DD6AC[];
extern u8 gUnknown_080E5ADC[];
extern u8 gUnknown_080EDF0C[];
extern u8 gUnknown_080EE7DC[];
extern u8 gUnknown_080EF0AC[];
extern u8 gUnknown_080EF97C[];
extern u8 gUnknown_080F024C[];
extern u8 gUnknown_080F0B1C[];
extern u8 gUnknown_080F13EC[];
extern u8 gUnknown_080F1CBC[];
extern u8 gUnknown_080F2E08[];
extern u8 gUnknown_080F3F54[];
extern u8 gUnknown_080F61A0[];
extern u8 gUnknown_080F6A6C[];
extern u8 gUnknown_080F6BD8[];
extern u8 gUnknown_080F74AC[];
extern u8 gUnknown_080F96F8[];
extern u8 gUnknown_080FDF44[];
extern u8 gUnknown_080FE814[];
extern u8 gUnknown_080FF0E4[];
extern u8 gUnknown_080FF254[];
extern u8 gUnknown_080FFB24[];
extern u8 gUnknown_081003F4[];
extern u8 gUnknown_081005F4[];
extern u8 gUnknown_081007F4[];
extern u8 gUnknown_081009F4[];



#endif  // GUARD_AGB_SRAM_H
