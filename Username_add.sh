#!/bin/bash
if [ $UID !=0 ];
then
echo "you are not authorized"
exit 1
fi

read -p "Please enter your first name " first
read -p "Please enter your last name " last
full="$first $last"
read -p "Enter your shell " shell
read -p "what is your group? " group
read -p "Enter your password " password
read -p "Re-enter your password " password2

if [ $password != password2 ];
then
echo "Password invalid, try again"
exit 1
else
echo "Password complete "
fi

letter=$(echo $first | cut -c 1)
combined=$letter$last

useradd $combined
groupadd $group

echo "$combined:$password" | chpasswd
