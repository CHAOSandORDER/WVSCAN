#!/bin/bash
mv WVSCAN.sh /root
cd /root

# red hawk

git clone https://github.com/Tuhinshubhra/RED_HAWK
cd RED_HAWK
chmod +x rhawk.php
clear

# tidos

git clone https://github.com/0xinfection/tidos-framework.git
cd tidos-framework
chmod +x install
python -m pip install xmpppy
./install
clear

# nikto

sudo apt-get install nikto
clear

# A2SV

git clone https://github.com/hahwul/a2sv.git
pip install argparse
pip install netaddr
apt-get install openssl
clear

# sherlock

git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
pip3 install -r requirements.txt
clear

# PHONEINFOGA

git clone https://github.com/sundowndev/PhoneInfoga.git
cd PhoneInfoga
python3 -m pip install -r requirements.txt
chmod +x phoneinfoga.py
cp config.example.py config.py
wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
tar xvfz geckodriver-v0.24.0-linux64.tar.gz
chmod +x geckodriver
export PATH=$PATH:/root/PhoneInfoga
clear

# nmap vulscan,nmap-vulners

cd /usr/share/nmap/scripts/
git clone https://github.com/vulnersCom/nmap-vulners.git
git clone https://github.com/scipag/vulscan.git
cd vulscan
chmod +x vulscan.nse
cd ..
cd nmap-vulners
chmod +x vulners.nse
cd ..
cd vulscan/utilities/updater/
chmod +x updateFiles.sh
./updateFiles.sh
clear

# open tool
cd /root
chmod +x WVSCAN.sh
xfce4-terminal -- "./WVSCAN.sh" ; gnome-terminal -- "./WVSCAN.sh"
exit