.org 0x08CC3B7C
.dw cc3b7c_endless_tile2 |0x80000000
.org 0x08CC4670
.dw cc4670_endless_tile1 |0x80000000
.org 0x08cc4a00
.dw cc4a00_endless_tilemap_data
.org 0x08cc4a00+4
.dw cc4a00_endless_tilemap_rle
.org 0x08cc4a00+8
.dh cc4a00_endless_tilemap_rle_end - cc4a00_endless_tilemap_rle
//Mr Upbeat
.org 0x08900444
.dw X90041C_assembly0
//Dr Bacteria
.org 0x089003FC
.import EN_SourceCode/Graphics/EndlessMenu/9003FC_assembly0.bin
//Head Spinner
.org 0x089003DC
.import EN_SourceCode/Graphics/EndlessMenu/9003DC_assembly0.bin
//Quiz
.org 0x08900424
.import EN_SourceCode/Graphics/EndlessMenu/900424_assembly0.bin
;eof