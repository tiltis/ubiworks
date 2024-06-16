/*
 * Copyright (c) 2022 Sung Ho Park and CSOS
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <ubinos_config.h>

    .syntax unified
    .arch   armv7-m

    .text
    .thumb

    .thumb_func
    .align  1
    .globl  memcpy_simple
    .type   memcpy_simple, %function
    /* memcpy_simple.h 에서 정의된 함수, memcpy_simple 를 구현하라. */
    // r0: void * destination, r1: void * source, r2: size_t size
    

memcpy_simple:
    push    {r4-r6, lr}        // 현재 레지스터를 스택에 저장
    mov     r4, r0             // 목적지 주소를 r4에 저장
    mov     r5, r1             // 소스 주소를 r5에 저장
    mov     r6, r2             // 복사할 바이트 수를 r6에 저장
loop:
    ldrb    r3, [r5], #1       // r5에서 바이트를 로드하고 r5를 증가
    strb    r3, [r4], #1       // r4에 바이트를 저장하고 r4를 증가
    subs    r6, r6, #1         // r6에서 1을 뺌
    bne     loop               // r6가 0이 아니면 분기
    mov     r0, r4
    pop     {r4-r6, pc}









    // r0: return value (void * destination)
    bx lr
