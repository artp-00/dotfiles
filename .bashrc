# ~/.bashrc

# If not running interactively, don't do anything

export LANG=en_US.utf8

export EDITOR=nvim

export XDG_CURRENT_DESKTOP=GNOME

# Color support for less
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export PGDATA="$HOME/.postgres_data"
export PGHOST="/tmp"
export PGPORT="5432"

alias q='exit'
alias ls='ls --color=auto'
alias l='ls -l --color=auto'
alias la='ls --color=auto -la'
alias grep='grep --color -n'
alias ip='ip -c'
#alias v='vim'
alias v='nvim'
alias start='(kitty $(pwd) &)'
alias gbs='~/.scripts/gbs.sh'
alias pt='uv run pytest'
alias i3lock='i3lock -i ~/Pictures/Fairy_Fellers_bg.png --color=000000'

export XDG_CONFIG_HOME=~/.config

source /usr/share/bash-completion/completions/git

#export PS1='\[\e[2m\][\[\e[0;38;5;101m\]\W\[\e[0;2m\]]\$\[\e[0m\] '

# VERBOSE PS1
_update_ps1() {
    PS1_CMD1=$(git branch --show-current 2>/dev/null)
}
export PROMPT_COMMAND="_update_ps1"

export PS1='\[\e[2m\][\[\e[0;38;5;179m\]\W\[\e[0;2m\]-\[\e[0;38;5;102m\]${PS1_CMD1}\[\e[0;2m\]]\$\[\e[0m\] '

# export PS1='\[\e[2m\]↳\[\e[0m\] \[\e[38;5;166m\]$?\n\[\e[0;2m\][\[\e[0;38;5;101m\]\W\[\e[0;2m\]]\$\[\e[0m\] '
# export PS1='\[\e[2m\]↳\[\e[0m\] \[\e[38;5;166m\]$?\n\[\e[0;2m\][\[\e[0;38;5;101m\] \W\[\e[0;2m\]]\$\[\e[0m\] '


# configuration shortcuts
alias cfg="bash --rcfile <(echo '. ~/.bashrc; cd ~/.config')"
alias vrc='v ~/.vimrc'
alias brc='v ~/.bashrc; source ~/.bashrc'
alias irc='v ~/.config/i3/config'

alias sudo='sudo '

# vi mode
set -o vi
# enable <C-l> to clear screen
bind -m vi-insert "\C-l":clear-screen

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash
[ -f /usr/share/bash-completion/completions/fzf ] && source /usr/share/bash-completion/completions/fzf


export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

