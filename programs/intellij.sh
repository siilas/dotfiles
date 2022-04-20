#!/bin/bash

# Parameter
DEFAULT_INTELLIJ_VERSION="IdeaIC2022.1"

echo "Installing: Intellij IDEA Community..."

sudo snap install intellij-idea-community

cp -Rf ../configs/intellij/keymap.xml ~/.config/JetBrains/$DEFAULT_INTELLIJ_VERSION/options/linux/keymap.xml
cp -Rf ../configs/intellij/general.xml ~/.config/JetBrains/$DEFAULT_INTELLIJ_VERSION/options/ide.general.xml
cp -Rf ../configs/intellij/colors.xml ~/.config/JetBrains/$DEFAULT_INTELLIJ_VERSION/options/colors.scheme.xml
cp -Rf ../configs/intellij/codestyle.xml ~/.config/JetBrains/$DEFAULT_INTELLIJ_VERSION/codestyles/Default.xml
