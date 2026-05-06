#!/bin/bash

# Installer script for apk-bundle

set -e

if [ "$USER" != "root" ]; then
    echo "This installer must be run as root (using doas or sudo)."
    exit 1
fi

echo "Installing apk-bundle to /usr/bin..."

# Copy to temporary location then install to keep repo clean
cp bin/apk-bundle /tmp/apk-bundle
chmod 755 /tmp/apk-bundle
mv /tmp/apk-bundle /usr/bin/apk-bundle

echo "apk-bundle installed successfully."
