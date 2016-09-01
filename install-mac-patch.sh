#!/bin/bash

sudo softwareupdate --install --all

sudo osascript -e 'display dialog "You Just Got Patched!" buttons "OK" with icon note'
