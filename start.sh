#!/bin/bash
# Cwelium - Termux/Linux starter
# Run this instead of start.bat on Termux / Android

# Check if Python is available
if ! command -v python3 &>/dev/null && ! command -v python &>/dev/null; then
    echo "Python not found. Install it with: pkg install python"
    exit 1
fi

PYTHON=$(command -v python3 || command -v python)

# Install dependencies if needed
echo "Checking dependencies..."
$PYTHON -m pip install -r requirements.txt -q

echo "Starting Cwelium..."
$PYTHON main.py
