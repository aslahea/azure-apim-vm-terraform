#!/bin/bash
set -e

echo "=== Installing Flask API Dependencies ==="
sudo apt-get update -y
sudo apt-get install -y python3-pip python3-venv

echo "=== Setting up Virtual Environment ==="
python3 -m venv venv
source venv/bin/activate

echo "=== Installing Python Packages ==="
pip install -r app/requirements.txt

echo "=== System Ready ==="
echo "You can now run:"
echo "export COSMOS_ENDPOINT='<cosmos-endpoint>'"
echo "export COSMOS_KEY='<cosmos-key>'"
echo "python3 app/app.py"
