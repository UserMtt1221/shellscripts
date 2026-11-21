#!/bin/bash

while true
do
clear
echo -e "What would you like to do?
Add and entry (a)
Search an entry (s)
Quit (q))
Enter your choice (a/s/q/)-->\c"
read ANSWER

case $ANSWER in 

a | A ) echo -e "Name of the family member-->\c"
	read NAME
	echo -e "Family member's relation to you-->\c"
	read RELATION
	echo -e "Family member's telephone number-->\c"
	read PHONE
	echo -e "$NAME\t$RELATION\t$PHONE" >>database
	;;
s | S ) echo -e "What word would you like to search for-->\c"
	read WORD
	grep -i "$WORD" database
	sleep 4
	;;
q | Q ) exit
	;;
* ) echo "Invalid entry. (Options a/s/q)"
esac
done
