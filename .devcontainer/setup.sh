#!/bin/bash

NODE_VERSION="20"

# install curl, git, ...
apt-get update
apt-get install -y unzip curl git jq make

useradd -m user
su user

# Install Node version manager to install different versions of Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.bashrc 

# Check Node version
nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}
nvm use ${NODE_VERSION}
node -v

# Install bun
curl -fsSL https://bun.sh/install | bash