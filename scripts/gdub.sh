#!/bin/sh

echo "Installing GDUB"

curl -sLo- http://get.bpkg.io | sudo bash

sudo bpkg install dougborg/gdub -g
