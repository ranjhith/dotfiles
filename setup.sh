# Shell script to setup symlinks in $HOME to the dotfiles here
# This script is meant to be run on new machines with newly created user
# account.

files_to_skip="setup.sh README"

function listcontains {
  for word in $1; do
    if [[ $word = $2 ]] ; then
      return 0
    fi
  done
  return 1
}

function symlink {
    target=$1
    link=$2
    echo "symlink: $link -> $target"
    rm -f $link
    ln -sf $target $link
}

for dotfile in $(find . -maxdepth 1 -type f -printf '%f\n')
do
    if listcontains "$files_to_skip" $dotfile ; then
        echo "Skipping" $dotfile
    else
        symlink `pwd`/$dotfile ~/$dotfile;
    fi
done
