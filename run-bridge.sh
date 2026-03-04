#!/bin/bash
# WhatsApp bridge runner for tmux
# First run: displays QR code for WhatsApp linking
# Subsequent runs: auto-reconnects with saved session

export PATH="/opt/homebrew/bin:$PATH"
export WEBHOOK_URL="http://127.0.0.1:18800/whatsapp-webhook"
cd "$(dirname "$0")/whatsapp-bridge"

while true; do
    echo "[$(date)] Starting WhatsApp bridge..."
    ./whatsapp-bridge
    EXIT_CODE=$?
    echo "[$(date)] Bridge exited with code $EXIT_CODE. Restarting in 5s..."
    sleep 5
done
