#include <iostream>
#include "bitmap.h"
#include <map>

void printInstructions() {
    std::cout << "R-IQ Tile Fixer.exe -[a][d][r] input.BMP output.BMP tile.BIN paletteid\n\n";
    std::cout << "-a: (A)ssembles input into output using the tile arrangement.\n"; //From scramble to original.
    std::cout << "-d: (D)issasemble input into a output tilemap using the tile arrangement.\n\n"; //From original to scramble.
    std::cout << "-r: (R)ecompile input into a output tilemap using a new tile arrangement.\n"; //From original to scramble.
    std::cout << "paletteid: Optional with flag -r, can choose a palette (0-15).\n\n"; //From original to scramble.
    std::cout << "input and ouput MUST be a 24-bit bitmap.\nAnd tile must be a memory dump of the address of the BG of (atleast) size 1276 bytes.\nExport the tiles with 32 tile per line.\n\n(C)Shaffy - 2022.\n";
}

struct Tile {
    rgb_t pixel[8][8];
    bool hrev = false;
    bool vrev = false;


    void loadTile(bitmap_image& image, unsigned int x, unsigned y, bool ishrev = false, bool isvrev = false) {
        for (unsigned int y_ = 0; y_ < 8; y_++) {
            for (unsigned int x_ = 0; x_ < 8; x_++) {
                int row = !ishrev ? x_ : 7 - x_;
                int column = !isvrev ? y_ : 7 - y_;
                pixel[row][column] = image.get_pixel(x + x_, y + y_);
            }
        }
    }

    void drawTile(bitmap_image& image, unsigned int x, unsigned y) {
        for (unsigned int y_ = 0; y_ < 8; y_++) {
            for (unsigned int x_ = 0; x_ < 8; x_++) {
                int row = !hrev ? x_ : 7 - x_;
                int column = !vrev ? y_ : 7 - y_;
                image.set_pixel(x + x_, y + y_, pixel[row][column]);
            }
        }
    }
};

int main(int argc, char* argv[])
{
    argc = 6;
    argv[1] = (char*)"-r";
    argv[2] = (char*)"newrap_tile.bmp";
    argv[3] = (char*)"test.bmp";
    argv[4] = (char*)"rap_tilemap.bin";
    argv[5] = (char*)"1";

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

    if (argv[1][1] == 'a') {
        bitmap_image image(inputString);
        bitmap_image image_fix(240, 160);
        std::fstream file(tileString, std::ios::in | std::ios::binary);

        std::cout << "Loaded! width: " << image.width() << " height: " << image.height() << std::endl;

        for (unsigned int j = 0; j < 20; j++) {
            for (unsigned int i = 0; i < 30; i++) {
                unsigned char bytes[2];
                file.read((char*)bytes, 2);

                bool hrev = (bytes[1] >> 2) & 1U;
                bool vrev = (bytes[1] >> 3) & 1U;

                bytes[1] &= ~0xFC;

                unsigned short tileNumber = (((unsigned char)bytes[1] << 8) | ((unsigned char)bytes[0]));

                int tileRow = tileNumber % 32;
                int tileColumn = tileNumber / 32;
                
                Tile tile;
                tile.hrev = hrev;
                tile.vrev = vrev;
                tile.loadTile(image, (tileRow * 8), (tileColumn * 8));
                tile.drawTile(image_fix, (i * 8), (j * 8));

            }
            file.seekp(4, file.cur);
        }

        file.close();

        image_fix.save_image(outputString);
    }
    else if (argv[1][1] == 'd') {

        bitmap_image image(inputString);
        bitmap_image image_fix(256, 824); //Make it big enough...
        image_fix.set_region(0, 0, 256, 824, 0, 255, 64);
        std::fstream file(tileString, std::ios::in | std::ios::binary);

        std::cout << "Loaded! width: " << image.width() << " height: " << image.height() << std::endl;

        for (unsigned int j = 0; j < 20; j++) {
            for (unsigned int i = 0; i < 30; i++) {
                char bytes[2];
                file.read(bytes, 2);

                bool hrev = (bytes[1] >> 2) & 1U;
                bool vrev = (bytes[1] >> 3) & 1U;

                bytes[1] &= ~0xFC;

                unsigned short tileNumber = (((unsigned char)bytes[1] << 8) | ((unsigned char)bytes[0]));

                int tileColumn = tileNumber / 32;
                int tileRow = tileNumber % 32;

                Tile tile;
                tile.loadTile(image, (i * 8), (j * 8), hrev, vrev);
                tile.drawTile(image_fix, (tileRow * 8), (tileColumn * 8));
            }

            file.seekp(4, file.cur);
        }

        file.close();

        image_fix.save_image(outputString);
    }
    else if (argv[1][1] == 'r') {
        int paletteChoice = 0;

        if (argc == 6) {
            paletteChoice = std::stoi(argv[5]);
        }
        
        std::map<unsigned int, Tile> tiles;
        unsigned int currentTile = 0;

        bitmap_image image(inputString);
        bitmap_image image_fix(256, 824); //Make it big enough...
        image_fix.set_region(0, 0, 256, 824, 0, 255, 64);
        std::fstream file(tileString, std::ios::out | std::ios::binary);

        std::cout << "Loaded! width: " << image.width() << " height: " << image.height() << std::endl;
        //read tile left to right top bottom
        for (unsigned int j = 0; j < 20; j++) {
            for (unsigned int i = 0; i < 30; i++) {
                Tile tile;
                tile.loadTile(image, i * 8, j * 8);
                
                bool isDuplicate = false;
                Tile* tileReference = nullptr;
                unsigned int numberReference = 0;
                for (auto& tile_ : tiles) {
                    if (memcmp(&tile, &tile_.second, sizeof(Tile)) == 0) {
                        isDuplicate = true;
                        tileReference = &tile_.second;
                        numberReference = tile_.first;
                        break;
                    }
                }

                if (!isDuplicate) {
                    tiles[currentTile] = tile;
                    tileReference = &tile;
                    numberReference = currentTile;
                    
                    int tileColumn = currentTile / 32;
                    int tileRow = currentTile % 32;

                    tile.drawTile(image_fix, tileRow * 8, tileColumn * 8);

                    currentTile++;
                }

                unsigned char littleEndNumber[2];
                littleEndNumber[0] = (numberReference & 0x00ff);
                littleEndNumber[1] = ((numberReference & 0xff00) >> 8);
                littleEndNumber[1] |= (paletteChoice << 4);

                int fileseek = file.tellg();
                
                file.write((const char*)littleEndNumber, 2);
            }

            if (j == 19) {
                break;
            }

            int a = 0;
            file.write((const char*)&a, 4);
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