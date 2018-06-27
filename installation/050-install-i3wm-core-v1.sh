#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


#Core stuff i3

echo "################################################################"
echo "i 3  improved tiling core files"
echo "################################################################"

sudo pacman -S --noconfirm --needed  rofi


echo "################################################################"
echo "fancylock"   
echo "################################################################"

package="i3lock-fancy-git"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi pacaur &> /dev/null; then
		
		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi


fi

# gnome

echo "################################################################"
echo "polybar"   
echo "################################################################"

package="polybar"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi pacaur &> /dev/null; then
		
		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi


fi




#
#
# echo "################################################################"
# echo "i3blocks"
# echo "################################################################"
#
# package="i3blocks"
#
# #----------------------------------------------------------------------------------
#
# #checking if application is already installed or else install with aur helpers
# if pacman -Qi $package &> /dev/null; then
#
#         echo "################################################################"
#         echo "################## "$package" is already installed"
#         echo "################################################################"
#
# else
#
#         #checking which helper is installed
#         if pacman -Qi packer &> /dev/null; then
#
#                 echo "Installing with packer"
#                 packer -S --noconfirm --noedit  $package
#
#         elif pacman -Qi pacaur &> /dev/null; then
#
#                 echo "Installing with pacaur"
#                 pacaur -S --noconfirm --noedit  $package
#
#         elif pacman -Qi yaourt &> /dev/null; then
#
#                 echo "Installing with yaourt"
#                 yaourt -S --noconfirm $package
#
#         fi
#
#         # Just checking if installation was successful
#         if pacman -Qi $package &> /dev/null; then
#
#         echo "################################################################"
#         echo "#########  "$package" has been installed"
#         echo "################################################################"
#
#         else
#
#         echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
#         echo "!!!!!!!!!  "$package" has NOT been installed"
#         echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
#
#         fi
#
# fi



echo "################################################################"
echo "i3-gaps-next-git"   
echo "################################################################"

package="i3-gaps-next-git"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi pacaur &> /dev/null; then
		
		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi





echo "################################################################"
echo "###################    i3 core installed  ######################"
echo "################################################################"


