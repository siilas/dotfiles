#!/bin/bash

# Copy dotfiles
# TODO: Copy dotfiles folder to $HOME/.dotfiles and create symbolic links

# Update and upgrade ubuntu programs
sudo apt update && sudo apt full-upgrade -y

# Installing the basics
install curl
install wget
install htop
install vim
install slack
install git
install maven
install gradle
install kubectl
install k9s # Snap
install minikube # Snap
install python3
install python3-pip
install nodejs
install npm
install yarn
install awscli
install vscode
install sublime
install wrk
install spotify # Snap
install openvpn
install gimp
install terraform
install postman # Snap
install redis-desktop-manager # Snap
# Docker
# Docker Compose
# VMBox

# Get all upgrades and remove unnecessary packages
sudo apt upgrade -y
sudo apt autoremove -y