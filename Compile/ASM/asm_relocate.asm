;.org 0x080B4F80
.org 0x080B4D48
.area (31*0x20)

;fix capitalization
FixResultsCaps:
; push r14
; mov r2,r0
; @@getmessagelength:
; ldrb r3,[r2]
; add r2,1
; cmp r3,0
; bne @@getmessagelength
; sub r2,1
; push r2
; bl 0x080081A8
; pop r2
; mov r0,r10
; cmp r0,0
; beq @@dontlowercase
; ldrb r0,[r2]
; cmp r0,0x41
; blt @@dontlowercase
; cmp r0,0x5A
; bgt @@dontlowercase
; add r0,0x20
; strb r0,[r2]
; @@dontlowercase:
; pop r15
push r4,r14
mov r4,0
@@getmessagelength:
ldrb r3,[r0,r4]
add r4,1
cmp r3,0
bne @@getmessagelength
sub r4,1
bl 0x080081A8
cmp r4,0
beq @@dontlowercase
ldrb r2,[r0,r4]
cmp r2,0x41
blt @@dontlowercase
cmp r2,0x5A
bgt @@dontlowercase
add r2,0x20
strb r2,[r0,r4]
@@dontlowercase:
pop r4,r15

MenuPluralTilesLookupTable:
;order top_no_s,bottom_no_s,top_with_s,bottom_no_s
;rhythmtoys
.dh 0x408E,0x409B,0x40B2,0x40B3
;endless
.dh 0x40AC,0x40B8,0x40CF,0x40D0
;drumblessons
.dh 0x60CA,0x60CB,0x60A7,0x60B3

;Adapt the plural of "Metals" in endless games
EndlessGamesPlural:
push r1-r4
ldr r1,=0x0600ec56
ldr r4,=MenuPluralTilesLookupTable
ldr r2,[r5]
ldrb r2,[r2,0x18]
lsl r2,r2,3
add r4,r4,r2
cmp r0,1
beq @@writetiles
add r4,r4,4
@@writetiles:
ldrh r2,[r4]
ldrh r3,[r4,2]
strh r2,[r1]
mov r2,0x40
strh r3,[r1,r2]
pop r1-r4
mov r15,r14
.pool

EndlessGamesPlural_Hook:
push r14
bl EndlessGamesPlural
bl 0x0801d388
pop r15
.include Compile/ASM/lz77hack_relocate.asm
.include Compile/ASM/debug_relocate.asm
.endarea

;eof