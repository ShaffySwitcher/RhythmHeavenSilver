W Hat from GBAtemp here.

It's been years since I looked at any of these files. No guarantee on how well they work. I took the source code from 2013-12-19 and added the Font Hack (version 4) I created for the game. The font hack IPS should have been included in the source for all these years. I don't know why it wasn't.

If you want to make your own edits, patch the unedited Japanese Rhythm Tengoku (J) ROM with the font hack before you do anything else. The font hack includes a thinner English font and a patch to the game's sprite table. The sprite table tells the game how many pixels wide each letter is. If I remember correctly, all of the patcher programs assume that the font is already patched. v4 of the font hack has a convienent 1-pixel-wide spacer character that is totally blank. "the prime symbol ′ is now set to a width of zero. useful for spacing 1px at a time"

Much of the hacking was done by other people, so I will be of limited use for detailed hacking questions.