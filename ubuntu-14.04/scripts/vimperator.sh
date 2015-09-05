#!/usr/bin/env bash

# Vimperator
echo "Installing Package: vimperator"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
sudo $DIR/../helpers/install-mozilla-addon.sh https://addons.mozilla.org/firefox/downloads/file/298890/vimperator-3.9-fx.xpi
