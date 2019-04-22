.org 0x08BE0480
.dw BE0480_karateman1_oam_tiles |0x80000000
.org 0x08BE9F5C
.dw BE9F5C_karateman1_oam_tiles |0x80000000
.org 0x08BEA934
.dw BEA934_karateman1_bg_tiles |0x80000000
//Flow graphic
.org 0x088acd1c
.dw X8AC9B4_assembly0
.org 0x088acd24
.dw X8AC9DA_assembly1
.org 0x088acd2c
.dw X8ACA00_assembly2
.org 0x088acd34
.dw X8ACA26_assembly3
.org 0x088acd3c
.dw X8ACA4C_assembly4
.org 0x088acd44
.dw X8ACA72_assembly5
//Pop up text
.org 0x088acf04
.dw X8ACB76_assembly0
.org 0x088acf0c
.dw X8ACB84_assembly1
.org 0x088acf14
.dw X8ACB98_assembly2
.org 0x088acf1c
.dw X8ACB62_assembly3
;Intro Stuff
;Text
.org 0x088AD958
.import Graphics/Rhythm_Games/Karate_Man/Intro/Text/8AD958_assembly0.bin
.org 0x088AD960
.import Graphics/Rhythm_Games/Karate_Man/Intro/Text/8AD960_assembly1.bin
.align 2
.org 0x088ADA88
.dw X8AD974_assembly2
.org 0x088ADA90
.dw X8AD99A_assembly3
.org 0x088AD9D2
.import Graphics/Rhythm_Games/Karate_Man/Intro/Text/8AD9D2_assembly4.bin
;Foot (Tip of toe was overwritten by "Man" text)
.org 0x088ADA4A
.import Graphics/Rhythm_Games/Karate_Man/Intro/Foot/8ADA4A_assembly0.bin
.org 0x088ADA28
.import Graphics/Rhythm_Games/Karate_Man/Intro/Foot/8ADA28_assembly1.bin
.org 0x088ADA36
.import Graphics/Rhythm_Games/Karate_Man/Intro/Foot/8ADA36_assembly2.bin
.org 0x088ADA28
.import Graphics/Rhythm_Games/Karate_Man/Intro/Foot/8ADA28_assembly3.bin
.org 0x088ADA36
.import Graphics/Rhythm_Games/Karate_Man/Intro/Foot/8ADA36_assembly4.bin
.org 0x088ADA28
.import Graphics/Rhythm_Games/Karate_Man/Intro/Foot/8ADA28_assembly5.bin
;eof