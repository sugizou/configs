autoload -U compinit
compinit
export PATH=/opt/bin:/opt/local/bin:/sw:/sw2:${EC2_AMITOOL_HOME}bin:${EC2_HOME}bin/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export SVN_EDITOR="emacs"
export GREP_OPTIONS="--exclude-dir=.svn --binary-files=without-match --color=auto"
#export MODULEBUILDRC="/Users/sugizou/perl5/.modulebuildrc"
#export PERL_MM_OPT="INSTALL_BASE=/Users/sugizou/perl5"
#export PERL5LIB="/Users/sugizou/perl5/lib/perl5:/Users/sugizou/perl5/lib/perl5/darwin-2level"

PROMPT=""
RPROMPT2=""
RPROMPT="%{[33m%}[%n@%d]%{[m%}"
RPROMPT2="%{[32m%}[%n@:%d]%{[m%}"
SPROMPT=""
RSPROMPT="%r is correct? [n,y,a,e]: "

#base alias
alias ll="ls -la"
alias rr="rm -rf"
alias rm="rm -i"
alias startapache="sudo /opt/local/apache2/bin/apachectl"
alias startpsql="sudo su postgres -c '/opt/local/lib/postgresql82/bin/postgres -D /opt/local/var/db/postgresql82/defaultdb' &"
alias startmysql="sudo /opt/local/share/mysql5/mysql/mysql.server start &"
alias vvmem="memcached -vv"
alias gitstart="eval `ssh-agent`
ssh-add ~/.ssh/id_rsa_git"

