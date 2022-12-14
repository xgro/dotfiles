#!bin/sh

# Install gossm
if [ -f /usr/local/bin/gossm ]; then
  echo "gossm exist"
else
  echo "gossm not exist"
  # Install gossm
  wget https://github.com/gjbae1212/gossm/releases/download/v1.5.0/gossm_1.5.0_Linux_x86_64.tar.gz
  
  # tar unzip gossm
  tar -xvf gossm_1.5.0_Linux_x86_64.tar.gz
  
  # use gossm
  sudo mv gossm /usr/local/bin
  
  # cleanup
  rm -rf gossm_1.5.0_Linux_x86_64.tar.gz LICENSE README.md
  echo "gossm has been installed"
fi