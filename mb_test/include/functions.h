#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"
#include "data.h"

void sub_02000278(void);
void sub_02000534(void);
void sub_02000920(s32, u16);
void UpdateTilemaps(void);
void DrawString(s32 x, s32 y, char *str);
u16 sub_02000D0C(s32 *, char *);
void DrawString_CheckAndWrap(void);
void DrawString_NewLine(void);
void DrawString_ClearText(void);
s32 sub_020010D8(s32 *, s32 *, char *);
s32 sub_0200113C(s32 *, char);
s32 sub_02001178(s32 *, char);
void sub_020011D0(s32);
void IntrMain(void);

#endif // GUARD_FUNCTIONS_H
