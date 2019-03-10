.org 0x08CD5D64
.dw CD5D64_musicselect_tile |0x80000000
.org 0x08CD5288
.dw cd5288_soundtest_tiles2 |0x80000000
.org 0x08CD62EC
.dw cd62ec_musicselect_map_data
.org 0x08CD62EC+4
.dw cd62ec_musicselect_map_rle
.org 0x08CD62EC+8
.dw cd62ec_musicselect_map_rleend-cd62ec_musicselect_map_rle
.org 0x08cd6434
.dw CD6434_musicselect_warning_map_data
.org 0x08cd6434+4
.dw CD6434_musicselect_warning_map_rle
.org 0x08cd6434+8
;.dw CD6434_musicselect_warning_map_rleend-CD6434_musicselect_warning_map_rle
.dw 0x32;quickfix to some dumb bug
;eof