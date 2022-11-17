#!/bin/bash
# Above is the shebang which is used to make sure the code in this file is able to run.

# Below is a rm statement which is used to remove the .vimrc directory in the home directory.
rm -r ~/.vimrc

# Below is a sed statement which is used to remove the last line from the .bashrc file in the home directory.
sed '$d' ~/.bashrc

# Below is a rm statement which is used to remove the .TRASH directory from the home directory.
rm -r ~/.TRASH
