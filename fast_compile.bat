@echo off

:compile
del "Game\rh-atlus.gba"
copy "Game\rh-jpn.gba" "Game\rh-atlus.gba"
atlas "Game\rh-atlus.gba" script.txt
armips.exe compile.asm -sym mysym.sym
flips "Font Hack 4 - 1px spacer.ips" "Game\rh-eng.gba"
pause
goto compile