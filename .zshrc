export LANG=ja_JP.UTF-8

#zsh global options

autoload -U compinit
compinit
autoload colors
colors
autoload -Uz vcs_info
autoload predict-on

setopt auto_cd 
setopt list_packed
setopt nolistbeep
setopt auto_pushd
setopt complete_aliases
setopt hist_ignore_dups
setopt share_history

zstyle ':completion:*' list-colors ''
zstyle ':completion:*:default' menu select=1
zstyle ':vcs_info:*' formats '%s:%b'
zstyle ':vcs_info:*' actionformats '%s:%b(%a)'

# watch: http://d.hatena.ne.jp/mollifier/20090814/p1
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

function command_not_found_handler(){
  echo "[31m[5m"
  return 127
}

PROMPT=""
RPROMPT2=""
RPROMPT="%1(v|%F{red}%1v%F{white}@%F{green}[%40<...<%~|%F{green}[%50<...<%~) by %F{white}%n%#%F{green}]%f"
#RPROMPT="%1(v|%F{green}%1v%f|hoge)"
RPROMPT2="%F{yellow}[%50<...<%~ by %F{white}%n%#%F{yellow}]%f"
SPROMPT=""
RSPROMPT="%r is correct? [n,y,a,e]: "

#gloval setting
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#base exports
export LSCOLORS=hxfxcxdxbxegedAbAgAcAd

[ -f ~/.zshrc.base ] && source ~/.zshrc.base
#[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
#[ -f ~/.zshrc.application ] && source ~/.zshrc.application
#[ -f ~/.zshrc.function ] && source ~/.zshrc.function
[ -f ~/.zshrc.ruby ]  && source ~/.zshrc.ruby
[ -f ~/.zshrc.perl ]  && source ~/.zshrc.perl
[ -f ~/.zshrc.java ]  && source ~/.zshrc.java
[ -f ~/.zshrc.other ] && source ~/.zshrc.other

export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin:~/.self/bin # Add RVM to PATH for scripting
