@echo off
setlocal EnableDelayedExpansion

cd "C:\Program Files (x86)\Steam\steamapps\common\Geometry Dash\Resources\icons"

rem Renaming to temporary names to avoid conflicts
ren player_00.plist player_00.plist.tmp
ren player_00-hd.plist player_00-hd.plist.tmp
ren player_00-uhd.plist player_00-uhd.plist.tmp
ren player_01.plist player_01.plist.tmp
ren player_01-hd.plist player_01-hd.plist.tmp
ren player_01-uhd.plist player_01-uhd.plist.tmp

ren player_00.png player_00.png.tmp
ren player_00-hd.png player_00-hd.png.tmp
ren player_00-uhd.png player_00-uhd.png.tmp
ren player_01.png player_01.png.tmp
ren player_01-hd.png player_01-hd.png.tmp
ren player_01-uhd.png player_01-uhd.png.tmp

rem Replacing content inside plist files
powershell -Command "(Get-Content player_00.plist.tmp) -replace 'player_00', 'player_01' | Set-Content player_00.plist.tmp"
powershell -Command "(Get-Content player_00-hd.plist.tmp) -replace 'player_00', 'player_01' | Set-Content player_00-hd.plist.tmp"
powershell -Command "(Get-Content player_00-uhd.plist.tmp) -replace 'player_00', 'player_01' | Set-Content player_00-uhd.plist.tmp"
powershell -Command "(Get-Content player_01.plist.tmp) -replace 'player_01', 'player_00' | Set-Content player_01.plist.tmp"
powershell -Command "(Get-Content player_01-hd.plist.tmp) -replace 'player_01', 'player_00' | Set-Content player_01-hd.plist.tmp"
powershell -Command "(Get-Content player_01-uhd.plist.tmp) -replace 'player_01', 'player_00' | Set-Content player_01-uhd.plist.tmp"

rem Renaming to final names
ren player_00.plist.tmp player_01.plist
ren player_00-hd.plist.tmp player_01-hd.plist
ren player_00-uhd.plist.tmp player_01-uhd.plist
ren player_01.plist.tmp player_00.plist
ren player_01-hd.plist.tmp player_00-hd.plist
ren player_01-uhd.plist.tmp player_00-uhd.plist

ren player_00.png.tmp player_01.png
ren player_00-hd.png.tmp player_01-hd.png
ren player_00-uhd.png.tmp player_01-uhd.png
ren player_01.png.tmp player_00.png
ren player_01-hd.png.tmp player_00-hd.png
ren player_01-uhd.png.tmp player_00-uhd.png

echo Renaming and content replacement completed successfully.
pause
