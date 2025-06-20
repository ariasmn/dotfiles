# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit -C
# Enable ohmyzsh like completion
zstyle ':completion:*' menu select

# Completion colors
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}  

# End of lines added by compinstall
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias ls='ls -p --color=auto'
alias ll='ls -lah'
alias vim='vi'
alias sudo='sudo '
alias sdread='lspci -knn | grep -iA2 rts522a' #TP BIOS breaks SD card, but running this command makes the reader work for some reason. See https://forums.lenovo.com/t5/Other-Linux-Discussions/Lenovo-T14-AMD-Micro-SD-Reader-broken/m-p/5153185?page=3#5962875

# Adding correct keybindings
typeset -g -A key
bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word
bindkey '^H'      backward-kill-word                  # [Ctrl-Backspace] - delete backward whole word
bindkey '5~'      kill-word                           # [Ctrl-Del] - Delete forward whole word

#Workaround for Ghostty not working properly while SSHing
if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
    export TERM=xterm-256color
fi

export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
