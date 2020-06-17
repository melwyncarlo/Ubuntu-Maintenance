#!/bin/bash

sudo clear
clear
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

echo "Removing Unnecessary Packages and Dependencies . . ."
sudo apt-get autoremove
echo " . . . Done"
echo

echo "Removing Partial Packages . . ."
sudo apt autoclean
echo " . . . Done"
echo

echo "Cleaning up the GRUB Boot Menu . . ."
sudo update-grub
echo " . . . Done"
echo

echo "Clearing the Thumbnails Cache Memory . . ."
rm -rfv ~/.cache/thumbnails
echo " . . . Done"
echo
echo

echo "Clearing the Cache Memories and Browser Histories of Browsers . . ."
echo
echo "I.  Mozilla Firefox . . ."
rm -r -v ~/.mozilla && rm -r -v ~/.cache/mozilla
echo
echo "II. Google Chrome . . ."
# Copying the Bookmarks Database - START
cp -v ~/.config/google-chrome/Default/Bookmarks ~/
cp -v ~/.config/google-chrome/Default/Bookmarks.bak ~/
# Copying the Bookmarks Database - END
rm -r -v ~/.config/google-chrome && rm -r -v ~/.cache/google-chrome
mkdir -v ~/.config/google-chrome/Default
# Restoring the Bookmarks Database - START
mv -v ~/Bookmarks ~/.config/google-chrome/Default
mv -v ~/Bookmarks.bak ~/.config/google-chrome/Default
# Restoring the Bookmarks Database - END
echo
echo " . . . Done"
echo
echo

echo "Clearing all Cache Memories . . ."
sudo find ~/.cache -type f -print -delete
sudo rm -f -v ~/.bash_history
sudo rm -f -v ~/.python_history
sudo find ~/var/cache -type f -print -delete
sudo find ~/var/crash -type f -print -delete
sudo find ~/var/tmp -type f -print -delete
sudo find ~/var/backups -type f -print -delete
echo " . . . Done"
echo

echo "Removing old Dynamic Kernel Module Support (DKMS) . . ."
sudo rm -v /boot/*.old-dkms
echo " . . . Done"
echo


echo "Removing Old Revisions of Snaps . . ."
set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
	while read snapname revision;
	do
		snap remove "$snapname" --revision="$revision"
	done
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
