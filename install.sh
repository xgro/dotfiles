# set zsh
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

# set git config
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

## install nvm 
if [ ! -d "$HOME/.nvm" ];then
    echo "install node version manager"
    unalias curl
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
fi