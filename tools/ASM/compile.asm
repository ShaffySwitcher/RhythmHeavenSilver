.gba
.open "ROM/rh-atlus.gba","ROM/rh-eng.gba", 0x08000000

_skipwarningscreen equ 0
_skiprhythmtest equ 0
_debug equ 0
_debugmenu equ 0
_nocashmessages equ 0
_luaconsolemessages equ 0

.if _debug==1
.notice "Debug flag enabled!"
_spriteluaconsolemessages equ 1 ; (Hotfix, for some reason _debug alone gives pool out of range errors.)
.endif

.include tools/ASM/relocate.asm

.include src/Graphics/TitleScreen/TitleScreen.asm
.include src/Graphics/Rhythm_Games/Karate_Man/KarateMan1.asm
.include src/Graphics/Mainmenu/mainmenu.asm
.include src/Graphics/Tutorial/tutorial.asm
.include src/Graphics/EmailSelectScreen/email.asm
.include src/Graphics/MusicSelect/musictest.asm
.include src/Graphics/Drums/drums.asm
.include src/Graphics/Options/options.asm
.include src/Graphics/ToysMenu/toymenu.asm
.include src/Graphics/EndlessMenu/endless.asm
.include src/Graphics/Drums/drums.asm
.include src/Graphics/RhythemGameSelect/gameselect.asm
.include src/Graphics/Rhythm_Games/Results_Screen/Results.asm
.include src/Graphics/Rhythm_Games/Spaceball/spaceball1.asm
.include src/Graphics/Rhythm_Games/Rhythm_Tweezers/Veggie1.asm
.include src/Graphics/Rhythm_Games/Marching_Orders/Marcher1.asm
.include src/Graphics/Rhythm_Games/MiscGraphics/miscgraphics.asm
.include src/Graphics/Rhythm_Games/The_Clappy_Trio/clappy1.asm
.include src/Graphics/Rhythm_Games/Remix_1/mix1.asm
.include src/Graphics/Rhythm_Games/Sneaky_Spirits/spirit1.asm
.include src/Graphics/Rhythm_Games/Samurai_Slice/samurai.asm
.include src/Graphics/Rhythm_Games/Rat_Race/cheese.asm
.include src/Graphics/Rhythm_Games/Sick_Beats/SickBeats.asm
.include src/Graphics/Rhythm_Games/TheBon_Odori/odori1.asm
.include src/Graphics/Rhythm_Games/Remix_2/mix2.asm
.include src/Graphics/Rhythm_Games/Wizard_Waltz/wizard.asm
.include src/Graphics/Rhythm_Games/Showtime/showtime.asm
.include src/Graphics/Rhythm_Games/Bunny_Hop/bunny.asm
.include src/Graphics/Rhythm_Games/Tram_Pauline/tram.asm
.include src/Graphics/Rhythm_Games/Space_Dance/space1.asm
.include src/Graphics/Rhythm_Games/Remix_3/remix3.asm
.include src/Graphics/Rhythm_Games/Quiz_Show/quiz.asm
.include src/Graphics/Rhythm_Games/Night_Walk/night1.asm
.include src/Graphics/Rhythm_Games/Power_Calligraphy/calig.asm
.include src/Graphics/Rhythm_Games/Polyrhythm/built1.asm
.include src/Graphics/Rhythm_Games/Rap_Men/rapmen.asm
.include src/Graphics/Rhythm_Games/Remix_4/remix4.asm
.include src/Graphics/Rhythm_Games/Bouncy_Road/hop1.asm
.include src/Graphics/Rhythm_Games/Ninja_Bodyguard/ninja1.asm
.include src/Graphics/Rhythm_Games/Toss_Boys/toss1.asm
.include src/Graphics/Rhythm_Games/Fireworks/fworks.asm
.include src/Graphics/Rhythm_Games/Tap_Trial/tap1.asm
.include src/Graphics/Rhythm_Games/Remix_5/remix5.asm
.include src/Graphics/Rhythm_Games/The_Snappy_Trio/clappy2.asm
.include src/Graphics/Rhythm_Games/TheBon_Dance/bon2.asm
.include src/Graphics/Rhythm_Games/Cosmic_Dance/cosmo2.asm
.include src/Graphics/Rhythm_Games/Rap_Women/rapwom.asm
.include src/Graphics/Rhythm_Games/Turbo_Tap_Trial/tap2.asm
.include src/Graphics/Rhythm_Games/Remix_6/remix6.asm
.include src/Graphics/Rhythm_Games/Ninja_Bodyguard_2/ninja2.asm
.include src/Graphics/Rhythm_Games/Marching_Orders_2/march2.asm
.include src/Graphics/Rhythm_Games/Remix_7/remix7.asm
.include src/Graphics/Rhythm_Games/Toss_Boys_2/toss2.asm
.include src/Graphics/Rhythm_Games/Remix_8/remix8.asm
.include src/Graphics/ToysMenu/Toys/toys.asm
.include src/Graphics/EndlessMenu/games/games.asm
.include src/Graphics/Warning_Screen/warningscreen.asm

.include tools/ASM/asm_relocate.asm
.include tools/ASM/asm.asm

.close
;eof 
