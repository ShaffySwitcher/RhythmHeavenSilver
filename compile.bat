@echo off

:compile
del "Game\rh-atlus.gba"
copy "Game\rh-jpn.gba" "Game\rh-atlus.gba"
atlas "Game\rh-atlus.gba" script.txt

DSDecmp.exe -c lz10 Graphics/TitleScreen/CD7948_titlescreen_oam_tiles.bin Graphics/TitleScreen/CD7948_titlescreen_oam_tiles
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Karate_Man/Game/BE0480_karateman1_oam_tiles.bin Graphics/Rhythm_Games/Karate_Man/Game/BE0480_karateman1_oam_tiles
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Karate_Man/Intro/BE9F5C_karateman1_oam_tiles.bin Graphics/Rhythm_Games/Karate_Man/Intro/BE9F5C_karateman1_oam_tiles
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Karate_Man/Intro/BEA934_karateman1_bg_tiles.bin Graphics/Rhythm_Games/Karate_Man/Intro/BEA934_karateman1_bg_tiles
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
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Results_Screen/ccc138_perfect_tile1.bin Graphics/Rhythm_Games/Results_Screen/ccc138_perfect_tile1
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Results_Screen/CD4A50_results_oam_tiles.bin Graphics/Rhythm_Games/Results_Screen/CD4A50_results_oam_tiles
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Spaceball/be2298_spaceball1_intro.bin Graphics/Rhythm_Games/Spaceball/be2298_spaceball1_intro
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Rhythm_Tweezers/bee62c_veggie1_intro.bin Graphics/Rhythm_Games/Rhythm_Tweezers/bee62c_veggie1_intro
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Marching_Orders/bfa204_marcher1_intro2.bin Graphics/Rhythm_Games/Marching_Orders/bfa204_marcher1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Marching_Orders/c6c658_marcher1_tile2.bin Graphics/Rhythm_Games/Marching_Orders/c6c658_marcher1_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/The_Clappy_Trio/bf16b4_clappy1_intro.bin Graphics/Rhythm_Games/The_Clappy_Trio/bf16b4_clappy1_intro
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/The_Clappy_Trio/c61654_clappy_tiles1.bin Graphics/Rhythm_Games/The_Clappy_Trio/c61654_clappy_tiles1
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_1/c04fec_mix1_intro.bin Graphics/Rhythm_Games/Remix_1/c04fec_mix1_intro
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Sneaky_Spirits/be0ff8_spirit1_intro2.bin Graphics/Rhythm_Games/Sneaky_Spirits/be0ff8_spirit1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Samurai_Slice/bf6678_samurai_intro2.bin Graphics/Rhythm_Games/Samurai_Slice/bf6678_samurai_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Cheese_Heist/c21f88_cheese_intro2.bin Graphics/Rhythm_Games/Cheese_Heist/c21f88_cheese_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Cheese_Heist/c86e74_cheese_tile2.bin Graphics/Rhythm_Games/Cheese_Heist/c86e74_cheese_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Sick_Beats/c31e6c_SickBeats_intro2.bin Graphics/Rhythm_Games/Sick_Beats/c31e6c_SickBeats_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/TheBon_Odori/be75b8_odori1_intro2.bin Graphics/Rhythm_Games/TheBon_Odori/be75b8_odori1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_2/c06f74_mix2_intro2.bin Graphics/Rhythm_Games/Remix_2/c06f74_mix2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Death_Waltz/c33640_wizard_intro2.bin Graphics/Rhythm_Games/Death_Waltz/c33640_wizard_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Showtime/bec134_showtime_intro2.bin Graphics/Rhythm_Games/Showtime/bec134_showtime_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Bunny_Hop/c1f214_bunny_intro2.bin Graphics/Rhythm_Games/Bunny_Hop/c1f214_bunny_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Tram_Pauline/c30910_tram_intro2.bin Graphics/Rhythm_Games/Tram_Pauline/c30910_tram_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Space_Dance/c24f60_space1_intro2.bin Graphics/Rhythm_Games/Space_Dance/c24f60_space1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Space_Dance/ce296c_space1_tile2.bin Graphics/Rhythm_Games/Space_Dance/ce296c_space1_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_3/c092e0_remix3_intro2.bin Graphics/Rhythm_Games/Remix_3/c092e0_remix3_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Quiz_Show/c02a34_quiz_intro2.bin Graphics/Rhythm_Games/Quiz_Show/c02a34_quiz_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Quiz_Show/c7c8e0_quiz_tile2.bin Graphics/Rhythm_Games/Quiz_Show/c7c8e0_quiz_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Night_Walk/beba58_night1_intro2.bin Graphics/Rhythm_Games/Night_Walk/beba58_night1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Power_Calligraphy/bf8a30_calig_intro2.bin Graphics/Rhythm_Games/Power_Calligraphy/bf8a30_calig_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Power_Calligraphy/c68d1c_calig_tile2.bin Graphics/Rhythm_Games/Power_Calligraphy/c68d1c_calig_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Polyrhythm/c00010_built1_intro2.bin Graphics/Rhythm_Games/Polyrhythm/c00010_built1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Polyrhythm/c0212c_built1_intro1.bin Graphics/Rhythm_Games/Polyrhythm/c0212c_built1_intro1
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Polyrhythm/c781ac_built1_tile1.bin Graphics/Rhythm_Games/Polyrhythm/c781ac_built1_tile1
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Rap_Men/c1f4b4_rapmen_intro2.bin Graphics/Rhythm_Games/Rap_Men/c1f4b4_rapmen_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Rap_Men/c82710_rapmen_tile2.bin Graphics/Rhythm_Games/Rap_Men/c82710_rapmen_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_4/c0b644_remix4_intro2.bin Graphics/Rhythm_Games/Remix_4/c0b644_remix4_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Bouncy_Road/bee430_hop1_intro2.bin Graphics/Rhythm_Games/Bouncy_Road/bee430_hop1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Ninja_Bodyguard/cb28a4_ninja1_results.bin Graphics/Rhythm_Games/Ninja_Bodyguard/cb28a4_ninja1_results
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Ninja_Bodyguard/c22ee4_ninja1_intro2.bin Graphics/Rhythm_Games/Ninja_Bodyguard/c22ee4_ninja1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Toss_Boys/c2a208_toss1_intro2.bin Graphics/Rhythm_Games/Toss_Boys/c2a208_toss1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Fireworks/bef660_fworks_intro2.bin Graphics/Rhythm_Games/Fireworks/bef660_fworks_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Tap_Trial/c26340_tap1_intro2.bin Graphics/Rhythm_Games/Tap_Trial/c26340_tap1_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_5/c0e864_remix5_intro2.bin Graphics/Rhythm_Games/Remix_5/c0e864_remix5_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/The_Snappy_Trio/bf374c_clappy2_intro2.bin Graphics/Rhythm_Games/The_Snappy_Trio/bf374c_clappy2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/The_Snappy_Trio/c62d18_clappy2_tile2.bin Graphics/Rhythm_Games/The_Snappy_Trio/c62d18_clappy2_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/TheBon_Dance/be3e20_bon2_intro2.bin Graphics/Rhythm_Games/TheBon_Dance/be3e20_bon2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Cosmic_Dance/beaf78_cosmo2_intro2.bin Graphics/Rhythm_Games/Cosmic_Dance/beaf78_cosmo2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Rap_Women/c84ce4_rapwom_tile2.bin Graphics/Rhythm_Games/Rap_Women/c84ce4_rapwom_tile2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Rap_Women/c209cc_rapwom2_intro2.bin Graphics/Rhythm_Games/Rap_Women/c209cc_rapwom2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Turbo_Tap_Trial/c28814_tap2_intro2.bin Graphics/Rhythm_Games/Turbo_Tap_Trial/c28814_tap2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_6/c13400_remix6_intro2.bin Graphics/Rhythm_Games/Remix_6/c13400_remix6_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Ninja_Bodyguard_2/c24200_ninja2_intro2.bin Graphics/Rhythm_Games/Ninja_Bodyguard_2/c24200_ninja2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Marching_Orders_2/bfc8f4_march2_intro2.bin Graphics/Rhythm_Games/Marching_Orders_2/bfc8f4_march2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_7/c173c0_remix7_intro2.bin Graphics/Rhythm_Games/Remix_7/c173c0_remix7_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Toss_Boys_2/c2de80_toss2_intro2.bin Graphics/Rhythm_Games/Toss_Boys_2/c2de80_toss2_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_8/c1a47c_remix8_intro2.bin Graphics/Rhythm_Games/Remix_8/c1a47c_remix8_intro2
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_8/bdcfc8_remix8_tile1.bin Graphics/Rhythm_Games/Remix_8/bdcfc8_remix8_tile1
DSDecmp.exe -c lz10 Graphics/Rhythm_Games/Remix_8/c5badc_remix8_tile2.bin Graphics/Rhythm_Games/Remix_8/c5badc_remix8_tile2
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/d08208_horse_tile2.bin Graphics/ToysMenu/Toys/d08208_horse_tile2
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/cda118_meow_tile1.bin Graphics/ToysMenu/Toys/cda118_meow_tile1
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/cdbacc_rap_tile1.bin Graphics/ToysMenu/Toys/cdbacc_rap_tile1
DSDecmp.exe -c lz10 Graphics/ToysMenu/Toys/cdd0d4_love_tile1.bin Graphics/ToysMenu/Toys/cdd0d4_love_tile1
DSDecmp.exe -c lz10 Graphics/EndlessMenu/games/c702d0_upbeat_tile1.bin Graphics/EndlessMenu/games/c702d0_upbeat_tile1
DSDecmp.exe -c lz10 Graphics/EndlessMenu/games/c34478_head_tile1.bin Graphics/EndlessMenu/games/c34478_head_tile1
DSDecmp.exe -c lz10 Graphics/Warning_Screen/D1AD4C_warningscreen_tile.bin Graphics/Warning_Screen/D1AD4C_warningscreen_tile
rhcomp.exe Graphics/Rhythm_Games/MiscGraphics/CCCA5C_MiscGraphics.bin
rhcomp.exe Graphics/EndlessMenu/cc4a00_endless_tilemap.bin
rhcomp.exe Graphics/ToysMenu/cd931c_toys_screen_map.bin
rhcomp.exe Graphics/Drums/cc6ccc_drums_map.bin
rhcomp.exe Graphics/MusicSelect/CD62EC_musicselect_map.bin
rhcomp.exe Graphics/MusicSelect/CD6434_musicselect_warning_map.bin
armips.exe compile.asm -sym mysym.sym
flips "Font Hack 4 - 1px spacer.ips" "Game\rh-eng.gba"
pause
goto compile