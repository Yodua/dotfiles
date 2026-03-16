# Dotfiles

My personalized arch dotfiles setup. Highly opinionated, you will most likely not like it how it is right now, but you might find stuff of value for yourself here.

## Summary
Some of this stuff is written by me, some is taken from others, if there's a link there, then it's not mine

## What's used?
1. Rofi - for the powermenu and the app launcher. The configs are taken from adi1090x
https://github.com/adi1090x/rofi
2. Alacritty - lightweight, supports all the things I'd ever need, minimal config
3. Hyprland - relatively minimal config, only using the split-monitor-workspaces plugin. The wallpaper was made by Stephanie Conley. See their other works at https://unsplash.com/@threepetalsimagery
4. Neovim - my personal take on the neovim config. Too much to describe in a short readme, look or test for yourself if you want to.
5. Waybar - pretty minimal config. I don't remember if I got inspired from someone else's config, but I'm pretty sure I just wrote on top of the default config.
6. Tmux - changed it to some more sane settings and made it look better. That's it.
7. Zsh - minimal setup, a bunch of well-known plugins (I used antidote), the prompt used is starship. For more look at the .zshrc and .zsh_plugins.txt

## How do I use this?
If you want to use exactly the setup I have, I highly recommend using my [install script](https://github.com/Yodua/dystopia-arch-setup), preferably right after installing arch liux.

If you don't want to do that, then you're on your own. Make sure you have the proper packages installed and, if you want the Zsh config to work, either move these files to your home directory or create soft links to your .config
