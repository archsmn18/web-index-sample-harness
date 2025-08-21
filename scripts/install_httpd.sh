#!/bin/bash
set -e
if command -v dnf >/dev/null 2>&1; then
  dnf install -y httpd
else
  yum install -y httpd
fi
systemctl stop httpd || true
mkdir -p /var/www/html
