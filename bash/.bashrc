[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'

alias vim='nvim'
alias nv='nvim'
alias vi='nvim'

if [ "$color_prompt" = yes ]; then
    PS1='[\u@\h \w]\$ '
else
    PS1='[\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]]\$ '
fi

export EDITOR='/usr/bin/nvim'
export GIT_EDITOR='/usr/bin/nvim'
