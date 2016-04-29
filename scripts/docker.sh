#!/usr/bin/env bash

echo " * Installing Package: docker"

sudo apt-get install curl > /dev/null
sudo curl -sSL https://get.docker.com/ | sh  > /dev/null

