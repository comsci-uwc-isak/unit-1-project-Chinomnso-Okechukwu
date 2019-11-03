#!/bin/bash
#This program summarizes the total distance traveled by a car.

total=0

#Read through the car's file
cd ../Database
FILE="$license.txt"
while read line
do
  #Bash splits a line by spaces
  for word in $line
  do
    km=$word
#Calculate the total distance traveled
    (( total=$total + $km ))
    break
  done
done < $FILE

#Print the car's file
echo "Trips:"
cat $license.txt

#Print the car's total distance travelled
bash frame.sh "Total distance travelled:" $total "km"
