#include "gba/gba.h"
#include "definitions.h"

void sub_8001F80(u32 a1)
{
    char buf[128];       // [sp+4h]

    sprintf(buf, "NO:%08XH\n\n", a1);
    DrawString(0, 4, buf);
}