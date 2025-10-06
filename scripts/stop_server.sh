#!/usr/bin/env bash
set -e
# Stop Apache if running (ignore errors)
systemctl stop httpd || true
