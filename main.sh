#!/bin/sh

COLORS="RYMA"
STEP=0
LINE=""

while [ $STEP -lt 15 ]
do
    read -p "Enter_the_DEVICE_Bssid: " LINE
    echo $LINE $STEP
    STEP=$((STEP+1))
done