![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
----------
### Definition of the problem
 The new system is supposed to be simple to handle, easy to understand, be able to carry out its required functions (create a car, record a trip, edit and delete a car etc). The new system should be able to save and record all its information. 
The installation of the new system should be easy and clear. For example, we can download the file from a link or copy the file from a USB drive. Assuming the owner of the shop was using a previous system, there are a variety of ways we can go about the process of installing a new system. They are: direct changeover, parallel running, pilot running and phased conversion.
A feasibility study must be carried out before installation to know whether or not the new system will come off. It is like a possibility study which asks the question “Is this system possible to achieve?”  If the system seems possible, the implementation of the system is then planned out. 
After this, the components of the computer system must also be made familiar with the system (eg. training the users). The information also must be backed up by another system or device to prevent data loss. 
### Proposed solution
I am going to use bash to create the program. I feel it is the most suitable solution because the user wants simple installation and bash is already incorporated in the operating system. Therefore, there is not much need to download a program. I guess bash is also less prone to hackers because it is quite an old programming system so most people are not really familiar with the commands. It also carries out the fuctions of 
### Success Criteria
These are outcomes that can be measured
1. A car can be created 
1. A trip can be recorded for a given car
1. A summary (total distance travel, average) of trips can be measured
1. A car information can be edited
1. A basic working backup system is available
1. The user can easily (name notation, documentation) understand the commands
1. Installation is **simple**, it does not require additional software, one step process
!. A car information can be deleted
1. The application can be uninstalled

Design
---------
### First Sketch of System
![CarRental](diagram.jpg)
**Fig. 1** This diagram shows the main components of the minimal rental app. It includes the input/outputs and main actions.

## Flow diagrams 

### Flow diagram for creating a frame in the Bash terminal
![FlowDiagramFrame](FLOWCHART.png)
***Fig. 2** This flow diagram shows the algorithm for creating a frame with a word inside in the bash terminal.

Development
--------
### 1. Script for installation
```.sh
#!/bin/bash

#This program creates the folder structure for the minimal rental app

echo "Starting installation"
echo "Installing in the desktop (default). Press enter"
read
cd ~/Desktop

#create app folder
mkdir RentalCarApp

cd RentalCarApp
mkdir database
mkdir scripts
echo "Installation complete successfully"
F
This script meets the requirement of the client for a simple installation
however, it could be simplified so that the user does not need to
execute the program by typing ``bash install.sh``

1 How to detedct is a word's length is odd or even
```.sh
  if [ $len%2 -eq 0 ]
```
2 How to create an unistall program
rm -r 

### Developing the action Create new car
This process involves the inputs _,_,_,_, and the outputs:
The following steps describe the algorithm
① Get the inputs as arguments '$1 $2 $3 $4'
② Check number of arguments. In bash this can be done as 'if [$# -eq 4]
③ Store new car inside maincarfile.txt. echo "Lx9/2 nissan 2000 8" >>maincarfile.txt
④ Create file for recording tips as plate.txt. echo "" > plate.txt

### Developing action record
This process records the trip.
The following steps decribe the algorithm
① Get the arguments (2) and check
② Check that the car exist
③ add a new line to the file license.txt
④ end

### Developing the action edit
This process edits information about a car.
The following steps describe the algorithm
①　Get the argument and check
②　Check if the car exists
③ edit the info of the car as desired.
④ save and store information

Evaluation
-----------
#!/bin/bash

#This file checks if the action create successfully adds a new car.

#Step 1: navigate to the folder containing the create.sh file
cd ../scripts/
if [ -f "create.sh" ]; then (this is used to check the existence of a file)
        echo "File exists, test will start now"
else
        echo "File create.sh does not exist. Test Failed"
fi

#Step 2: Use the create script to record a new car TXM901 nissan red 9
bash create TXM901 nissan red 9

#Step 3: Check that a txt file was created inside the database folder with
#the license numbver
if [ -f "TXM901.txt" ]; then (this is used to check the existence of a file)
        echo "Test one: file with the license plate created successfully. Passed"
else
        echo "Test one: file with license number not found: Failing"
fi







