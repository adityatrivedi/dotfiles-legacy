#!/bin/bash
#############################################################################################
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
#############################################################################################

######## Variables

dir=~/.dotfiles				                	# dotfiles directory
olddir=~/.dotfiles_old				            # backup directory for old dotfiles
files="bash_profile inputrc vimrc gitignore_global gitconfig" 	# list of files/folders to symlink in the home directory

######## Execution

# create '.dotfiles_old' in home directory
echo Creating $olddir to backup any existing dotfiles in ~
mkdir -p $olddir
echo ... done

# switch to '.dotfiles' directory
echo Switching to $dir directory
cd $dir
echo ... done

# move any existing dotfiles in home directory to '.dotfiles_old' directory
# create symlinks

echo Moving any existing dotfiles from ~ to $olddir
for file in $files; do
	
  if [ -f .$file ]; then
    mv ~/.$file ~/.dotfiles_old
  fi

  echo Creating symlink to $file in home directory.
  ln -s $dir/$file ~/.$file

done
