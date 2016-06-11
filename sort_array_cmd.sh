#!/bin/bash

if [ -z "$*" ]; then
    echo "No Arguments Supplied"
fi

n=$#
nos=()

echo "No of arguments is $n"

for (( i=0;i< $n; i++))
do
    for j in $*
    do
        nos+=("$j")
    done
done

echo -ne "Nos in the array: "
for ((i=0; i<$n;i++))
do
    echo -ne "${nos[$i]}\t"
done

for ((i=0; i<$n;i++))
do
    for ((j=0;j<$n;j++))
    do
        if (( ${nos[$i]} < ${nos[$j]} )); then
            t=${nos[$i]}
            nos[$i]=${nos[$j]}
            nos[$j]=$t
        fi
    done
done

echo -ne "\nSorted Array: "
for ((i=0; i<$n;i++))
do
    echo -ne "${nos[$i]}\t"
done
