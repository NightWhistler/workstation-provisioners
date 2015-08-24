#!/usr/bin/env bash

#Pidgin indicator plugin
echo "Installing package: pidgin-indicator"

sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install pidgin-indicator

