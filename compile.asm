; Show that this need need to be compile for GBA
.gba 
; Open the file called "rh-atlus.gba" and open it at offset 0x08000000 (the ROM)
.open "Game/rh-atlus.gba","Game/rh-eng.gba", 0x08000000

; Variables

; Skip the warning screen (1 = yes, 0 = no)
_skipwarningscreen equ 1
; Skip the Rhythm Test when creating a new save (1 = yes, 0 = no)
_skiprhythmtest equ 0
; To-Document later
_debug equ 1
; Have to do with something?
_nocashmessages equ 0
; ????
_luaconsolemessages equ 1
; ????
_spriteluaconsolemessages equ 1

.include relocate.asm

.include Graphics/TitleScreen/TitleScreen.asm
.include Graphics/RhythmGame/KarateMan1/KarateMan1.asm
.include Graphics/Mainmenu/mainmenu.asm
.include Graphics/Tutorial/tutorial.asm
.include Graphics/EmailSelectScreen/email.asm
.include Graphics/MusicSelect/musictest.asm
.include Graphics/Drums/drums.asm
.include Graphics/Options/options.asm
.include Graphics/ToysMenu/toymenu.asm
.include Graphics/EndlessMenu/endless.asm
.include Graphics/Drums/drums.asm
.include Graphics/RhythemGameSelect/gameselect.asm
.include Graphics/RhythmGame/Results/Results.asm
.include Graphics/RhythmGame/spaceball1/spaceball1.asm
.include Graphics/RhythmGame/Veggie1/Veggie1.asm
.include Graphics/RhythmGame/marcher1/Marcher1.asm
.include Graphics/RhythmGame/miscgraphics.asm
.include Graphics/RhythmGame/clappy1/clappy1.asm
.include Graphics/RhythmGame/remix1/mix1.asm
.include Graphics/RhythmGame/spirit1/spirit1.asm
.include Graphics/RhythmGame/Samurai/samurai.asm
.include Graphics/RhythmGame/Cheese/cheese.asm
.include Graphics/RhythmGame/DrBact/drbact.asm
.include Graphics/RhythmGame/bonodori1/odori1.asm
.include Graphics/RhythmGame/remix2/mix2.asm
.include Graphics/RhythmGame/wizard/wizard.asm
.include Graphics/RhythmGame/Showtime/showtime.asm
.include Graphics/RhythmGame/BunnyHop/bunny.asm
.include Graphics/RhythmGame/Tram/tram.asm
.include Graphics/RhythmGame/Space1/space1.asm
.include Graphics/RhythmGame/Remix3/remix3.asm
.include Graphics/RhythmGame/Quiz/quiz.asm
.include Graphics/RhythmGame/Nightwalk/night1.asm
.include Graphics/RhythmGame/Calig/calig.asm
.include Graphics/RhythmGame/built1/built1.asm
.include Graphics/RhythmGame/Rapmen/rapmen.asm
.include Graphics/RhythmGame/Remix4/remix4.asm
.include Graphics/RhythmGame/Hop1/hop1.asm
.include Graphics/RhythmGame/Ninja1/ninja1.asm
.include Graphics/RhythmGame/Toss1/toss1.asm
.include Graphics/RhythmGame/Fworks/fworks.asm
.include Graphics/RhythmGame/Tap1/tap1.asm
.include Graphics/RhythmGame/Remix5/remix5.asm
.include Graphics/RhythmGame/clappy2/clappy2.asm
.include Graphics/RhythmGame/Odori2/bon2.asm
.include Graphics/RhythmGame/cosmo2/cosmo2.asm
.include Graphics/RhythmGame/RapWomen2/rapwom.asm
.include Graphics/RhythmGame/Tap2/tap2.asm
.include Graphics/RhythmGame/Remix6/remix6.asm
.include Graphics/RhythmGame/Ninja2/ninja2.asm
.include Graphics/RhythmGame/Marcher2/march2.asm
.include Graphics/RhythmGame/Remix7/remix7.asm
.include Graphics/RhythmGame/Toss2/toss2.asm
.include Graphics/RhythmGame/Remix8/remix8.asm
.include Graphics/ToysMenu/Toys/toys.asm

.include asm_relocate.asm
.include asm.asm

;eof 
