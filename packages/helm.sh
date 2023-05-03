#!bin/sh

# install helm
if [ -x "$(command -v helm)" ]; then
  echo 2
else
  # Install helm
  curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

  # change permission
  chmod 700 get_helm.sh
  
  # execute shell
  ./get_helm.sh
  
  # remove shell
  rm get_helm.sh

  # return OK
  echo 1
fi