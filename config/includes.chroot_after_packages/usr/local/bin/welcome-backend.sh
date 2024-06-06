#!/bin/bash
# Welcome script for Beardog made by sleekmason 2-24-22

full_fs=$(df ~ | tail -1 | awk '{print $1;}')  # find partition
fs=$(basename "$full_fs")
if grep -q "$fs" /proc/partitions; then
#xdg-mime default thunar.desktop inode/directory &&
#gsettings set org.gnome.desktop.interface icon-theme "Obsidian-Gray" &&
/usr/local/bin/installed-session &&
  yad --title "Welcome!" --window-icon=/usr/share/icons/ld-icons/paw-color.png \
--width=375 --height=410 --center --escape-ok --undecorated --skip-taskbar \
--button=" Begin"!/usr/share/icons/gnome/22x22/places/debian-swirl.png!:"x-terminal-emulator -T 'Customization' -e 'sudo xentry -i'" \
--button=" Exit!application-exit:0" \
--text-info --justify=left --wrap < /usr/share/lilidog/welcome.txt --fontname="Sans 11" \
--fore="#E6E6E3"; sed -i '/welcome-backend.sh &/d' ~/.config/openbox/autostart; if ! grep hypervisor /proc/cpuinfo ; then sed -i '/vmrestore.*/d' ~/.config/openbox/autostart; fi; exit
else
#gsettings set org.gnome.desktop.interface icon-theme "Obsidian-Gray" &&
/usr/local/bin/live-session &&
  yad --notification --image=/usr/share/icons/ld-icons/install.png --text "Install Beardog ┃ User password ▸ 'user' ┃ Root password ▸ 'live'" --command "gksudo calamares" &
  yad --title "Welcome!" --window-icon=/usr/share/icons/ld-icons/paw-color.png \
--width=375 --height=485 --center --escape-ok --undecorated --skip-taskbar \
--button="gtk-ok:0" \
--text-info --justify=left --wrap < /usr/share/lilidog/welcome2.txt --fontname="Sans 11" \
--fore="#E6E6E3"; sed -i '/welcome-backend.sh. &/d' ~/.config/openbox/autostart
fi
