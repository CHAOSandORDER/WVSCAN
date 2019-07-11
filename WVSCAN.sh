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
echo " SELECT A TOOL (1 -4 ) : "
echo "    "
echo " (1) RED_HAWK "
echo " (2) Tidos-framework "
echo " (3) Nikto "
echo " (4) A2SV "
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