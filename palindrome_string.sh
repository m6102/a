#!/bin/bash
read -p "Enter a string: " string
if [[ $(rev <<< $string) == "$string" ]]; then
echo Palindrome
else 
    echo Not Pallindrome
fi
