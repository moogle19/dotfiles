# autoload -U add-zsh-hook
autoload -Uz vcs_info

# # enable VCS systems you use
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*:prompt:*' check-for-changes true

setopt prompt_subst
autoload -U promptinit
promptinit

autoload -U colors && colors


# Look at http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
# for mor options
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr '+'  # display this when there are staged changes
zstyle ':vcs_info:*' actionformats '[%b%|%a%c%u%]%f'
#zstyle ':vcs_info:*' formats ':%b%c%u%f'
zstyle ':vcs_info:git*' formats ":%{$fg[blue]%}%b%|%a%c%u%{$reset_color%}"


zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }

PROMPT='%n@%m[%{$fg[red]%}%(4~|%-1~/…/%2~|%3~)%{$reset_color%}${vcs_info_msg_0_}]%# %{$reset_color%}'
