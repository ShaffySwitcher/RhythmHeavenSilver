#include <iostream>
#include "bitmap.h"

void printInstructions() {
    std::cout << "R-IQ Tile Fixer.exe -[a][d] input.BMP output.BMP tile.BIN\n\n";
    std::cout << "-a: Assembles input into output using the tile arrangement.\n"; //From scramble to original.
    std::cout << "-d: Dissasemble input into a output tilemap using the tile arrangement.\n\n"; //From original to scramble.
    std::cout << "input and ouput MUST be a 24-bit bitmap.\nAnd tile must be a memory dump of address 0x600E800 of (atleast) size 1276 bytes.\n\n(C)Shaffy - 2022.\n";
}

int main(int argc, char* argv[])
{
    if (argc < 5) {
        printInstructions();
        return 1;
    }

    if (argv[1][0] != '-') {
        printInstructions();
        return 1;
    }

    const char* inputString = argv[2];
    const char* outputString = argv[3];
    const char* tileString = argv[4];

    std::fstream file("polyrhythm.bin", std::ios::in | std::ios::binary);

    if (argv[1][1] == 'a') {
        bitmap_image image(inputString);
        bitmap_image image_fix(240, 160);
        std::fstream file(tileString, std::ios::in | std::ios::binary);

        std::cout << "Loaded! width: " << image.width() << " height: " << image.height() << std::endl;

        for (unsigned int j = 0; j < 20; j++) {
            for (unsigned int i = 0; i < 30; i++) {
                char bytes[2];
                file.read(bytes, 2);

                unsigned short tileNumber = (((unsigned char)bytes[1] << 8) | ((unsigned char)bytes[0]));

                int tileColumn = tileNumber / 30;
                int tileRow = tileNumber % 30;

                //std::cout << "Tile no." << std::dec << (int)tileNumber << " in tex coords (" << tileRow * 8 << ';' << tileColumn * 8 << ") at img pos (" << i * 8 << ';' << j * 8 << ")";
                //std::cout << " - VRAM: 0x" << std::hex << 0x0600E800 + (((j * 30) + i) * 2) << std::endl;

                for (unsigned int a = 0; a < 8; a++) { //x
                    for (unsigned int b = 0; b < 8; b++) { //y
                        rgb_t pixel = image.get_pixel((tileRow * 8) + a, (tileColumn * 8) + b);
                        image_fix.set_pixel((i * 8) + a, (j * 8) + b, pixel);
                    }
                }

            }
            file.seekp(4, file.cur);
        }

        file.close();

        image_fix.save_image(outputString);
    }
    else if (argv[1][1] == 'd') {

        bitmap_image image(inputString);
        bitmap_image image_fix(240, 824); //Make it big enough...
        std::fstream file(tileString, std::ios::in | std::ios::binary);

        std::cout << "Loaded! width: " << image.width() << " height: " << image.height() << std::endl;

        for (unsigned int j = 0; j < 20; j++) {
            for (unsigned int i = 0; i < 30; i++) {
                char bytes[2];
                file.read(bytes, 2);

                unsigned short tileNumber = (((unsigned char)bytes[1] << 8) | ((unsigned char)bytes[0]));

                int tileColumn = tileNumber / 30;
                int tileRow = tileNumber % 30;

                //std::cout << "Tile no." << std::dec << (int)tileNumber << " in tex coords (" << tileRow * 8 << ';' << tileColumn * 8 << ") at img pos (" << i * 8 << ';' << j * 8 << ")";
                //std::cout << " - VRAM: 0x" << std::hex << 0x0600E800 + (((j * 30) + i) * 2) << std::endl;

                for (unsigned int a = 0; a < 8; a++) { //x
                    for (unsigned int b = 0; b < 8; b++) { //y
                        rgb_t pixel = image.get_pixel((i * 8) + a, (j * 8) + b);
                        image_fix.set_pixel((tileRow * 8) + a, (tileColumn * 8) + b, pixel);
                    }
                }

            }

            file.seekp(4, file.cur);
        }

        file.close();

        image_fix.save_image(outputString);
    }
    else {
        printInstructions();
        return 1;
    }

    std::cout << "Done!" << std::endl;
    return 0;
}