#!/usr/bin/env bash


# Hipchat
echo "Installing Package: HipChat"

sudo sh -c 'echo "deb http://downloads.hipchat.com/linux/apt stable main" > /etc/apt/sources.list.d/atlassian-hipchat.list'

wget -O - https://www.hipchat.com/keys/hipchat-linux.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y hipchat 
