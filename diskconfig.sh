#!/bin/bash

#This script creates a report of our disk configuration

FILENAME='hostname'
FILE="$FILENAME.report"

echo "Disk report saved to $FILENAME.report"

echo -e "\n LVM Configuration: \n\n" >> $FILE
lvscan >> $FILE

echo -e "\n\n Partitition Configuration: \n\n" >> $FILE
fdisk -l | head -17 >> $FILE

echo -e "\n\n Mounted Filesystems: \n\n" >> $FILE
df -hT | grep -v tmp >> $FILE 
