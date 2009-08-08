#zsh global options
autoload -U compinit
compinit
autoload predict-on

setopt auto_cd 
setopt list_packed
setopt nolistbeep
setopt auto_pushd
setopt complete_aliases
setopt hist_ignore_dups
setopt share_history

zstyle ':completion:*' list-colors ''

PROMPT=""
RPROMPT2=""
RPROMPT="%{[33m%}[%d]%{[m%}"
RPROMPT2="%{[32m%}[%d]%{[m%}"
SPROMPT=""
RSPROMPT="%r is correct? [n,y,a,e]: "

#gloval setting
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#base aliases
alias ll="ls -la"
alias ls="ls -G -w"
alias rr="rm -rf"
alias rm="rm -i"
alias grep="grep --exclude-dir='*.svn*' --color=auto"
alias spec="spec --color --format specdoc --loadby mtime --reverse"
alias df="df -h"
alias date="date '+%Y-%m-%d %H:%M:%S'"

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
[ -f ~/.zshrc.application ] && source ~/.zshrc.application
