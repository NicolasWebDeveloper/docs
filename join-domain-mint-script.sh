#!/bin/bash

sudo apt install realmd

echo What is your Domain Name?
read domainname

sudo realm join $domainname
realm list

echo "session optional pam_mkhomedir.so skel=/etc/skel/ umask=0077" | tee -a /etc/pam.d/common-session
