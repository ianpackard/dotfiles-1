#!/bin/sh

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

set -e

source $DOTFILES_ROOT/install/common.sh

if [ "$SHELL" != "/bin/zsh" ]; then
    chsh -s /bin/zsh
fi