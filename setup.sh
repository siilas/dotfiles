#!/bin/bash

# Parameters
DEFAULT_RESOLUTION="1366x768"
DEFAULT_JAVA_VERSION="17.0.2-open"
DEFAULT_INTELLIJ_VERSION="IdeaIC2022.1"

echo "Starting the magic..."

# Update and upgrade ubuntu programs
sudo apt update && sudo apt full-upgrade -y

function install-apt {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

function install-snap {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

# Installing the basics
install-apt curl
install-apt wget
install-apt htop
install-apt vim
install-apt slack
install-apt git
install-apt maven
install-apt gradle
install-apt kubectl
install-snap k9s
install-snap minikube
install-apt python3
install-apt python3-pip
install-apt nodejs
install-apt npm
install-apt yarn
install-apt awscli
install-snap code
install-apt sublime
install-snap spotify
install-apt openvpn
install-apt gimp
install-snap 'terraform --candidate'
install-snap postman
install-snap redis-desktop-manager
install-apt virtualbox

# Run all scripts in programs folder
for f in programs/*.sh; do bash "$f" -H; done

# Run all scripts in configs folder
for f in configs/*.sh; do bash "$f" -H; done

# Copy dotfiles
dotfiles/copy.sh

# Get all upgrades and remove unnecessary packages
sudo apt upgrade -y
sudo apt autoremove -y

echo "Done! but I'm kinf of tired, I think we should call it a day..."