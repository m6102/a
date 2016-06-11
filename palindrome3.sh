#!/bin/bash
# Shell script to test if a string is a palindrome
# This uses the well known method to scan half the string matching
# the i and len - i chars, if one mismatch is found it quits immediately
 
echo "Enter a String : "
read string
 
i=0
len=${#string}
 
#get the mid value upto which the comparison would be done
mid=$(($len/2))
 
while [ $i -lt $mid ]
  do
    if [ "${string:$i:1}" != "${string: -$(($i+1)):1}" ]
      then
      echo "\"$string\" IS NOT a Palindrome"
      exit
    fi
    i=$(($i+1))
done
echo "\"$string\" IS a Palindrome"