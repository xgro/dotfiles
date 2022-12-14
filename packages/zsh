#!bin/sh

DIR="$( pwd )" # 현재 경로

# zsh
if [ -x "$(command -v zsh)" ]; then
  echo "zsh exist"
else
  echo "zsh not exist"

  # Install zsh
  sudo apt install zsh -y

  # theme 적용
  sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
fi

# alias 참조
if grep -Fxq "source ${DIR}/env/alias" ~/.zshrc
then
  echo "alias exist"
else
  echo "alias not exist"
  echo "source ${DIR}/env/alias" >> ~/.zshrc
fi