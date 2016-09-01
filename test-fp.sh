#!/bin/bash
string=mailcontrol
GET=`curl -v --silent "http://testdatabasewebsense.com/botnetworks" 2>&1 | grep mailcontrol`

if [[ $GET =~ "$string" ]];
then
  echo "Forcepoint is Operational";
fi
