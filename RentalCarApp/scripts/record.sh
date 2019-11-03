#!/bin/bash

# This program records the trips of each car
# License Distance

if [ $# -ne 2 ]; then
    echo "Error with the number of arguments"
    echo "Enter License Maker Model Passengers"
    exit
fi

# Number of arguments are correct, continue
license=$1
distance=$2

cd ../database
# Check if file exists
if [ ! -f "$license.txt" ]; then
    echo "Car does not exist"
    exit
fi

# Adding the trip to the file for the car
echo "$distance" >> $license.txt

cd ../scripts
bash frame.sh "Trip recorded successfully"


