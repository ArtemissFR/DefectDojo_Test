#!/bin/bash

# Envoie le fichier JSON à DefectDojo
http --form POST "http://192.168.1.103:8080/api/v2/import-scan/" \
  "Authorization: Token 9b0dc43db0e3342330c15c019e31dd4f9412c1cc" \
  scan_type="Trivy Scan" \
  minimum_severity="Low" \
  test=4 \
  file@/root/Trivy_Defect_AutoImport/trivy_scan_report.json \
  active:=true \
  verified:=true \
  product_name=LinuxServer \
  engagement_name=2024-09-30

# Enregistre la date d'importation pour référence
echo "Import dans DefectDojo effectué à $(date)" >> ~/defectdojo_import.log
