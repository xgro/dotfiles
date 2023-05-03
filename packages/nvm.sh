#!/bin/sh
# .nvm not exist 
if [ -d ~/.nvm ]; then
  echo ".nvm exist"
else
  echo ".nvm not exist"
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
  echo "nvm has been installed"
fi
