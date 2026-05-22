#!/bin/bash
# This script ensures proper environment setup for Playwright on Streamlit Cloud

export PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
export PLAYWRIGHT_BROWSERS_PATH=0

echo "Environment variables set for Playwright installation..."
