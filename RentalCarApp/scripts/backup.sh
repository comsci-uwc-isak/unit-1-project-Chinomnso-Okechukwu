#!/bin/bash

# This program creates a backup of the database folder in the app folder
# Either backs up to the desktop, or to an USB stick

# Starting
echo "Backup starting"

##### Save to the desktop
# Navigate to the desktop to create a new folder (backup/)
cd ~/desktop/
# If theres already a folder called "backup", it is removed
rm -r backup
mkdir backup
# Creats subfolder (backup/dataBase/)
cd backup
mkdir dataBase

# Copies all (*) the files from the dataBase folder 
# to the new folder (backup/) and subfolder (backup/dataBase/)
cp ~/desktop/RentalCarApp/dataBase/* ~/desktop/backup/dataBase/

### NOT NECESSARY, ONLY FOR AESTHETIC PURPOSES
# Prints the frame
# Navigates to the folder of the frame.sh script
cd ~/Desktop/RentalCarApp/scripts/
bash frame.sh "Installation complete"


##### Save to a usb stick
# MULTILINE COMMENT
: '
echo -n "What is your USB stick called? "
read usbName

cd /Volumes/%usbName/
# If theres already a folder called "backup", it is removed
rm -r backup
mkdir backup
# Creats subfolder (backup/dataBase/)
cd backup
mkdir dataBase

# Copy files to USB stick
cp ~/desktop/RentalCarApp/dataBase/* /Volumes/$usbName/backup/dataBase/

' # MULTILINE COMMENT
