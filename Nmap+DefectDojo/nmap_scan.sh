#!/bin/bash

# Exécute Nmap
nmap -v -O -p- 192.168.1.0/24 -oX nmap_scan_report.xml

# Enregistre la date d'exécution pour référence
echo "Nmap scan exécuté à $(date)" >> ~/nmap_scan.log
