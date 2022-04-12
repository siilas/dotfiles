#!/bin/bash

echo "Installing: SDKMAN!..."

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk version

sdk install java $DEFAULT_JAVA_VERSION -y