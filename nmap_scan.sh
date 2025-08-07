#!/bin/sh
set -e

echo "📥 Downloading nmap package..."
curl -sL -o /tmp/nmap_7.80-r0_aarch64.ipk https://github.com/iliya35/nmap/raw/refs/heads/main/nmap_7.80-r0_aarch64.ipk

echo "📦 Installing nmap..."
opkg install /tmp/nmap_7.80-r0_aarch64.ipk

echo "🔍 Scanning port 26502 on gate.akytec.com:"
nmap -p 26502 gate.akytec.com || echo "Scan failed for gate.akytec.com"

echo "\n🔍 Scanning port 26502 on cloud.akytec.de:"
nmap -p 26502 cloud.akytec.de || echo "Scan failed for cloud.akytec.de"

echo "\n✅ Done."

