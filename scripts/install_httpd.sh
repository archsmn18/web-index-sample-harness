#!/usr/bin/env bash
set -e

if command -v yum >/dev/null 2>&1; then
  sudo yum update -y
  sudo yum install -y httpd
  sudo systemctl enable httpd
  sudo systemctl start httpd
elif command -v apt-get >/dev/null 2>&1; then
  sudo apt-get update -y
  sudo apt-get install -y apache2
  sudo systemctl enable apache2
  sudo systemctl start apache2
else
  echo "Unsupported OS"
  exit 1
fi
