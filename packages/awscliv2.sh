#!/bin/sh

if [ -f /usr/local/bin/aws ]; then
  echo 2
else
  # Install awscli
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  
  # unzip awscliv2
  if ! [ -x "$(command -v unzip)" ]; then
  sudo apt install unzip -y
  fi

  unzip awscliv2.zip

  # exec install
  sudo ./aws/install

  # cleanup awscliv2
  rm -rf awscliv2.zip aws

  echo 1
fi

# session-manager-plugin not exist
if [ -f /usr/local/bin/session-manager-plugin ]; then
  echo 2
else
  # Install session-manager-plugin
  wget https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb
  sudo dpkg -i session-manager-plugin.deb
  rm -rf session-manager-plugin.deb
  echo 1
fi
