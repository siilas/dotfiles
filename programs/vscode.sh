#!/bin/bash

echo "Installing: VS Code..."

function install-plugin {
  name="${1}"
  code --install-extension ${name} --force
}

sudo snap install code

install-plugin docker