#!/usr/bin/env bash


# Zeal
echo "Fixing system tray"

sudo apt-add-repository ppa:fixnix/indicator-systemtray-unity
sudo apt-get update
sudo apt-get install indicator-systemtray-unity
