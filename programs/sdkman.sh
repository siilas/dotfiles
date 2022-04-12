#!/bin/bash

# Parameters
DEFAULT_JAVA_VERSION="17.0.2-open"

if [ which "sdk version" &> /dev/null ]; then
    echo "Already installed: SDKMAN!"
else
    echo "Installing: SDKMAN!..."

    curl -s "https://get.sdkman.io" | bash

    source "$HOME/.sdkman/bin/sdkman-init.sh"

    sdk version
fi

sdk install java $DEFAULT_JAVA_VERSION