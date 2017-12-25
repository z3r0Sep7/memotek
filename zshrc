# Path to your oh-my-zsh installation.
export ZSH=/Users/memotek/.oh-my-zsh
export ACTIVATOR_HOME=/Users/memotek/activator-dist-1.3.7
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git osx docker)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/memotek/bin:/Users/memotek/.vimpkg/bin:/Users/memotek/android-sdk-macosx/tools:/Users/memotek/android-sdk-macosx/platform-tools:/usr/local/opt/go/libexec/bin:$ACTIVATOR_HOME"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# alias utiles

alias c='clear'
alias h='history'
alias j='jobs -l'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias edit='vim'
alias ping='ping -c 5'
alias now='date +"%T"'
alias header='curl -I'
## get rid of command not found ##
alias cd..='cd ..'
alias catc='pygmentize -g' 

# ## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -i'
alias svi='sudo mvim'
alias vi='mvim'
alias szsh='source ~/.zshrc'  
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias sha1='openssl sha1'   
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

#   # Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias wget='wget -c'
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
fpath+=( /usr/local/share/zsh-navigation-tools )
fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
export PATH="/usr/local/opt/openssl/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/memotek/.sdkman"
[[ -s "/Users/memotek/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/memotek/.sdkman/bin/sdkman-init.sh"
source "/Users/memotek/bin/antigen.zsh"

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle soimort/you-get

antigen apply
