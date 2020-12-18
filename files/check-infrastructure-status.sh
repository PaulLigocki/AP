#!/bin/bash
echo "dnsmasq.service active?:"
systemctl is-active dnsmasq.service
echo "dnsmasq.service enabled?:"
systemctl is-enabled dnsmasq.service
echo "HostAPd.service active?:"
systemctl is-active hostapd.service
echo "HostAPd.service enabled?:"
systemctl is-enabled hostapd.service
