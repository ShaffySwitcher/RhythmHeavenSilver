@echo off

:compile
del "ROM\rh-atlus.gba"
copy "ROM\rh-jpn.gba" "ROM\rh-atlus.gba"
perl "tools\abcde\abcde.pl" -cm abcde::Atlas "ROM\rh-atlus.gba" "src\script.txt"
tools\armips.exe tools/ASM/compile.asm
tools\flips.exe "tools\Font Hack 4 - 1px spacer.ips" "ROM\rh-eng.gba"
tools\flips.exe "tools\accents.ips" "ROM\rh-eng.gba"
pause
goto compile