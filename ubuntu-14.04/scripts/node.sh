#!/usr/bin/env bash


# Node.JS
echo "Installing Package: Node.js"

sudo npm cache clean -f
sudo npm install -g n
sudo n stable


