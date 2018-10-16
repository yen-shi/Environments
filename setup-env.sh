#!/bin/bash

# get vim configuration
cp ./configs/.vimrc ${HOME}

# clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install all packages listed in vimrc
vim +PluginInstall +qall

# get git configuration
cp ./configs/.gitconfig ${HOME}

# ssl key gen
# manually copy from original computer
echo "Don't forget to copy ssh config (or keys) from original computer."

# change shell to zsh
apt install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh
echo "You need to reboot to change the default shell."
