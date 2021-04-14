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

echo "Clearing the Downloads directory . . ."
-rf ~/Downloads/*
echo " . . . Done"
echo

echo "Clearing the Pictures directory . . ."
-rf ~/Pictures/*
echo " . . . Done"
echo

echo "Clearing the Videos directory . . ."
-rf ~/Videos/*
echo " . . . Done"
echo

echo "Clearing the Music directory . . ."
-rf ~/Music/*
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


