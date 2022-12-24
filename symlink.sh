#!/usr/bin/env bash
#===============================================================================
#
#             NOTES: For this to work you must have cloned the github
#                    repo to your home folder as ~/dotfiles/
#
#===============================================================================

#==============
# Variables
#==============
dotfiles_dir=~/dotfiles

#==============
# Delete existing dot files and folders
#==============
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.xinitrc > /dev/null 2>&1
sudo rm -rf ~/.config/alacritty > /dev/null 2>&1
sudo rm -rf ~/.config/clangd > /dev/null 2>&1
sudo rm -rf ~/.configlightdm > /dev/null 2>&1
sudo rm -rf ~/.config/ranger > /dev/null 2>&1
sudo rm -rf ~/.config/picom.conf > /dev/null 2>&1
sudo rm -rf ~/.config/rofi > /dev/null 2>&1
sudo rm -rf ~/.config/zathura > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/vim ~/.vim
ln -sf $dotfiles_dir/vim/vimrc ~/.vimrc
ln -sf $dotfiles_dir/xinitrc ~/.xinitrc
ln -sf $dotfiles_dir/alacritty ~/.config/alacritty
ln -sf $dotfiles_dir/clangd ~/.config/clangd
ln -sf $dotfiles_dir/lightdm ~/.config/lightdm
ln -sf $dotfiles_dir/picom.conf ~/.config/picom.conf
ln -sf $dotfiles_dir/rofi ~/.config/rofi
ln -sf $dotfiles_dir/ranger ~/.config/ranger
ln -sf $dotfiles_dir/zathura ~/.config/zathura

#==============
#if [ -n "$(find $dotfiles_dir/custom-configs -name gitconfig)" ]; then
#    ln -s $dotfiles_dir/custom-configs/**/gitconfig ~/.gitconfig
#else
#    ln -s $dotfiles_dir/gitconfig ~/.gitconfig
#fi
##=============

#==============
# Give the user a summary of what has been installed
#==============
echo "Linking Complete"
