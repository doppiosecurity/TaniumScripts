#!/bin/bash

hdiutil info | grep "Ricoh Printer" | awk '{print $1}' | xargs -I {} hdiutil detach {}

