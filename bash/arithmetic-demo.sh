#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input1? " firstnumber 
read -p "Input2? " secondnumber # Used read commands to get 3 numbers from the user.
read -p "Input3? " thirdnumber
sum=$((firstnumber + secondnumber + thirdnumber)) # Putting  sum of the 3 numbers into variable
product=$((firstnumber * secondnumber * thirdnumber)) # Now we have to add product of the 3 numbers into variables 

cat <<EOF
The sum of $firstnumber , $secondnumber and $thirdnumber numbers is $sum
The product of $firstnumber , $secondnumber and $thirdnumber numbers is $product
EOF
