#!/usr/bin/env bash


# Maven
echo "Installing Package: maven"

export MAVEN=apache-maven-3.3.3
wget http://mirrors.supportex.net/apache/maven/maven-3/3.3.3/binaries/$MAVEN-bin.tar.gz

mkdir -f ~/Apps
tar -zxvf $MAVEN-bin.tar.gz -C ~/Apps

ln -s ~/Apps/$MAVEN/bin/mvn ~/bin

rm $MAVEN-bin.tar.gz

