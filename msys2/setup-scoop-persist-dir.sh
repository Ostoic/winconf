#!/bin/bash

if [ ! -d /c/Users/$USER/scoop/persist/msys2/ ] ; then
	echo "Error: MSYS2 not installed!"
	exit -1
fi

if [ ! -d /c/Users/$USER/scoop/persist/msys2/home/$USER ]; then
	# Link Windows home directory to scoop MSYS2 persist home directory
	powershell -c "New-Item -ItemType Junction -Name C:\\Users\\$USER\\scoop\\persist\\msys2\\home\\$USER -Target C:\\Users\\$USER"
fi

sed -i 's|db_home: cygwin desc|db_home: windows|g' /etc/nsswitch.conf


