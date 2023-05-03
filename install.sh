# set zsh
cp -r ~/dotfiles/zsh/.zshrc ~/.zshrc

# set git config
cp -r ~/dotfiles/git/.gitconfig ~/.gitconfig

## install vim Bundle
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ];then
    echo "install vim plugins"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
# force copy vim config
cp -r ~/dotfiles/vim/.vimrc ~/.vimrc
cp -r ~/dotfiles/config/nvim ~/.config/nvim

## ignore error
vim -E -s -u ~/.vimrc +PluginInstall +qall

## install nvm 
if [ ! -d "$HOME/.nvm" ];then
    echo "install node version manager"
    unalias curl
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
fi