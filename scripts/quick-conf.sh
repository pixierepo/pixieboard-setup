#!/bin/bash

#Update
pacman -Syu --noconfirm

#install
pacman -S --noconfirm ntp avahi nss-mdns yaourt

#Config Time and locales
groupadd pixiepro
usermod -g pixiepro pixiepro
iw reg set US
export COUNTRY=US
systemctl enable ntpd
timedatectl set-ntp true
hwclock --systohc
timedatectl set-timezone America/Los_Angeles
sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen
locale-gen
localectl set-locale LANG=en_US.UTF-8

#Config avahi
sed -i '/hosts/c\hosts: files mymachines myhostname mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] dns' /etc/nsswitch.conf
systemctl enable avahi-daemon

#Fix yaourt libs.
ln -sf /usr/lib/libalpm.so.11 /usr/lib/libalpm.so.10

#Reboot now.
reboot
