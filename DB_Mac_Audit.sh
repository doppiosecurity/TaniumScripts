#!/bin/bash

UA=`stat -f '%u %Su' /dev/console | awk '{print $2}'`

sudo find /Users/$UA/Dropbox
