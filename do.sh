#!/bin/bash
if cd ~/AP/; then git pull; else git clone https://github.com/PaulLigocki/AP.git AP; fi
cd ~/AP/ && git pull && ansible-playbook local.yml --tags vars,wpa_supplicant,ufw,disable_ipv6,disable_bluetooth,udev_rules,dnsmasq,fix_script #,hostapd,interfaces