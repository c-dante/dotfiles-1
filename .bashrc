#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -l'
alias ls='ls --color=auto'
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias hg='hg --color=always'
alias less='less -r'
alias diff='colordiff -u'
alias gti='git'
alias gt='git'
alias got='git'
alias gut='git'
alias gitp='git'
alias gg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%an%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %h%C(reset)%C(bold yellow)%d%C(reset)" --all'
#alias sbt='sbt -J-noverify -J-javaagent:/opt/jrebel/jrebel.jar'

export PATH=~/bin:~/scratch/confluent-3.3.0/bin:~/.cargo/bin:$PATH

#Java fonts in gtk
export JAVA_FONTS=/usr/share/fonts/TTF
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

#git bash completion
[ -r /usr/share/git/completion/git-prompt.sh   ] && . /usr/share/git/completion/git-prompt.sh

export NVM_SYMLINK_CURRENT="true" # nvm use should make a symlink
[[ -r $HOME/.nvm/bash_completion ]] && . $HOME/.nvm/bash_completion # nvm bash completion
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

# If you want to add aws extras -- might need bash-completion if not in bash
# complete -C aws_completer aws

# If you have a problem with rendering terminals after resize -- might need shopt
# shopt -s checkwinsize
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
