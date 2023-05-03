#!bin/sh

# install kubernetis
if [ -x "$(command -v kubectl)" ]; then
  echo 2
else
  # Install kubernetis
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

  # get checksum
  curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
  
  # verify checksum
  echo "$(<kubectl.sha256) kubectl" | sha256sum --check

  # verify ok -> install
  if [ $? -eq 0 ]; then
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    rm kubectl
  else
    echo "checksum error"
  fi

  echo 1
fi

# install minikube
if [ -x "$(command -v minikube)" ]; then
  echo 2
else
  # get minikube
  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

  # install minikube
  sudo install minikube-linux-amd64 /usr/local/bin/minikube

  # cleanup
  rm minikube-linux-amd64

  echo 1
fi