#!bin/sh

# oh-my-zsh exist
if [ -d ~/.oh-my-zsh ]; then
  echo "oh-my-zsh exist"
else
  echo "oh-my-zsh not exist"
  # Install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
  echo "oh-my-zsh has been installed"
fi