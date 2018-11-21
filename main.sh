#!/bin/sh

STEP=0
LINE=""
SECRET="RYAR"

while [ $STEP -lt 15 ]
do
    read -p "Enter " LINE
    if [ ${#LINE} -ne 4 ]
    then
        echo "!Error: line length should be 4."
        continue
    fi
    WHITE=0
    BLACK=0
    UNWANT=false 
    for i in 0 1 2 3
    do
        if ! echo ${LINE:i:1} | grep -Eq '[RMYA]' 
        then
            echo "!Error: wrong letter:" ${LINE:i:1}
            UNWANT=true
            continue
        fi
        if [ ${SECRET:i:1} = ${LINE:i:1} ]
        then
            WHITE=$((WHITE+1))
        else
            BLACK=$((BLACK+1))
        fi
        if [ $WHITE -eq 4 ]
        then
            echo "YOU WIN! ;)"
            exit 0
        fi
    done

    if $UNWANT
    then 
      continue
    fi
    
    STEP=$((STEP+1))
    echo "#"$STEP "W"$WHITE"B"$BLACK   $LINE
    
done

echo "YOU LOSE T_T"