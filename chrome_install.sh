#!/bin/bash

# Update the package list and install dependencies
sudo apt update
sudo apt install -y wget gnupg

# Download the Google Chrome .deb package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install the Google Chrome .deb package
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Fix any missing dependencies
sudo apt install -f -y

# Set Google Chrome as the default browser
xdg-settings set default-web-browser google-chrome.desktop

# Clean up
rm google-chrome-stable_current_amd64.deb

# Show a notification once the installation is complete
notify-send "Google Chrome Installation" "Google Chrome has been successfully installed and set as the default browser."

echo "Google Chrome installation is complete and it has been set as the default browser."
