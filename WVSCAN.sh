#!/bin/bash

 echo " 
              #     # #     #  #####   #####     #    #     # 
              #  #  # #     # #     # #     #   # #   ##    # 
              #  #  # #     # #       #        #   #  # #   # 
              #  #  # #     #  #####  #       #     # #  #  # 
              #  #  #  #   #        # #       ####### #   # # 
              #  #  #   # #   #     # #       #     # #    ## 
              ## ## #    #    ######   #####  #     # #     # 

                                WVSCAN BY AVISHEK "

echo " WEB VULNERABILITY SCAN "
echo "   "
echo " SELECT A TOOL ( 1 - 8 ) : "
echo "    "
echo " (1) RED_HAWK "
echo " (2) Tidos-framework "
echo " (3) Nikto "
echo " (4) A2SV "
echo " (5) FIND SOMEONE BY BY THEIR USERNAME ACROSS ALL SOCIAL MEDIA "
echo " (6) OSINT ON A PHONE NO.  "
echo " (7) DMITRY "
echo " (8) Nmap NSE "
echo -n " ENTER YOUR SELECTION : "
read s

if [ $s -eq 1 ]

then

     cd /root
     cd RED_HAWK
     php rhawk.php

fi

if [ $s -eq 2 ]

then

     cd /root
     tidos

fi

if [ $s -eq 3 ]

then

     cd /root
     nikto -h

fi

if [ $s -eq 4 ]

then

     cd /root
     cd a2sv
     python a2sv.py -h

fi

if [ $s -eq 5 ]

then

     echo -n " PRESS 1 FOR DEFAULT OR 2 FOR MANUAL SETTINGS :"
	 read b
	 if [ $b -eq 1 ]

	 then

     	cd /root
     	cd sherlock
     	read -p " ENTER USERNAME : " un
     	python3 sherlock.py $un

     fi

     if [ $b -eq 2 ]

     then

     	cd /root
     	cd sherlock
     	python3 sherlock.py -h

     fi

fi

if [ $s -eq 6 ]

then

	 echo -n " PRESS 1 FOR DEFAULT OR 2 FOR MANUAL SETTINGS :"
	 read c
	 if [ $c -eq 1 ]

	 then

     	cd /root
     	cd PhoneInfoga
     	export PATH=$PATH:/root/PhoneInfoga
     	python3 phoneinfoga.py -v
     	read -p " ENTER PHONE NO WITH COUNTRY CODE : " pn
     	python3 phoneinfoga.py -n $pn  --recon
     fi

     if [ $c -eq 2 ]

     then

     	cd /root
     	cd PhoneInfoga
     	export PATH=$PATH:/root/PhoneInfoga
     	python3 phoneinfoga.py -v
     	python3 phoneinfoga.py -h

     fi


fi

if [ $s -eq 7 ]

then

     dmitry 

fi

if [ $s -eq 8 ]

then

     echo -n "Press 1 for DEFAULT OR 2 for manual SETTINGS :"
     read d
     if [ $d -eq 1 ]

     then

        echo -n " Press 1 to SPECIFY PORT else Press 2 :"
        read e
        if [ $e -eq 1 ]

        then
                read -p "ENTER IP : " ip
                read -p "ENTER PORT : " po
                nmap --script nmap-vulners,vulscan --script-args vulscandb=scipvuldb.csv -sV -p $po $ip

        fi

        if [ $e -eq 2 ]

        then
                
                read -p " ENTER IP : " ip
                nmap --script nmap-vulners,vulscan --script-args vulscandb=scipvuldb.csv -sV  $ip

        fi
    fi

    if [ $d -eq 2 ]

    then

        nmap -h

    fi

fi
