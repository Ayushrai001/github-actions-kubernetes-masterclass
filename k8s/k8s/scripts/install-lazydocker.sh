#!/bin/bash

set -e

echo "Installing lazydocker..."

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

lazydocker --version

echo "lazydocker installed successfully"
