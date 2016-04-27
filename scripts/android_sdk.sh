#!/usr/bin/env bash

# Android SDK
echo "Installing Package: Android SDK"

# Android SDK

ANDROIDSDKDOWNLOAD=android-sdk_r24.1.2-linux.tgz

mkdir -f ~/Apps
wget http://dl.google.com/android/$ANDROIDSDKDOWNLOAD
tar -zxvf $ANDROIDSDKDOWNLOAD -C ~/Apps

rm $ANDROIDSDKDOWNLOAD
