#!/bin/bash

# get vim configuration
cp ./configs/.vimrc ${HOME}

# clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install all packages listed in vimrc
vim +PluginInstall +qall

# install CtrlP for Vim
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# get git configuration
cp ./configs/.gitconfig ${HOME}

# ssl key gen
# manually copy from original computer
echo "=========================================================================================="
echo " Don't forget to copy ssh config (or keys) from original computer.                        "
echo " You should set ssh key file with correct permission, and use \`ssh-add\` to add the key. "
echo "=========================================================================================="

# change shell to zsh
apt install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh
echo "You need to re-login to change the default shell."

cp ./configs/.custom-shrc ${HOME}
echo "source \${HOME}/.custom-shrc" >> ${HOME}/.zshrc
