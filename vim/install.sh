#!/bin/sh

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

set -e

source $DOTFILES_ROOT/install/common.sh

# vimrc vundle install
echo ''
echo "Now installing vundle..."
echo ''
git_clone_if_required https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Pathogen install
echo ''
echo "Now installing Pathogen..."
echo ''
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Nerdtree for vim install
echo ''
echo "Now installing Nerdtree for Vim..."
echo ''
git_clone_if_required https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Vim color scheme install
echo ''
echo "Now installing vim wombat color scheme..."
echo ''
git_clone_if_required https://github.com/sheerun/vim-wombat-scheme.git ~/.vim/colors/wombat
if [ ! -f ~/.vim/colors/wombat.vim ]; then 
	ln -s ~/.vim/colors/wombat/colors/wombat.vim ~/.vim/colors/wombat.vim
fi