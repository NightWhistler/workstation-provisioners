#!/usr/bin/env bash


# packages to be installed
# note: packages will be installed in this order
packages=(
    
    #Basic desktop
    ubuntu-desktop
    i3-desktop

    #Fixes for things not working right
    fix_systray fix_unity_settings

    # System Utilities
    redshift-gtk
    gksu
    gnome-tweak-tool
    network-manager-openvpn-gnome
    numix-gtk-theme
    numix-icon-theme-circle
    numix-wallpaper-notd
    ppa-purge
    ubuntu-restricted-extras
    unity-tweak-tool
    owncloud-client
    dnsmasq
    pwgen

    # Command Line Utilities
    zsh oh-my-zsh
    terminator
    htop
    realpath
    screen
    w3m
    unsort

    # Services
    openssh-server

    # Development Tools
    docker docker-compose
    gdub
    java8
    sdkman
    intellij
    build-essential
    git git-svn hub gitk
    meld
    vim vim-gtk
    myrepos
    zeal
    vagrant virtualbox

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
    keepass2 mono-dmcs libmono-system-management4.0-cil xdotool
    p7zip-full
    remmina
    typecatcher

)


for i in ${packages[@]}
do
    install_package ${scripts} ${i}
done
