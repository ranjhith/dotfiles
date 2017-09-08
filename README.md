Collection of files that begin with a DOT.

Some files may be hidden from the default listing, use 'ls -a' to see all files.

In your shell's rc file (~/.bashrc) add this:
```
include () {
    if [ -f $(HOME)/$1 ]; then
        . $(HOME)/$1
    fi
}

include .envs
include .aliases
include .startup
```
Then run `./setup.sh`.
