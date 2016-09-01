#!/bin/bash

UA=`stat -f '%u %Su' /dev/console | awk '{print $2}'`

FILE1=/Users/$UA/Library/LaunchAgents/com.getdropbox.dropbox.integritycheck.plist
if [ -f $FILE1 ]; then
   echo "'$FILE1' Exists"
else
   echo "'$FILE1' Does Not Exist"
fi

FILE2=/Users/$UA/Library/LaunchAgents/com.getdropbox.dropbox.timegrabber.plist
if [ -f $FILE2 ]; then
   echo "'$FILE2' Exists"
else
   echo "'$FILE2' Does Not Exist"
fi

FILE3=/Users/$UA/Library/LaunchAgents/com.getdropbox.dropbox.usercontent.plist
if [ -f $FILE3 ]; then
   echo "'$FILE3' Exists"
else
   echo "'$FILE3' Does Not Exist"
fi

FILE4=/Users/$UA/Library/.dropbox/
if [ -f $FILE3 ]; then
   echo "'$FILE4' Exists"
else
   echo "'$FILE4' Does Not Exist"
fi
