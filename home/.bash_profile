#!/bin/bash

# Load all of the shell dotfiles.
for file in ~/.{functions,aliases,exports,bash_prompt,profile,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Autocorrect typos in path names when using `cd`.
shopt -s cdspell

# Add tab completion for `defaults read|write NSGlobalDomain`.
complete -W "NSGlobalDomain" defaults
