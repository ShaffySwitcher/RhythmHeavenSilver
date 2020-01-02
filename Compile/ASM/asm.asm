.include Compile/ASM/lz77hack.asm
.include Compile/ASM/debug.asm
.if _skipwarningscreen==1
.org 0x08000454
.dw 0x089DD47C
.endif
.if _debugmenu==1 ;Thanks WindowsTiger
.org 0x0801CFD4
; 9DDBCC - Debug Menu (See: https://docs.google.com/document/d/1gwQz-1zzkr3CLOBLtUMTfsk2Xtd1zmoMDKJRhPMbqwg/edit#)
.dw 0x089DDBCC
; Doing it, that if no save is here it won't go to the Rhythm Introduction.
.org 0x0801D014
.dw 0x089DDBCC
.endif
.org 0x08019A2C
bl FixResultsCaps
.org 0x08019B80
;bl FixResultsCaps
.org 0x08019C80
bl FixResultsCaps
.org 0x08019CCA
bl FixResultsCaps
.org 0x0801d174
bl EndlessGamesPlural_Hook
;.org 0x0801d440
;mov r0,0;make it not remember last selection as a quick fix
;nop
;.org 0x0801d452
;mov r0,0;make it not remember last cursor position as a quick fix
;nop
;eof