#!/usr/bin/env bash


# Gradle
echo "Installing Package: gradle"

sudo add-apt-repository -y ppa:cwchien/gradle
sudo apt-get update
sudo apt-get install -y gradle

