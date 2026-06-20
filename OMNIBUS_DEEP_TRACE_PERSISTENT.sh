#!/bin/bash
# OMNIBUS_DEEP_TRACE_PERSISTENT.sh - Full Workspace Forensic Sweep
# This script stays open until you acknowledge the findings.

if [ -z "$1" ]; then
    echo "Usage: $0 [hash_string]"
    exit 1
fi

TARGET_HASH=$(basename "$1" .file)
echo "[*] Initiating deep forensic sweep for: $TARGET_HASH"
echo "[*] Scanning all directories recursively..."
echo "------------------------------------------------------------"

# Perform the scan
# -r: recursive, -I: ignore binary files, -l: list filenames
grep -rI "$TARGET_HASH" . 2>/dev/null

echo "------------------------------------------------------------"
echo "[+] Scan complete."
echo "[?] Press ENTER to close this window..."
read -r
