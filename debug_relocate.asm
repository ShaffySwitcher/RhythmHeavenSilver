.if _spriteluaconsolemessages==1
.align 2
SpriteLuaConsoleMessageHook:
push r0-r7
mov r1,0x80
lsl r1,r1,0x14
tst r0,r1
beq @@SkipAdding
ldr r1,=0x02021000
ldr r2,[r1]
cmp r2,0x13
ble @@addentry
mov r2,0
@@addentry:
add r3,r2,1
str r3,[r1]
add r1,4
lsl r3,r2,2
str r0,[r1,r3]
@@SkipAdding:
pop r0-r7
mov r2,r0
mov r1,0
mov r15,r14
.pool
.endif

; .if _debug ==1
; .align 2
; Debug_UnlockAllStages:
; push r0-r2,r14
; ldr r0,= 0x030046a8
; ldr r0,[r0]
; add r0,0x16
; mov r1,0x37
; mov r2,4
; @@fillstart:
; strb r2,[r0,r1]
; sub r1,1
; bge @@fillstart
; pop r0-r2,r15
; .pool

; Debug_UnlockAllMail:
; push r0-r2,r14
; ldr r0,=0x030046a8
; ldr r0,[r0]
; ldr r1,=0x27B
; add r0,r0,r1
; mov r1,0x13
; mov r2,1
; @@fillstart:
; strb r2,[r0,r1]
; sub r1,1
; bge @@fillstart
; pop r0-r2,r15
; .pool

; Debug_99Medals:
; push r0-r1,r14
; ldr r0,=0x030046a8
; ldr r0,[r0]
; ldr r1,=0x29E
; add r0,r0,r1
; mov r1,0xFF
; strb r1,[r0]
; pop r0-r1,r15
; .pool

; Debug_UnlockAllStages_Hook:
; push r14
; bl Debug_UnlockAllStages
; bl 0x080128B8
; pop r15

; Debug_UnlockAllMail_Hook:
; push r14
; bl 0x0800C3B8
; bl Debug_UnlockAllMail
; pop r15

; Debug_99Medals_Hook:
; push r14
; bl Debug_99Medals
; bl 0x0801D23C
; pop r15

; .endif
;eof
