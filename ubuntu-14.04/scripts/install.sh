#!/usr/bin/env bash


# packages to be installed
# note: packages will be installed in this order
packages=(
    
    #Basic desktop
    ubuntu-desktop

    #Firefox plugins
    vimperator

    # System Utilities
    fluxgui
    gksu
    gnome-tweak-tool
    network-manager-openvpn-gnome
    notifyosdconfig
    numix-gtk-theme
    numix-icon-theme-circle
    numix-wallpaper-notd
    ppa-purge
    ubuntu-restricted-extras
    unity-tweak-tool
    owncloud-client

    # Command Line Utilities
    terminator
    htop
    realpath
    screen
    w3m
    randomize-lines

    # Services
    openssh-server

    # Development Tools
    docker
    java8
    groovy
    scala
    maven
    gradle
    intellij
    build-essential
    git git-svn hub gitk
    meld
    openjdk-7-jdk openjdk-7-jre
    subversion
    vim vim-gtk
    zeal

    #Communication
    hipchat
    pidgin pidgin-otr
    pidgin-indicator
    skype

    # Graphics
    gimp
    inkscape

    # Media
    audacious
    audacity
    vlc
    spotify

    # Other Utilities
    google-chrome
    keepassx
    p7zip-full
    remmina
    typecatcher

)


for i in ${packages[@]}
do
    install_package ${scripts} ${i}
done
