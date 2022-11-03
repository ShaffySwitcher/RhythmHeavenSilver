.org 0x08CDA118
.dw cda118_meow_tile1 |0x80000000
.org 0x08D08208
.dw d08208_horse_tile2 |0x80000000
.org 0x08CDD0D4
.dw cdd0d4_love_tile1 |0x80000000
.org 0x08CDBACC
.dw cdbacc_rap_tile1 |0x80000000
;horse CLOP (lesson one)
.org 0x08930302
.import src/Graphics/ToysMenu/Toys/930302_assembly0.bin
.org 0x08930310
.import src/Graphics/ToysMenu/Toys/930310_assembly1.bin
;Horse CLIP (Lesson one)
.org 0x08930568
.dw X93031E_assembly0
.org 0x08930326
.import src/Graphics/ToysMenu/Toys/930326_assembly1.bin
;Horse CLOP (Lesson two)
.org 0x0893035A
.import src/Graphics/ToysMenu/Toys/93035A_assembly0.bin
.org 0x08930368
.import src/Graphics/ToysMenu/Toys/930368_assembly1.bin
;Horse CLOP (Lesson three)
.org 0x0893033E
.import src/Graphics/ToysMenu/Toys/93033E_assembly0.bin
.org 0x0893034C
.import src/Graphics/ToysMenu/Toys/93034C_assembly1.bin
;Horse Tlot (Lesson three)
.org 0x0893032E
.import src/Graphics/ToysMenu/Toys/93032E_assembly0.bin
.org 0x08930336
.import src/Graphics/ToysMenu/Toys/930336_assembly1.bin
;Horse Tlot 1 (lesson four)
.org 0x08930376
.import src/Graphics/ToysMenu/Toys/930376_assembly0.bin
.org 0x08930608
.dw X93037E_assembly1
;Horse Tlot 2 (lesson four)
.org 0x08930386
.import src/Graphics/ToysMenu/Toys/930386_assembly0.bin
.org 0x08930394
.import src/Graphics/ToysMenu/Toys/930394_assembly1.bin
.org 0x08cdbe6c
.dw cdbe6c_rap_tilemap_data
.org 0x08cdbe6c+4
.dw cdbe6c_rap_tilemap_rle
.org 0x08cdbe6c+8
.dh cdbe6c_rap_tilemap_rle_end - cdbe6c_rap_tilemap_rle
.org 0x08CDD5B8
.dw CDD5B8_love_tilemap_data
.org 0x08CDD5B8+4
.dw CDD5B8_love_tilemap_rle
.org 0x08CDD5B8+8
.dh CDD5B8_love_tilemap_rle_end - CDD5B8_love_tilemap_rle
;eof