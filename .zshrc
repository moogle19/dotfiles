export ZSH=~/.zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Source all config files
for config_file ($ZSH/lib/*.zsh) source $config_file

# Add completions to completion path
fpath=($HOME/.zsh/lib/completions $fpath)

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

PATH=/usr/local/bin:/usr/local/sbin:/Library/TeX/texbin:$PATH
