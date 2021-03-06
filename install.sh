#!/bin/bash

cp .gitconfig ~

cp .tigrc ~

cp -r .config/awesome ~/.config

cp .bashrc ~
cp .bash_aliases ~

cp .ssh/config ~/.ssh/config

# nm-applet for awesome
# https://awesome.naquadah.org/wiki/Nm-applet
sudo adduser efernandez netdev
# Create <policy user="efernandez"> ... </policy> blocks
# taking the root ones for:
#/etc/dbus-1/system.d/org.freedesktop.NetworkManager.conf
#/etc/dbus-1/system.d/NetworkManager.conf
#/etc/dbus-1/system.d/NetworkManagerInfo.conf
#/etc/dbus-1/system.d/nm-applet.conf
#/etc/dbus-1/system.d/nm-avahi-autoipd.conf
#/etc/dbus-1/system.d/nm-dhcp-client.conf

# gnome-terminal Default profile settings
cp .gconf/apps/gnome-terminal/profiles/Default/%gconf.xml $HOME/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml

# awesome and nautilus background issue
# http://askubuntu.com/questions/306362/when-i-run-nautilus-or-guake-from-awesome-wm-the-wallpaper-is-reverted-to-my-uni
sudo cp awesome/nautilus.desktop /usr/share/applications

# awesome fix for mime types with xdg-open
sudo cp awesome/xdg-open /usr/bin
