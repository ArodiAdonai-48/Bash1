#!/bin/bash
#This is a basic Calculator Project
# Function to display the calculator menu
display_menu() {
    echo "Simple Bash Calculator"
    echo "----------------------"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "----------------------"
}
Add(){
   read -p "Enter Your first number: " fnum
   read -p "Enter Your Second Number: " snum
   result=$(echo " $fnum + $snum " | bc)
   echo " Result: $relult"

}
Subtract(){
   read -p "Enter Your first number: " fnum
   read -p "Enter Your Second Number: " snum
   result=$(echo " $fnum - $snum " | bc)
   echo " Result: $relult"
}
Multiply(){
   read -p "Enter Your first number: " fnum
   read -p "Enter Your Second Number: " snum
   result=$(echo " $fnum * $snum " | bc)
   echo " Result: $relult"
}
Divide(){
  read -p "Enter Your first number: " fnum
  read -p "Enter Your Second Number: " snum
  if [ "$snum" -eq 0 ]; then
	echo "Error: division by zero is not allowed"
  else
     result=$(echo " scale=2; $fnum/ $snum " | bc)
     echo " Result: $relult"
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
