#!/bin/bash

# Handle POSIX symlinks using Windows equivalents (i.e., Junction or SymbolicLink)
export MSYS=winsymlinks:native

if [ ! -d /c/Users/$USER/scoop/persist/msys2/ ] ; then
	echo "Error: MSYS2 not installed!"
	exit -1
fi

if [ ! -d /c/Users/$USER/scoop/persist/msys2/home/$USER ]; then
	# Link Windows home directory to scoop MSYS2 persist home directory
	powershell -c "New-Item -ItemType Junction -Name C:\\Users\\$USER\\scoop\\persist\\msys2\\home\\$USER -Target C:\\Users\\$USER"
fi

