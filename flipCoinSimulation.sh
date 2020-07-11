#!/bin/bash -x
function repeat () {
headCount=0
tailCount=0
while true
do
        for((i=0;i<$noOfTimes;i++))
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
                if [ $difference -ge 2 ]
                then
                        echo HEAD has WON by $difference times
                        break
                else
                        continue
                fi
        elif [[ $headCount -lt $tailCount ]]
        then
                difference=$(($tailCount - $headCount))
                if [ $difference -ge 2 ]
                then
                        echo TAIL has WON by $difference times
                        break
                else
                        continue
                fi
        else
                echo Its a TIE
                continue
        fi
done
}

read -p "How many times you want to flip a coin" noOfTimes
headCount=0
tailCount=0
for((i=0;i<$noOfTimes;i++))
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
        repeat
fi
