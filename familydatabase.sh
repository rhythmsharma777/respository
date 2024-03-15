#!/bin/bash
while true 
do
clear
echo -e "What would you like to do?
Add an entry  (a)
Search an entry  (s) 
Quit  (q)
Enter you choice (a/s/q)-->\c"
read ANSWER
case $ANSWER in
a|A) echo -e "Name of the family member --> \c"
read NAME
echo -e "Family member's relation to you --> \c"
read PHONE
echo "$NAME\t$RELATION\t$PHONE" >> database
;;
s|S ) echo "What word would you like to look for? --> \c"
read WORD
grep "$WORD" database
sleep 4
;;
q|Q ) exit
,,
echo "You must enter either the letter a or s."
sleep 4
;;
esac
done


