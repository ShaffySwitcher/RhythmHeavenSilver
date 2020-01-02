@echo off

:compile
del "ROM\rh-atlus.gba"
copy "ROM\rh-jpn.gba" "ROM\rh-atlus.gba"
Compile\atlas.exe "ROM\rh-atlus.gba" "EN_SourceCode\script.txt"
Compile\armips.exe Compile/ASM/compile.asm
Compile\flips.exe "Compile\Font Hack 4 - 1px spacer.ips" "ROM\rh-eng.gba"
pause
goto compile