#!/bin/bash
# Above is the shebang which is what allows the code in this file to run

UNAME="Linux"
# Above is the variable UNAME which is assigned to be equal to Linux

# The if statement below is used to check if the variable UNAME is equal to Linux

# The statement below creates a linuxsetup.log file
touch linuxsetup.log

if [$UNAME == "Linux"]
then
	# If UNAME is equal to linux then it prints out this statement
	echo This operating system is Linux!
else
	# If UNAME is not equal to linux then it prints an error message to the linuxsetup.log file
	echo ERROR >> linuxsetup.log
fi

# The mkdir statement below is used to check if their is a .TRASH directory in the home directory. If there is, then nothing happens. If it doesn't, the the .TRASH directory is created.
mkdir -p ~/.TRASH

# Below is the variable file which is set equal to the file .vimrc in the home directory.
FILE=~/.vimrc
# If the file in the $FILE variable exists, then it's name is changed from .vimrc to .bup_vimrc
if [-f $FILE]
then
	mv ~/.vimrc ~/.bup_vimrc
	# The echo statement below is used to let the user know that the file name was changed and it is printed to the linuxsetup.log file.
	echo The .vimrc file was changed to be named .bup_vimrc >> linuxsetup.log
fi

# The cat statement below is used to take the data from the vimrc file in the etc directory and overwrite the data in the .vimrc file in the home directory with the data from the vimrc file.
cat etc/vimrc > ~/.vimrc

# The echo statement below is meant to print the echo statement to the end of the ~/.bashrc file.
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
