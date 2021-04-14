#!/bin/bash

echo "---------------------------------------------"
echo "CLEANING  UP  THE  UBUNTU  SYSTEM"
echo
echo "A simple script by Melwyn  F. Carlo"
echo
echo "`date`"
echo "---------------------------------------------"
echo
echo

echo "Clearing the Advanced Package Tool (APT) Cache Memory . . ."
sudo apt-get clean
echo " . . . Done"
echo

echo "Removing Old Kernels . . ."
sudo apt-get autoremove --purge
echo " . . . Done"
echo

echo "Removing old Dynamic Kernel Module Support (DKMS) . . ."
sudo rm -v /boot/*.old-dkms
echo " . . . Done"
echo

echo "Removing Unnecessary Packages and Dependencies . . ."
sudo apt-get autoremove
echo " . . . Done"
echo

echo "Removing Partial Packages . . ."
sudo apt-get autoclean
echo " . . . Done"
echo

echo "Cleaning up the GRUB Boot Menu . . ."
sudo update-grub
echo " . . . Done"
echo

echo "Clearing all Cache Memory . . ."
rm -rfv ~/.cache/*
echo " . . . Done"
echo

echo "Clearing all Logs . . ."
sudo journalctl --vacuum-time=10d
echo " . . . Done"
echo

echo "Clearing Trash . . ."
rm -rf ~/.local/share/Trash/*
echo " . . . Done"
echo

# Execute the following four, if required.
# Although it is best to sort out the below
# directories, and keep them clean at all times.

echo "Clearing the Downloads directory . . ."
rm -rfv ~/Downloads/*
echo " . . . Done"
echo

echo "Clearing the Pictures directory . . ."
rm -rfv ~/Pictures/*
echo " . . . Done"
echo

echo "Clearing the Videos directory . . ."
rm -rfv ~/Videos/*
echo " . . . Done"
echo

echo "Clearing the Music directory . . ."
rm -rfv ~/Music/*
echo " . . . Done"
echo

echo
echo
echo "---------------------------------------------"
echo "ALL  CLEANED  UP !"
echo
echo "`date`"
echo "---------------------------------------------"
echo
echo


