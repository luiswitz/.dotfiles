#!/bin/bash
############################
# .install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vimrc zshrc tmux.conf"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# create and move vim files to vim foler
echo "Creating vim folder"
mkdir -p ~/.vim
echo "...done"

echo "copying the vim files to .vim dir"
VIM_FOLDER=vim/*
for vim_file in $VIM_FOLDER; do
  cp $vim_file ~/.vim/
done

# Dependencies
echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || echo "Vundle already installed"

# Installing vim plugins
vim +PluginInstall +qall
