#!/usr/bin/env bash

echo "copying .vimrc and .zshrc into home dir..."
cp ./vimrc ~/.vimrc 2>&1
cp ./zshrc ~/.zshrc 2>&1

echo "installing fonts"
cp ./fonts/* ~/Library/Fonts

echo "done"
