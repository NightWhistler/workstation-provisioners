#!/usr/bin/env bash


# i3
echo "Installing Package: i3"

# add ppa repository
#sudo -E add-apt-repository -y ppa:aacebedo/j4-dmenu-desktop > /dev/null

# update packages repository
sudo -E apt-get update -qq > /dev/null

# install the package
sudo -E apt-get install -qq i3 j4-dmenu-desktop suckless-tools python-setuptools python-pip python-gobject python-yaml libgio2.0 gobject-introspection libgtk2.0-0 libnotify4 gettext gir1.2-notify-0.7 gnome-settings-daemon feh ranger compton rofi

sudo pip install udiskie

#Remove the 'dunst' daemon since it causes ugly notifications
apt-get remove dunst
