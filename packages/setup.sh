#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh


info "Installing Brewfile packages..."
brew bundle

info "Installing nvm, node, npm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node
npm install npm@latest -g

success "All packages were installed"
