if [ ! -e "$HOME/.vim/bundle/Vundle.vim/" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp .vimrc ~/.vimrc
vim +PluginClean +qall
vim +PluginInstall +qall
