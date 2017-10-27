#!/usr/bin/env bash

echo "moving current .vimrc, .gvimrc, and .zshrc to *.backup..."
cp ~/.vimrc ~/.vimrc.backup 2>&1
cp ~/.zshrc ~/.zshrc.backup 2>&1
cp ~/.gvimrc ~/.gvimrc.backup 2>&1

echo "copying .vimrc and .zshrc into home dir..."
cp ./vimrc ~/.vimrc 2>&1
cp ./zshrc ~/.zshrc 2>&1

echo "creating customization files: ~/.vimrc.custom, ~/.zshrc.custom, ~/.vimrc.bundles.custom"
touch ~/.vimrc.custom ~/.zshrc.custom ~/.vimrc.bundles.custom

echo "installing language plugins"
cp -r ./ftdetect ~/.vim/ftplugin

echo "installing fonts"
cp ./fonts/* ~/Library/Fonts

echo "done"
