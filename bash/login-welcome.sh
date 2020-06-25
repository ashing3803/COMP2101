#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
userc="$USER" #By using the variables of environment to obtain username dynamically
hostname="$(hostname)" #Using hostname to get it dynamicalyy
day=$(date +%A) #By applying day we will be getting what day is 
currenttime=$(date +%I:%M\ %p)
  # by date command will get date
###############
# Main        #
###############
if [ "$day" = Monday ]; #  Using if command to check day name and  addition of custom line to print message  by day name 
then
csay="Welcome to planet $hostname, nerd $userc!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, system engineer $userc!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, swift developer $userc!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, tech guardian $userc!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, nutritionist $userc!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, Android developer $userc!"
else
csay="Welcome to planet $hostname, extrovert $userc!"
fi
cowsay "$csay It is $currenttime on $day ."
