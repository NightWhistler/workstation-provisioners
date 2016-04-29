#!/usr/bin/env bash

echo " * Installing Package: IntelliJ IDEA"

INTELLIJVERSION=$(version "intellij")
INTELLIJDOWNLOAD=ideaIU-$INTELLIJVERSION.tar.gz
INTELLIJINSTALL=intellij-ide
mkdir -p "${HOME}/bin"
cd "${HOME}/bin"
wget https://download.jetbrains.com/idea/$INTELLIJDOWNLOAD > /dev/null
mkdir $INTELLIJINSTALL
tar -zxvf $INTELLIJDOWNLOAD --strip-components=1 -C intellij-ide  > /dev/null
rm $INTELLIJDOWNLOAD
ln -s intellij-ide/bin/idea.sh intellij

