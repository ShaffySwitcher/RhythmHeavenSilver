.gba
.open "Game/rh-atlus.gba","Game/rh-eng.gba", 0x08000000

_skipwarningscreen equ 0
_skiprhythmtest equ 0
_debug equ 0
_debugmenu equ 1
_nocashmessages equ 1
_luaconsolemessages equ 1
_spriteluaconsolemessages equ 1

.include relocate.asm

.include Graphics/TitleScreen/TitleScreen.asm
.include Graphics/Rhythm_Games/Karate_Man/KarateMan1.asm
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
.include Graphics/Rhythm_Games/Marching_Orders/Marcher1.asm
.include Graphics/RhythmGame/miscgraphics.asm
.include Graphics/Rhythm_Games/The_Clappy_Trio/clappy1.asm
.include Graphics/RhythmGame/remix1/mix1.asm
.include Graphics/RhythmGame/spirit1/spirit1.asm
.include Graphics/RhythmGame/Samurai/samurai.asm
.include Graphics/Rhythm_Games/Cheese_Heist/cheese.asm
.include Graphics/RhythmGame/SickBeats/SickBeats.asm
.include Graphics/Rhythm_Games/TheBon_Odori/odori1.asm
.include Graphics/RhythmGame/remix2/mix2.asm
.include Graphics/RhythmGame/wizard/wizard.asm
.include Graphics/RhythmGame/Showtime/showtime.asm
.include Graphics/Rhythm_Games/Bunny_Hop/bunny.asm
.include Graphics/RhythmGame/Tram/tram.asm
.include Graphics/Rhythm_Games/Space_Dance/space1.asm
.include Graphics/RhythmGame/Remix3/remix3.asm
.include Graphics/RhythmGame/Quiz/quiz.asm
.include Graphics/Rhythm_Games/Night_Walk/night1.asm
.include Graphics/Rhythm_Games/Power_Calligraphy/calig.asm
.include Graphics/Rhythm_Games/Built_To_Scale/built1.asm
.include Graphics/RhythmGame/Rapmen/rapmen.asm
.include Graphics/RhythmGame/Remix4/remix4.asm
.include Graphics/Rhythm_Games/Bouncy_Road/hop1.asm
.include Graphics/Rhythm_Games/Ninja_Bodyguard/ninja1.asm
.include Graphics/RhythmGame/Toss1/toss1.asm
.include Graphics/Rhythm_Games/Fireworks/fworks.asm
.include Graphics/RhythmGame/Tap1/tap1.asm
.include Graphics/RhythmGame/Remix5/remix5.asm
.include Graphics/Rhythm_Games/The_Snappy_Trio/clappy2.asm
.include Graphics/RhythmGame/Odori2/bon2.asm
.include Graphics/Rhythm_Games/Cosmic_Dance/cosmo2.asm
.include Graphics/RhythmGame/RapWomen2/rapwom.asm
.include Graphics/RhythmGame/Tap2/tap2.asm
.include Graphics/RhythmGame/Remix6/remix6.asm
.include Graphics/RhythmGame/Ninja2/ninja2.asm
.include Graphics/Rhythm_Games/Marching_Orders_2/march2.asm
.include Graphics/RhythmGame/Remix7/remix7.asm
.include Graphics/RhythmGame/Toss2/toss2.asm
.include Graphics/RhythmGame/Remix8/remix8.asm
.include Graphics/ToysMenu/Toys/toys.asm
.include Graphics/EndlessMenu/games/games.asm
.include Graphics/WarningScreen/warningscreen.asm

.include asm_relocate.asm
.include asm.asm

;eof 
