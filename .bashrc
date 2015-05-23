#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Add cabal installed apps to path
PATH=$PATH:~/.cabal/bin

alias ls='ls --color=auto'
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias vi='vim'
alias hg='hg --color=always'
alias less='less -r'
alias diff='colordiff -u'
#alias sbt='sbt -J-noverify -J-javaagent:/opt/jrebel/jrebel.jar'

export PATH=~/bin:$PATH


[ -r /usr/share/git/completion/git-prompt.sh   ] && . /usr/share/git/completion/git-prompt.sh
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

shopt -s checkwinsize
