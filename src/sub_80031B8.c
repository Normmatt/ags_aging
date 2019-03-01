#include "gba/gba.h"
#include "definitions.h"

s32 sub_80031B8()
{
    u32 i;              // [sp+0h]
    u32 v1;              // [sp+4h]
    u32 v2;             // [sp+8h]
    s32 v3=0;           // [sp+Ch]
    u16 v4;             // [sp+10h]
    u32 v5[4] = {       // [sp+14h]
        0x1C, 0x18, 0x14, 0x2C
    };

    v4 = SetIME(0);
    v2 = 0;
    for ( i = 0; i <= 3; ++i )
    {
        //why does sub_8003374 have bit0 set?
        v1 = Test_CallFromStack_ASM((void_pointer)sub_8003310, (void_pointer)&sub_8003310_end, i, 0);
        if ( v1 != v5[i] )
            v3 |= 1 << v2;
        v2 = v2 + 1;
    }
    SetIME(v4);
    return v3;
}

s32 sub_8003250(void *a1, void *a2)
{
    return sub_80031B8();
}

/*NAKED
u32 sub_800326C()
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
                 ldr r4, =0x04000100\n\
                 movs r5, #0\n\
                 str r5, [r4]\n\
                 ldr r6, =0x00800000\n\
                 str r6, [r4]\n\
                 ldr r2, [r4]\n\
                 ldr r2, [r4]\n\
                 ldr r2, [r4]\n\
                 ldr r2, [r4]\n\
                 ldr r2, [r4]\n\
                 ldr r2, [r4]\n\
                 ldr r2, [r4]\n\
                 ldr r2, [r4]\n\
                 ldrh r0, [r4]\n\
                 str r5, [r4]\n\
                 pop {r4, r5, r6, r7}\n\
                 pop {r1}\n\
                 bx r1\n\
                 .pool");
}

NAKED
s32 sub_800329C()
{
    asm_unified(".arm\n\
                 stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}\n\
                 ldr r7, _08003304\n\
                 ldrh r8, [r7]\n\
                 ldrh sb, _08003308\n\
                 and sb, r8, sb\n\
                 add sl, r0, r0\n\
                 add sl, sl, r0\n\
                 add sl, sl, #2\n\
                 orr sb, sb, r1, lsl sl\n\
                 strh sb, [r7]\n\
                 mov r2, #0x8000000\n\
                 add r2, r2, r0, lsl #25\n\
                 ldr r4, _0800330C\n\
                 mov r5, #0\n\
                 str r5, [r4]\n\
                 mov r6, #0x800000\n\
                 str r6, [r4]\n\
                 ldr r3, [r2]\n\
                 ldr r3, [r2]\n\
                 ldr r3, [r2]\n\
                 ldr r3, [r2]\n\
                 ldrh r0, [r4]\n\
                 str r5, [r4]\n\
                 strh r8, [r7]\n\
                 ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}\n\
                 bx lr\n\
                 _08003304: .4byte 0x04000204\n\
	             _08003308: .byte 0x03, 0xF8, 0xFF, 0xFF\n\
                 _0800330C: .4byte 0x04000100\n\
                 .pool");
}*/