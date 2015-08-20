#!/usr/bin/env bash


# packages to be installed
# note: packages will be installed in this order
packages=(
    
    #Basic desktop
    ubuntu-desktop

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

    # Services
    openssh-server

    # Development Tools
    docker
    java8
    intellij
    atom
    brackets
    build-essential
    codeblocks
    filezilla
    git git-svn hub
    meld
    openjdk-7-jdk openjdk-7-jre
    sublime-text
    subversion
    vagrant
    vim vim-gtk
    virtualbox
    zeal
    hipchat

    # Graphics
    gimp
    inkscape

    # Media
    audacious
    audacity
    vlc
    spotify

    # Other Utilities
    conduit
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
