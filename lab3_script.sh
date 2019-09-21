#!/bin/bash
# Authors : William Dellinger
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "enter fn"
read fn
echo "enter regex"
read regex

#Problem 2 Code:
grep $regex $fn

#Problem 3 Code:
#we look for 3 numbers at the beginning of a line  and then a hyphen and so on till it looks like a phone number
egrep -c  "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" regex_practice.txt
#Problem 4 Code:
#looks for a string of numbers  atleast one in length before  looking for an @ and then  a string afterwords
egrep -c "[A-Za-z0-9]+@[A-Za-z0-9]+" regex_practice.txt
#looks for phone numbers starting with 303
egrep  "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt
#adds email addresses to a file called email_results.txt 
egrep  "[A-Za-z0-9]+@[A-Za-z0-9]+" >> email_results.txt regex_practice.txt

