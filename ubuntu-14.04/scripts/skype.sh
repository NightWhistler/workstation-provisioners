#!/usr/bin/env bash


# Skype
echo "Installing Package: Skype"

sudo apt-get install  -yq libc6:i386 libx11-6:i386 libxext6:i386 libxss1:i386 libxv1:i386 libssl1.0.0:i386 libpulse0:i386 libasound2-plugins:i386 libqt4-dbus:i386 libqt4-network:i386 libqt4-xml:i386 libqtcore4:i386 libqtgui4:i386 libqtwebkit4:i386 sni-qt sni-qt:i386

wget -O skype.deb http://www.skype.com/go/getskype-linux-beta-ubuntu-64
sudo dpkg -i skype.deb
rm skype.deb
