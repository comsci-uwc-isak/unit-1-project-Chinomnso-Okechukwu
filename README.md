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

Design
---------
### First Sketch of System
![SystemDiagram] (diagram.jpeg)
**Fig. 1** This diagram shows the main components of the minimal rental app. It includes the input/outputs ND MAIN ACTIONS.
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

```
This script meets the requirement of the client for a simple installation
however, it could be simplified so that the user does not need to
execute the program by typing ``bash install.sh``


Evaluation
-----------



