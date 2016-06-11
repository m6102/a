#!/bin/bash
# read -p "Enter a string: " string
# if [[ "$(echo "$string" | rev)" == "$string" ]]; then
#         echo "Palindrome"
#         fi  

read -p "Enter a string: " string
if [[ "$(echo "$string" | rev)" == "$string" ]]; then
    echo "$string IS a Palindrome"
  else
    echo "$string IS NOT a Palindrome"
fi