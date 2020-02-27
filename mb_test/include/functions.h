#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"
#include "data.h"

void sub_02000278(void);
void sub_02000534(void);
void sub_02000920(s32, u16);
void UpdateTilemaps(void);
void DrawString(s32 x, s32 y, const char *str);
u16 sub_02000D0C(u32 *, u8 *);
void sub_020011D0(s32);
void IntrMain(void);

#endif // GUARD_FUNCTIONS_H
