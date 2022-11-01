Hands down the stupidest one yet, the intro2.bin is easy since it is just a sprite, with an OAM so even if it was
scrambled it was fine.

But the intro1.bin is completely scrambled, and it is loaded as a background, which left me with two choices:

- Recompile the background by hand (600 tiles!!!)
- Figure out how the game reassamble the background and make a program to do it for me.

Of course I choosed option 2;
By checking the pointer to the sprite (C0212C -> 2C21C008), we can see that C0212C gets 
loaded into the VRAM (0x6000000), and some other pointer gets loaded into 0x600E800, which made me assume, it was
that arrangement, however the pointer in the ROM didn't really point to anything useful.

But loading the Polyrhythm title card inside the memory editor at that memory space, made me realize it was
infact the arrangement being loaded there, editing it showed me it was 4 bytes for one tile left to right, 
up to down.

So what I've done is include two C++ source file for you to compile if you wanna try to change the graphics.
(The source is pretty easy to understand)

- Shaffy