# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jp/.zshrc'

fpath+=~/.zfunc

autoload -Uz compinit
compinit
# End of lines added by compinstall

export TERM=xterm-256color
export PATH=/home/jp/bin:/home/jp/.cargo/bin:/opt/confluent/confluent-4.0.0/bin:/home/jp/.local/bin/:$PATH

[ ! -s $HOME/.antigen/antigen.zsh ] && git clone https://github.com/zsh-users/antigen.git .antigen
[ -s $HOME/.antigen/antigen.zsh ] && source $HOME/.antigen/antigen.zsh # This loads antigen

antigen bundle nojhan/liquidprompt
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

# configure autosuggests
# ctrl-space to accept suggestion
bindkey '^ ' autosuggest-accept

export NVM_SYMLINK_CURRENT="true" # nvm use should make a symlink
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  source ~/.config/exercism/exercism_completion.zsh
fi

alias ls='ls -lh --color=auto'
alias vi='vim'
alias hg='hg --color=always'
alias less='less -r'
alias diff='colordiff -u'
alias sudo='sudo -E '
alias gti='git'
alias gitp='git'
alias gi='git'
alias docker-exec='docker exec -it -e COLUMNS=$COLUMNS -e LINES=$LINES -e TERM=$TERM'
alias env='env | sort | awk -F = '"'"'{ print "\033[1;35m" $1 "\033[0m = " $2; }'"'"''

# multi-mv
autoload -U zmv
alias mmv='noglob zmv -W'

#search history
bindkey '^r' history-incremental-search-backward

#open vim in ctrl-p using ctrlp
ctrlp() {
  </dev/tty vim -c CtrlP
}
zle -N ctrlp
bindkey "^p" ctrlp

# fzf in shell with ctrl-t
[ -s /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -s /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

#open vim in ctrl-p using ctrlp
ctrla() {
  </dev/tty vim -c Grepper
}
zle -N ctrla
bindkey "^a" ctrla

# vi mode in right prompt
function zle-line-init zle-keymap-select {
	VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
	RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
	zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=2

# In Vim backspace doesn't stop at the point where you started insert mode:
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# delete key
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char

# easier up and down
bindkey "^k" up-line-or-history
bindkey "^j" down-line-or-history

# home and end
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# set psql
export PSQL_EDITOR=vim

