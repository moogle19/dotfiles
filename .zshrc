# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="daveverwer"
ZSH_THEME="miloshadzic"
#ZSH_THEME="minimal"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew pygmentize go golang osx python xcode zsh-syntax-highlighting  docker)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

#export LANG=de_DE.UTF-8
export LANG=en_US.UTF-8

#Java
#export JAVA_HOME=$(/usr/libexec/java_home)

#Godoc
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/texbin:$PATH


#Lock my mac
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias cartupdate='carthage update --platform iOS --no-use-binaries'

PERL_MB_OPT="--install_base \"/Users/moogle/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/moogle/perl5"; export PERL_MM_OPT;

alias libressl="/usr/local/Cellar/libressl/2.3.0/bin/openssl"

source ~/.private_zshrc
source ~/.gobindings
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/lib/
export CPATH=$CPATH:/usr/local/include
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/include
export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/include
export OBJC_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/include


PROMPT='%{$fg[white]%}%1~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)%{$fg[white]%}$%{$reset_color%} '

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias grep='ggrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'

export PATH=$PATH:/Users/moogle/.cache/rebar3/bin
export HOMEBREW_NO_ANALYTICS=1
alias startserver='wakeonlan 98:4b:e1:6e:cb:60'
