#!/bin/bash

echo "---------------------------------------------"
echo
echo -e "\e[1m CLEANING  UP  THE  UBUNTU  SYSTEM"
echo
echo -e "\e[0mA simple script by \e[1m\e[7mMelwyn  F. Carlo"
echo -e "\e[0m"
echo -e "\e[5m`date`"
echo -e "\e[0m---------------------------------------------"
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
echo
echo -e "\e[1m ALL  CLEANED  UP !"
echo -e "\e[0m"
echo -e "\e[5m`date`"
echo -e "\e[0m---------------------------------------------"
echo
echo

