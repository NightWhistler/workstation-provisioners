#!/usr/bin/env bash

current_directory=$(pwd)

# Copy stdout to a log file
exec > >(tee --append "${current_directory}/box-setup.log")

# Redirect stderr to stdout so it can also be copied to the log file
exec 2>&1

# suppress prompts
export DEBIAN_FRONTEND=noninteractive

# using a tmp dir to store any downloaded files or logs
# /var/tmp files are supposed to persist even on reboot
tmp="/var/tmp"

lib="${current_directory}/lib"
scripts="${current_directory}/scripts"


# load utility functions
. ${lib}/utilities.sh > /dev/null
cd ${current_directory}


print_line "1. Install System Updates #########################################"
# update system packages
sudo -E apt-get update 

# upgrade system packages
sudo -E apt-get upgrade -y && sudo -E apt-get dist-upgrade -y 


print_line "2. Install Packages ###############################################"
# accept the ttf-mscorefonts-installer EULA ahead of time
sudo -E debconf-set-selections <<< "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true"

# create commonly required directories
cd ${HOME}
mkdir -p "bin" ".icons" ".themes" "Apps" "Source" "projects"

# run the package installation script
#. ${scripts}/install.sh > /dev/null
. ${scripts}/install.sh 
cd ${current_directory}

# add bin to path
echo 'export PATH=${PATH}:${HOME}/bin' | tee --append "${HOME}/.bashrc"

# set vim as the default editor
cp ~/.bashrc ~/.bashrc.backup
echo 'export VISUAL="vim"' | tee --append "${HOME}/.bashrc"
echo 'export EDITOR="${VISUAL}"' | tee --append "${HOME}/.bashrc"

echo 'set -o vi' | tee --append "${HOME}/.bashrc"

# Set a random hostname instead of 'vagrant-box'
# export HOST=`unsort hostnames.txt | head -n1`
# sudo hostname $HOST
# sudo HOST=$HOST sh -c 'echo $HOST > /etc/hostname'
# sudo sed -i s/vagrant-box/$HOST/ /etc/hosts 

print_line "3. Install Ubuntu Privacy Fixes ###################################"
# execute the fix ubuntu script to ensure additional privacy
. ${lib}/fixubuntu.sh > /dev/null
cd ${current_directory}


