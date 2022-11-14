#!/bin/bash 

read -p "what site you want to visit google, youtube / twitter? " site 

if [ $site == "google" ];
  then
     ping 1.1.1.1
elif [ $site == "youtube" ];
then
   ping 8.8.8.8
elif [ $site == "twitter" ];
 then
    ping 8.8.4.4
else
    exit 1

fi
