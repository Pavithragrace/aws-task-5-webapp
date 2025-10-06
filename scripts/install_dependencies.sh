#!/usr/bin/env bash
set -e
# Ensure Apache is present and running
if ! command -v httpd >/dev/null 2>&1; then
  yum install -y httpd
fi
mkdir -p /var/www/html
chown -R ec2-user:ec2-user /var/www/html || true
