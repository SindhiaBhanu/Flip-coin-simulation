#!/bin/bash -x
read -p "Enter how many times you want to flip coin : " noOfFlips
headCount=0
tailCount=0
for((i=0;i<$noOfFlips;i++))
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
