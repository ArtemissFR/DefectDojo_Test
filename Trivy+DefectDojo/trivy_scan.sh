#!/bin/bash

# Exécute Trivy
trivy fs /root --format json --output trivy_scan_report.json --scanners vuln

# Enregistre la date d'exécution pour référence
echo "Trivy scan exécuté à $(date)" >> ~/trivy_scan.log
