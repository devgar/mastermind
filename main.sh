#!/bin/sh

COLORS="RYMA"
STEP=0
LINE=""
SECRET="RYAR"


while [ $STEP -lt 15 ]
do
    read -p "Enter " LINE
    WHITE=0
    BLACK=0
    for i in 0 1 2 3
    do
        if [ ${SECRET:i:1} = ${LINE:i:1} ];
        then
            WHITE=$((WHITE+1))
        else
            BLACK=$((BLACK+1))
        fi
        if [[ $WHITE -eq 4 ]];
        then
            echo "YOU WIN! ;)"
            exit 0
        fi
    done
    
    STEP=$((STEP+1))
    echo "#"$STEP "W"$WHITE"B"$BLACK   $LINE
    
done

echo "YOU LOSE T_T"