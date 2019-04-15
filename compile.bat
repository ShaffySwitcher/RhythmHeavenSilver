@echo off
del "Game\rh-atlus.gba"
copy "Game\rh-jpn.gba" "Game\rh-atlus.gba"
atlas "Game\rh-atlus.gba" script.txt

DSDecmp.exe -c lz10 Graphics/TitleScreen/CD7948_titlescreen_oam_tiles.bin Graphics/TitleScreen/CD7948_titlescreen_oam_tiles
DSDecmp.exe -c lz10 Graphics/RhythmGame/KarateMan1/Game/BE0480_karateman1_oam_tiles.bin Graphics/RhythmGame/KarateMan1/Game/BE0480_karateman1_oam_tiles
DSDecmp.exe -c lz10 Graphics/RhythmGame/KarateMan1/Intro/BE9F5C_karateman1_oam_tiles.bin Graphics/RhythmGame/KarateMan1/Intro/BE9F5C_karateman1_oam_tiles
DSDecmp.exe -c lz10 Graphics/RhythmGame/KarateMan1/Intro/BEA934_karateman1_bg_tiles.bin Graphics/RhythmGame/KarateMan1/Intro/BEA934_karateman1_bg_tiles
DSDecmp.exe -c lz10 Graphics/MainMenu/CCB298_mainmenu_oam_tiles.bin Graphics/MainMenu/CCB298_mainmenu_oam_tiles
DSDecmp.exe -c lz10 Graphics/Tutorial/C6A350_tutorial_tiles2.bin Graphics/Tutorial/C6A350_tutorial_tiles2
DSDecmp.exe -c lz10 Graphics/Tutorial/C6A638_tutorial_tiles.bin Graphics/Tutorial/C6A638_tutorial_tiles
DSDecmp.exe -c lz10 Graphics/Tutorial/cd4f58_tutorial_result.bin Graphics/Tutorial/cd4f58_tutorial_result
DSDecmp.exe -c lz10 Graphics/EmailSelectScreen/CC77A4_email_select_tiles.bin Graphics/EmailSelectScreen/CC77A4_email_select_tiles
DSDecmp.exe -c lz10 Graphics/MusicSelect/CD5D64_musicselect_tile.bin Graphics/MusicSelect/CD5D64_musicselect_tile
DSDecmp.exe -c lz10 Graphics/MusicSelect/cd5288_soundtest_tiles2.bin Graphics/MusicSelect/cd5288_soundtest_tiles2
DSDecmp.exe -c lz10 Graphics/Drums/c4efe4_drums_game4.bin Graphics/Drums/c4efe4_drums_game4
DSDecmp.exe -c lz10 Graphics/Drums/c4fc44_drums_game1.bin Graphics/Drums/c4fc44_drums_game1
DSDecmp.exe -c lz10 Graphics/Drums/cc6914_drums_menu1.bin Graphics/Drums/cc6914_drums_menu1
DSDecmp.exe -c lz10 Graphics/Options/c76ca4_options_tiles2.bin Graphics/Options/c76ca4_options_tiles2
DSDecmp.exe -c lz10 Graphics/ToysMenu/cd8da0_toymenu_tile1.bin Graphics/ToysMenu/cd8da0_toymenu_tile1
DSDecmp.exe -c lz10 Graphics/ToysMenu/cd8fa4_toymenu_tile3.bin Graphics/ToysMenu/cd8fa4_toymenu_tile3
DSDecmp.exe -c lz10 Graphics/EndlessMenu/cc3b7c_endless_tile2.bin Graphics/EndlessMenu/cc3b7c_endless_tile2
DSDecmp.exe -c lz10 Graphics/EndlessMenu/cc4670_endless_tile1.bin Graphics/EndlessMenu/cc4670_endless_tile1
DSDecmp.exe -c lz10 Graphics/Drums/cc6914_drums_menu1.bin Graphics/Drums/cc6914_drums_menu1
DSDecmp.exe -c lz10 Graphics/RhythemGameSelect/CC9148_rhythemgameselect_oams_tiles.bin Graphics/RhythemGameSelect/CC9148_rhythemgameselect_oams_tiles
DSDecmp.exe -c lz10 Graphics/RhythemGameSelect/CC9854_rhythemgamesselect_bg1_tiles.bin Graphics/RhythemGameSelect/CC9854_rhythemgamesselect_bg1_tiles
DSDecmp.exe -c lz10 Graphics/RhythmGame/Results/ccc138_perfect_tile1.bin Graphics/RhythmGame/Results/ccc138_perfect_tile1
DSDecmp.exe -c lz10 Graphics/RhythmGame/Results/CD4A50_results_oam_tiles.bin Graphics/RhythmGame/Results/CD4A50_results_oam_tiles
DSDecmp.exe -c lz10 Graphics/RhythmGame/spaceball1/be2298_spaceball1_intro.bin Graphics/RhythmGame/spaceball1/be2298_spaceball1_intro
DSDecmp.exe -c lz10 Graphics/RhythmGame/Veggie1/bee62c_veggie1_intro.bin Graphics/RhythmGame/Veggie1/bee62c_veggie1_intro
DSDecmp.exe -c lz10 Graphics/RhythmGame/marcher1/bfa204_marcher1_intro2.bin Graphics/RhythmGame/marcher1/bfa204_marcher1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/marcher1/c6c658_marcher1_tile2.bin Graphics/RhythmGame/marcher1/c6c658_marcher1_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/clappy1/bf16b4_clappy1_intro.bin Graphics/RhythmGame/clappy1/bf16b4_clappy1_intro
DSDecmp.exe -c lz10 Graphics/RhythmGame/clappy1/c61654_clappy_tiles1.bin Graphics/RhythmGame/clappy1/c61654_clappy_tiles1
DSDecmp.exe -c lz10 Graphics/RhythmGame/remix1/c04fec_mix1_intro.bin Graphics/RhythmGame/remix1/c04fec_mix1_intro
DSDecmp.exe -c lz10 Graphics/RhythmGame/spirit1/be0ff8_spirit1_intro2.bin Graphics/RhythmGame/spirit1/be0ff8_spirit1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Samurai/bf6678_samurai_intro2.bin Graphics/RhythmGame/Samurai/bf6678_samurai_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Cheese/c21f88_cheese_intro2.bin Graphics/RhythmGame/Cheese/c21f88_cheese_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Cheese/c86e74_cheese_tile2.bin Graphics/RhythmGame/Cheese/c86e74_cheese_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/DrBact/c31e6c_drbact_intro2.bin Graphics/RhythmGame/DrBact/c31e6c_drbact_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/bonodori1/be75b8_odori1_intro2.bin Graphics/RhythmGame/bonodori1/be75b8_odori1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/remix2/c06f74_mix2_intro2.bin Graphics/RhythmGame/remix2/c06f74_mix2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/wizard/c33640_wizard_intro2.bin Graphics/RhythmGame/wizard/c33640_wizard_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Showtime/bec134_showtime_intro2.bin Graphics/RhythmGame/Showtime/bec134_showtime_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/BunnyHop/c1f214_bunny_intro2.bin Graphics/RhythmGame/BunnyHop/c1f214_bunny_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Tram/c30910_tram_intro2.bin Graphics/RhythmGame/Tram/c30910_tram_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Space1/c24f60_space1_intro2.bin Graphics/RhythmGame/Space1/c24f60_space1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Space1/ce296c_space1_tile2.bin Graphics/RhythmGame/Space1/ce296c_space1_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix3/c092e0_remix3_intro2.bin Graphics/RhythmGame/Remix3/c092e0_remix3_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Quiz/c02a34_quiz_intro2.bin Graphics/RhythmGame/Quiz/c02a34_quiz_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Quiz/c7c8e0_quiz_tile2.bin Graphics/RhythmGame/Quiz/c7c8e0_quiz_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Nightwalk/beba58_night1_intro2.bin Graphics/RhythmGame/Nightwalk/beba58_night1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Calig/bf8a30_calig_intro2.bin Graphics/RhythmGame/Calig/bf8a30_calig_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Calig/c68d1c_calig_tile2.bin Graphics/RhythmGame/Calig/c68d1c_calig_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/built1/c00010_built1_intro2.bin Graphics/RhythmGame/built1/c00010_built1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/built1/c0212c_built1_intro1.bin Graphics/RhythmGame/built1/c0212c_built1_intro1
DSDecmp.exe -c lz10 Graphics/RhythmGame/built1/c781ac_built1_tile1.bin Graphics/RhythmGame/built1/c781ac_built1_tile1
DSDecmp.exe -c lz10 Graphics/RhythmGame/Rapmen/c1f4b4_rapmen_intro2.bin Graphics/RhythmGame/Rapmen/c1f4b4_rapmen_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Rapmen/c82710_rapmen_tile2.bin Graphics/RhythmGame/Rapmen/c82710_rapmen_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix4/c0b644_remix4_intro2.bin Graphics/RhythmGame/Remix4/c0b644_remix4_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Hop1/bee430_hop1_intro2.bin Graphics/RhythmGame/Hop1/bee430_hop1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Ninja1/cb28a4_ninja1_results.bin Graphics/RhythmGame/Ninja1/cb28a4_ninja1_results
DSDecmp.exe -c lz10 Graphics/RhythmGame/Ninja1/c22ee4_ninja1_intro2.bin Graphics/RhythmGame/Ninja1/c22ee4_ninja1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Toss1/c2a208_toss1_intro2.bin Graphics/RhythmGame/Toss1/c2a208_toss1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Fworks/bef660_fworks_intro2.bin Graphics/RhythmGame/Fworks/bef660_fworks_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Tap1/c26340_tap1_intro2.bin Graphics/RhythmGame/Tap1/c26340_tap1_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix5/c0e864_remix5_intro2.bin Graphics/RhythmGame/Remix5/c0e864_remix5_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/clappy2/bf374c_clappy2_intro2.bin Graphics/RhythmGame/clappy2/bf374c_clappy2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/clappy2/c62d18_clappy2_tile2.bin Graphics/RhythmGame/clappy2/c62d18_clappy2_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Odori2/be3e20_bon2_intro2.bin Graphics/RhythmGame/Odori2/be3e20_bon2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/cosmo2/beaf78_cosmo2_intro2.bin Graphics/RhythmGame/cosmo2/beaf78_cosmo2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/RapWomen2/c84ce4_rapwom_tile2.bin Graphics/RhythmGame/RapWomen2/c84ce4_rapwom_tile2
DSDecmp.exe -c lz10 Graphics/RhythmGame/RapWomen2/c209cc_rapwom2_intro2.bin Graphics/RhythmGame/RapWomen2/c209cc_rapwom2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Tap2/c28814_tap2_intro2.bin Graphics/RhythmGame/Tap2/c28814_tap2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix6/c13400_remix6_intro2.bin Graphics/RhythmGame/Remix6/c13400_remix6_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Ninja2/c24200_ninja2_intro2.bin Graphics/RhythmGame/Ninja2/c24200_ninja2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Marcher2/bfc8f4_march2_intro2.bin Graphics/RhythmGame/Marcher2/bfc8f4_march2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix7/c173c0_remix7_intro2.bin Graphics/RhythmGame/Remix7/c173c0_remix7_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Toss2/c2de80_toss2_intro2.bin Graphics/RhythmGame/Toss2/c2de80_toss2_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix8/c1a47c_remix8_intro2.bin Graphics/RhythmGame/Remix8/c1a47c_remix8_intro2
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix8/bdcfc8_remix8_tile1.bin Graphics/RhythmGame/Remix8/bdcfc8_remix8_tile1
DSDecmp.exe -c lz10 Graphics/RhythmGame/Remix8/c5badc_remix8_tile2.bin Graphics/RhythmGame/Remix8/c5badc_remix8_tile2
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/d08208_horse_tile2.bin Graphics/ToysMenu/Toys/d08208_horse_tile2
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/cda118_meow_tile1.bin Graphics/ToysMenu/Toys/cda118_meow_tile1
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/cdbacc_rap_tile1.bin Graphics/ToysMenu/Toys/cdbacc_rap_tile1
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/cdd0d4_love_tile1.bin Graphics/ToysMenu/Toys/cdd0d4_love_tile1
rhcomp.exe Graphics/RhythmGame/CCCA5C_MiscGraphics.bin
rhcomp.exe Graphics/EndlessMenu/cc4a00_endless_tilemap.bin
rhcomp.exe Graphics/ToysMenu/cd931c_toys_screen_map.bin
rhcomp.exe Graphics/Drums/cc6ccc_drums_map.bin
rhcomp.exe Graphics/MusicSelect/CD62EC_musicselect_map.bin
rhcomp.exe Graphics/MusicSelect/CD6434_musicselect_warning_map.bin
armips.exe compile.asm -sym mysym.sym
flips.exe --apply "Patch\Font Hack 4 - 1px spacer.ips" "Game\rh-eng.gba"
if %1 == 1 (
  echo Debug Menu Activated
  flips.exe --apply "Patch\Debug_Menu.ips" "Game\rh-eng.gba"
) else (
  echo Debug Menu Not Activated
)
pause
compile.bat %1
exit