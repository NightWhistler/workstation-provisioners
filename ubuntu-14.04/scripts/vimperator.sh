#!/usr/bin/env bash

# Vimperator
echo "Installing Package: vimperator"

export FOLDER=`dirname $0`
sudo $FOLDER/../helpers/install-mozilla-addon.sh https://addons.mozilla.org/firefox/downloads/file/298890/vimperator-3.9-fx.xpi
