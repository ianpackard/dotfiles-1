#!/bin/sh

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

source $DOTFILES_ROOT/install/common.sh

# install Source Code Pro nerd font
cp $DOTFILES_ROOT/nerd-fonts/Source\ Code\ Pro\ Nerd\ Font\ Complete.ttf /Library/Fonts
success "Source Code Pro font copied successfully!"