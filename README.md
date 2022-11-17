# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.

./.gitignore

This file is used to tell git to ignore certain files and directories so that they are not sent to GitHub

./etc/bashrc_custom

This file contains a list of useful aliases and functions

./etc/vimrc

This file consists of configurations

./bin/linux.sh

This file is used to check if the operating system type is Linux through the UNAME variable. If the operating system is not equal to Linux then an error messages is printed to the linuxsetup.log file. If it is equal to Linux, then it simply prints out that the operating system is Linux.

The file then creates a .TRASH directory in the home directory if it does not exist.

The file then checks if the .vimrc file in the home directory exists and if it does it changes its name to .bup.vimrc and prints a message to the linuxsetup.log that the file .vimrc was changed to be named .bup_vimrc

The file then overwrites the contents of the .vimrc file in the home directory with the contents of the etc/vimrc file. 

The file then adds the statement 'source ~/.dotfiles/etc/bashrc_custim' to the end of the .bashrc file in the home directory.

./bin/cleanup.sh

This file is meant to take anything done by the ./bin/linux.sh file and erase it.

./Makefile

This file is used to run both the ./bin/linux.sh script and the ./bin/cleanup.sh script.

./README.md

This file describes what each file in the repository does.
