.org 0x08CD7948
.dw CD7948_titlescreen_oam_tiles | 0x80000000

;.orgrev 0x08CD663C,0x08CD6608
;.dw CD663C_titlescreen_bg1_tiles | 0x80000000

//m H
.org 0x0890CEF6
.import Graphics/TitleScreen/90CEF6_assembly0.bin
//th
.org 0x0890D4B0
.dw X90CEE8_assembly0

//.orgrev 0x0890CEE8,-1
//.import Graphics/TitleScreen/90CEE8_assembly0.bin
//Rhy
.org 0x0890d4a0
.dw X90CEE0_assembly0
//ea
.org 0x0890D4D0
.dw X90CF0A_assembly0
//ven
.org 0x0890D4E0
.dw X90CF1E_assembly0

//Boost and Silver
.org 0x0890CE28
.import Graphics/TitleScreen/90CE28_assembly0.bin
.org 0x0890CE60
.import Graphics/TitleScreen/90CE60_assembly1.bin
.org 0x0890CE98
.import Graphics/TitleScreen/90CE98_assembly2.bin
;eof

.org 0x0801CC14
.dw TitleScreenBubbles
