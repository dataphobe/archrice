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

#software from 'normal' repositories
sudo pacman -S --noconfirm --needed baobab bleachbit catfish mpd ncmpcpp conky curl ntp
sudo pacman -S --noconfirm --needed dconf-editor termite rxvt-unicode
sudo pacman -S --noconfirm --needed dmidecode dunst imagemagick w3m 
sudo pacman -S --noconfirm --needed evince thunderbird filezilla firefox
sudo pacman -S --noconfirm --needed galculator geary gimp git glances gnome-disk-utility 
sudo pacman -S --noconfirm --needed gnome-font-viewer gnome-screenshot  gnome-tweak-tool 
sudo pacman -S --noconfirm --needed gparted gpick grsync nodejs npm
sudo pacman -S --noconfirm --needed hardinfo hddtemp hexchat htop gtop
sudo pacman -S --noconfirm --needed inkscape  lm_sensors lsb-release meld mlocate mpv
sudo pacman -S --noconfirm --needed nemo net-tools numlockx polkit-gnome 
sudo pacman -S --noconfirm --needed redshift scrot tmux neovim ranger pystatgrab python-keyring
sudo pacman -S --noconfirm --needed simple-scan simplescreenrecorder sysstat 
sudo pacman -S --noconfirm --needed transmission-cli transmission-gtk bzip2 openssh sshfs
sudo pacman -S --noconfirm --needed vlc vnstat wget unclutter r python python-pip sbt scala gcc clang maven

sudo systemctl enable vnstat
sudo systemctl start vnstat

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################


sudo pacman -S nemo --noconfirm --needed
sudo pacman -S notify-osd  --noconfirm --needed
sudo pacman -S lxappearance --noconfirm --needed
sudo pacman -S feh --noconfirm --needed
sudo pacman -S arandr --noconfirm --needed
sudo pacman -S qt4 --confirm --needed
sudo pacman -S xorg-xrandr --noconfirm --needed
sudo pacman -S gvfs  --noconfirm --needed
sudo pacman -S compton  --noconfirm --needed
sudo pacman -S volumeicon  --noconfirm --needed


package="conky-colors-git"

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

package="inxi"

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
echo "playerctl"
echo "################################################################"

package="playerctl"

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
echo "trayicon for sound for bluetooth headphone"
echo "################################################################"


package="pasystray-git"

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

	echo "To install pasytray, go to tmp file and run from there"
	echo "sudo pacman -U /tmp/packerbuild-1000/pasystray-git/pasystray-git/pasystray-git-0.6.0.r13.gccb5b6e-1-x86_64.pkg.tar.xz"
	echo "Trying to run the git version"
	sudo pacman -U /tmp/packerbuild-1000/pasystray-git/pasystray-git/pasystray-git*  --needed --noconfirm
	fi

fi

echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"

