#!/bin/bash

set -e

echo "Installing K9s..."

curl -sS https://webinstall.dev/k9s | bash

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

export PATH="$HOME/.local/bin:$PATH"

echo "K9s installed successfully"
