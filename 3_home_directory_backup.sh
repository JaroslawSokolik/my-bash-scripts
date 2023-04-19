#!/bin/bash

# Author: 
# Jarosław Sokolik

# Description:
# Creates a backup in the current directory of
# all files in the home directory

echo "Hello ${USER^}"
echo "I will now backup your home directory which is $HOME"
currentdir=$(pwd)
echo "You are running script from $currentdir, therefore backup will be saved in this directory"
tar -cf "$currentdir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" $HOME 2>/dev/null
echo "Backup completed successfully"
exit 0