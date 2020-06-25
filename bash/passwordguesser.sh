#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

login="You found out!!!" 
nologin="Nop, It's Incorrect."
referenceString="Password" # making of  a variable to store password
read -s -p "Insert secret character:" myString #get  userinput  for password and saving into $myString
echo
if [ $myString = $referenceString ]; then #if-else condition 5 times to check input is valid or not by comparing $referenceString.
  echo "$login"
  echo
else
    echo "$nologin"
    read -s -p "Insert secret character:" myString
  if [ $myString = $referenceString ]; then
    echo "$login"
    echo
  else
      echo
      echo "$nologin"
      read -s -p "Insert secret character:" myString
    if [ $myString = $referenceString ]; then
      echo "$login"
      echo
    else
      echo
      echo "$nologin"
read -s -p "Insert secret character:" myString
if [ $myString = $referenceString ]; then
  echo "$login"
  echo
else
    echo "$nologin"
    read -s -p "Insert secret character:" myString
	if [ $myString = $referenceString ]; then
  echo "$login"
  echo
else
    echo "Better luck on next login."
fi
fi
fi
fi
fi
