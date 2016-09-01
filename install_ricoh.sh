#!/bin/bash

lpstat -s | grep 10.10.70.33 | awk '{print $3}' | sed s/\:// | xargs -I{} lpadmin -x {}

MOUNTDIR=$(echo `hdiutil mount RicohPrinterDrivers.dmg | tail -1 \
| awk '{$1=$2=""; print $0}'` | xargs -0 echo) \
&& sudo installer -pkg "${MOUNTDIR}/"*.pkg -target /

lpadmin -p FP-Workroom-Printer -L “FP Workroom Printer" -E -v lpd://10.10.70.40 -P /Library/Printers/PPDs/Contents/Resources/RICOH\ MP\ C4503.gz
