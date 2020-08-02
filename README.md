# What?

Collection of files that begin with a DOT.

NOTE: Some files in this repo may be hidden from the default listing, use `ls -a` to see all files.

# How?

In your shell's rc file (such as ~/.bashrc) add this:
```
include_file () {
    if [ -f ${HOME}/$1 ]; then
        . ${HOME}/$1
    fi
}

include_file .envs
include_file .aliases
include_file .startup
```
Then run `./setup.sh`.
