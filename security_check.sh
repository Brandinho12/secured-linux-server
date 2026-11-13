#!/bin/bash

REPORT="$HOME/security-automation/security_report.txt"

echo "====== SECURITY STATUS ======" > "$REPORT"
echo "Generated on: $(date)" >> "$REPORT"
echo "CURRENT USER:" >> "$REPORT"
whoami >> "$REPORT"

echo "" >> "$REPORT"
echo "SSH Service Status:" >> "$REPORT"
systemctl is-active ssh >> "$REPORT"

echo "" >> "$REPORT"
echo "Firewall Status:" >> "$REPORT"
sudo ufw status | head -1 >> "$REPORT"

echo "" >> "$REPORT"
echo "Disk Usage:" >> "$REPORT"
df -h / >> "$REPORT"

echo "" >> "$REPORT"
echo "Memory Usage:" >> "$REPORT"
free -h >> "$REPORT"

echo "" >> "$REPORT"
echo "====== END OF REPORT ======" >> "$REPORT"

echo "Security report generated successfully."
echo "Location: $REPORT"
