#!/bin/bash

# Exécute Nmap
nmap -v -p 1-1000 192.168.1.0/24 -oX nmap_scan_report.xml # > Port 1 to 1000 scan
#nmap -v -O -p- 192.168.1.0/24 -oX nmap_scan_report.xml # > Full Port Scan

# Enregistre la date d'exécution pour référence
echo "Nmap scan exécuté à $(date)" >> ~/nmap_scan.log
