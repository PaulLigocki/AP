# AP
ansible-pull -o -U https://github.com/PaulLigocki/AP.git --tags safe

ansible-palybook local.yml --tags safe

#Testing
cd ~/AP/ && git pull && ansible-playbook local.yml --tags safe,hostapd,interfaces

# Notes
/etc/udev/rules.d/70-persistent-net.rules
It seems on the first line 
REAL MAC MUST BE USED
ATTR{macaddress}=="b8:27:eb:ff:ff:00"
Otherwise the virtual ap0 interface will not come up.


#Service dnsmasq.service
will fail to start without ap0 interface being up.
