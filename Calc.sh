#!/bin/bash
#This is a basic Calculator Project
# Function to display the calculator menu
display_menu() {
    echo "Simple Bash Calculator"
    echo "**********************"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "**********************"
}
Add(){
   echo -n "Enter Your first number: " 
   read fnum
   echo -n "Enter Your Second Number: " 
   read snum
   result=$(echo " $fnum + $snum " |bc)
   echo " Result: $result"

}
Subtract(){
   echo -n "Enter Your first number: " 
   read fnum
   echo -n "Enter Your Second Number: " 
   read snum
   result=$(echo " $fnum - $snum " |bc)
   echo " Result: $result"
}
Multiply(){
   echo -n "Enter Your first number: " 
   read fnum
   echo -n "Enter Your Second Number: " 
   read snum
   result=$(echo " $fnum * $snum " |bc)
   echo " Result: $result"
}
Divide(){
  echo -n "Enter Your first number: " 
  read fnum
  echo -n "Enter Your Second Number: "
  read snum
  if [ "$snum" -eq 0 ]; then
	echo "Error: division by zero is not allowed"
  else
     result=$(echo " scale=2; $fnum/$snum " |bc)
     echo " Result: $result"
   fi
}
while true
do
   display_menu    	
   read -p "Choose a function (1-4): " choice
   case $choice in 
	   1) Add
		   ;;
           2) Subtract
		   ;;
	   3) Multiply
		   ;;
	   4) Divide
		   ;;
	   5) echo "Invalid choice"
		   ;;
	
   esac
done
