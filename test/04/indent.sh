#!/bin/sh

DOTFILES=(
".bashrc"
".bash_profile"
".gitconfig"
".profile"
)

if true; then
    echo 'pipe beginning'
        sed 's/beginn/end/'
fi
