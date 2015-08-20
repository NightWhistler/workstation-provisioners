#!/usr/bin/env bash

# Java 8
echo "Installing Package: Java 8"

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
DEBIAN_FRONTEND=noninteractive sudo apt-get install -yq oracle-java8-installer
