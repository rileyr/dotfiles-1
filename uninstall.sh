#!/usr/bin/env bash

echo "copying backed up .vimrc, .gvimrc, and .zshrc to ~/ (if available)"
rm ~/.vimrc ~/.zshrc
mv ~/.vimrc.backup ~/.vimrc 2>&1
mv ~/.zshrc.backup ~/.zshrc 2>&1
mv ~/.gvimrc.backup ~/.gvimrc 2>&1

echo "remove ~/.vimrc.custom ~/.zshrc.custom, ~/.vimrc.bundles.custom customization files?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) rm ~/.vimrc.custom ~/.zshrc.custom ~/.vimrc.bundles.custom; break;;
    No ) exit;;
  esac
done

echo "remove fonts?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) find ./fonts -name "*.otf" -print0 | xargs -0 bash -c 'for filename; do echo "~/Library/Fonts/${filename##*/}"; done' bash
    No ) exit;;
  esac
done
