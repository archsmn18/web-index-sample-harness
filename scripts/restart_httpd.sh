#!/usr/bin/env bash
set -e

if systemctl list-unit-files | grep -q httpd.service; then
  sudo systemctl restart httpd
else
  sudo systemctl restart apache2
fi
