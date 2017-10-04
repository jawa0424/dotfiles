@echo off

set dotDir=%USERPROFILE%\dotfiles
set vimDir=%USERPROFILE%\vimfiles

:: check vimDir
if exist %vimDir% (
  echo SKIP: Linking %vimDir%
) else (
	echo EXEC: Linking %vimDir%
	mklink /d %vimDir% %dotDir%\vimfiles
)

:: Download vim-plug (https://github.com/junegunn/vim-plug)
set vimPlugURI=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo Downloading vim-plug (%vimPlugURI%)
bitsadmin.exe /transfer jobx %vimPlugURI% %vimDir%\autoload\plug.vim


echo done.
