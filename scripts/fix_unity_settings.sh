#!/bin/bash
sudo sed -i s/OnlyShowIn=.*$// /usr/share/applications/unity-*-panel.desktop

gsettings set org.gnome.desktop.background show-desktop-icons false
