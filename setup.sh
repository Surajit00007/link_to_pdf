#!/bin/bash
# Setup script for installing Playwright browser binaries

echo "🔧 Setting up Playwright browser binaries..."
echo "Installing Chromium..."

python -m playwright install chromium

echo "✅ Setup complete! Playwright is ready to use."
echo "Run 'streamlit run streamlit_app.py' to start the application."
