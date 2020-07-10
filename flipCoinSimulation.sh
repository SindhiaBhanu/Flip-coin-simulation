#!/bin/bash -x
headCount=0
tailCount=0
while (($headCount!=21&&$tailCount!=21))
do
        result=$((RANDOM%2))
        if [ $result = 0 ]
        then
                ((headCount++))
                echo HEADS
        else
                ((tailCount++))
                echo TAILS
        fi
done
echo HEADS has won $headCount times
echo TAILS has won $tailCount times
if [[ $headCount -gt $tailCount ]]
then
        difference=$(($headCount - $tailCount))
        echo HEAD has WON by $difference times
elif [[ $headCount -lt $tailCount ]]
then
        difference=$(($tailCount - $headCount))
        echo TAIL has WON by $difference times
else
        echo Its a TIE
fi
