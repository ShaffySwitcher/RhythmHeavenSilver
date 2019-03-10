______________________________________________________________________

 Lunar IPS (LIPS) - IPS patch utility for files up to 16 MB
 Version 1.02
 June 3, 2010

 FuSoYa's Niche
 http://fusoya.eludevisibility.org (also http://fusoya.cjb.net)
______________________________________________________________________

 CONTENTS
______________________________________________________________________

 1. Description
 2. Updates
 3. Legal Notice
 4. Contact Information

______________________________________________________________________

 1. Description
______________________________________________________________________


 Lunar IPS (LIPS) is intended as an easy to use, lightweight IPS patch
 utility for windows to replace the SNESTool DOS program.  It can both
 create and apply IPS patches.

 As far as features go, LIPS has:

 -IPS patch creation/application support.
 -full RLE encoding/decoding support.
 -file expanding/truncating support.
 -the IPS encoder creates files that are the same size or smaller
  than files created with SNESTool.
 -the IPS encoder avoids the rare "0x454F46 (EOF) offset bug" that
  SNESTool's IPS encoder has.
 -logging feature for applying IPS patches (ROMFileName.log).
 -registers the ".IPS" file type so that you can just double click on
  an IPS file and choose the file to apply it to for convenience.
 -support for patching files up to 16 MB in size, which is the limit
  of the IPS format.  The files can technically be larger than that,
  but the IPS format cannot record changes beyond the 16 MB mark due
  to 24-bit addressing.  The IPS file itself can be any size.

 Note that the logging and file registration options are saved to
 the registry.

______________________________________________________________________

 2. Updates
______________________________________________________________________


Version 1.02 June 3, 2010

-added an option to disable registering the .ips file type.
-updated the program to stop always using the Win95 default font and
 make it high-DPI aware.  Should improve readability on LCDs with
 ClearType.


Version 1.01 April 19, 2007

-fixed file association for Windows Vista, which should also fix it
 for non-administrator accounts on Win2k and up.
-very minor tweak to the IPS creation code to shave off a couple bytes


Version 1.00 February 14, 2003

-First Release.


______________________________________________________________________

 3. Legal Notice
______________________________________________________________________

 The Lunar IPS program (hereafter referred to as the "Software") is
 not supported by any commercial entity.

 The Software can be distributed freely for non-commercial use only. 
 No goods, services, or money can be charged for the Software in any
 form, nor may it be bundled as part of another package that is
 commercial in nature.

 The Software is provided AS IS, and its use is at your own risk.
 Anyone mentioned in this document will not be held liable for any
 damages, direct or otherwise, arising from its use or presence.

______________________________________________________________________

 4. Contact Information
______________________________________________________________________


 FuSoYa
   www:   http://fusoya.eludevisibility.org (http://fusoya.cjb.net)
   ???:   06942508

______________________________________________________________________
