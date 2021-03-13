#!/bin/bash
if cd /home/pi/AP/; then git pull; else git clone https://github.com/PaulLigocki/AP.git AP; fi
chown pi:pi /home/pi/AP
cd /home/pi/AP/ && git pull && ansible-playbook local.yml --tags vars,wpa_supplicant,ufw,disable_ipv6,disable_bluetooth,udev_rules,dnsmasq,fix_script #,hostapd,interfaces