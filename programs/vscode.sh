#!/bin/bash

echo "Installing: VS Code..."

function install-plugin {
  name="${1}"
  code --install-extension ${name} --force
}

sudo snap install code

install-plugin alphabotsec.vscode-eclipse-keybindings
install-plugin ms-azuretools.vscode-docker
install-plugin vscjava.vscode-java-pack
install-plugin DavidAnson.vscode-markdownlint
install-plugin eg2.vscode-npm-script
install-plugin ms-python.python
install-plugin redhat.vscode-yaml
