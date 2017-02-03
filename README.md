# dotfiles

A set of dotfiles I keep here for personal use. Feel free to also use them. Works best with macvim, but also usable with terminal vim and gvim.

## Installation

Clone the repository to your filesystem:

```shell
git clone https://github.com/twking7/dotfiles.git
cd dotfiles
```

Now, run `./install.sh`. This will make backups of your current `~/.vimrc` and `~/.zshrc` if they exist and then copy its own to those locations.

## Reinstallation

Go to the installation directory and run `./reinstall.sh`. This will reset the config files in a destructive manner, resetting your state. This does not make backups of existing dotfiles, so be very careful when you run this.

## Uninstallation

Go to the installation directory and run `./uninstall.sh`. This will remove this repo's dotfiles and move the backed up dotfiles back if they exist.

## Customizing

You can add custom configs to `~/.vimrc.custom` and `~/.zshrc.custom`. These will be loaded last.

You can add custom Plug bundles for vim in `~/.vimrc.bundles.custom`. You can find more information on Plug here: https://github.com/junegunn/vim-plug
