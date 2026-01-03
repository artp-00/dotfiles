# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/dg/.zshrc'
#
#autoload -Uz compinit
#compinit
# End of lines added by compinstall

# Zsh prompt setup
_update_prompt() {
    # Get current git branch
    PS1_CMD1=$(git branch --show-current 2>/dev/null)
    # Set cursor color to red (using ANSI escape code)
    print -n "\033]12;red\007"
}

# Trigger the prompt update on each command
precmd() {
    _update_prompt
}

# Custom prompt with color formatting and git branch
PROMPT="%F{#777777}[%F{yellow}%1~%F{#777777}-%F{#777777}${PS1_CMD1}%F{#777777}]$%f "

alias ls=exa
