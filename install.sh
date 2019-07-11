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

cd /root
chmod +x WVSCAN.sh
gnome-terminal -- "./WVSCAN.sh"
exit