@echo off
echo Redcarred2's Cursor restore script for roblox, if you paid for this, you got scammed.
echo Please report all errors to Redcarred2#6192
cd %USERPROFILE%
:checkzip
if exist Cursors.zip (
  echo Cursors.zip exists, not downloading.
  goto checkdir
) else (
  echo Cursors.zip doesn't exist, downloading
  curl https://github.com/Redcarred2/Roblox-Cursor-Restore/raw/main/Cursors.zip -O Cursors.zip
  goto checkdir
)
:checkdir
if exist Cursors\ (
  echo Cursors folder exists, not unzipping
  goto copy
) else (
  echo Cursors folder doesn't exist, unzipping
  powershell -command "Expand-Archive -LiteralPath Cursors.zip"
  goto copy
)
:copy
if exist %LocalAppData%\Roblox\Versions\version-b1fc630a745a4f26\content\textures\Cursors\KeyboardMouse\ (
  del /Q %LocalAppData%\Roblox\Versions\version-b1fc630a745a4f26\content\textures\Cursors\KeyboardMouse\*.*
  xcopy Cursors\*.png %LocalAppData%\Roblox\Versions\version-b1fc630a745a4f26\content\textures\Cursors\KeyboardMouse\ /s
) else (
  echo An error has occured, Is Roblox Installed?, If it is, DM Redcarred2#6192
)
pause

