#!/bin/bash

#Install ohmyzsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp --backup=numbered zshrc ~/.zshrc

#Install ohmyzsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#Set Default Shell to zsh
chsh -s $(which zsh)