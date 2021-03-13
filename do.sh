#!/bin/bash
echo 'Cloning or updating AP Repo'
if cd /home/pi/AP/; then git pull; else git clone https://github.com/PaulLigocki/AP.git AP; fi
echo 'Setting owner on Repo'
chown pi:pi /home/pi/AP
echo 'Attempting to run playbook'
cd /home/pi/AP/ && git pull && ansible-playbook local.yml --tags vars,wpa_supplicant,ufw,disable_ipv6,disable_bluetooth,udev_rules,dnsmasq,hostapd,fix_script --skip-tags unsafe
#,interfaces
ip a