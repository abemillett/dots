#!/usr/bin/fish
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

set dir ~/dots                          # dots directory
set olddir ~/dots_old                   # old dots backup directory
set -l files .config/nvim .tmux.conf .vimrc  # things to symlink

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
for file in $files
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
end

# get the git submodules (nvim and/or tmux plugins)
git submodule init
git submodule add
