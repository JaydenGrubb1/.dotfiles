[[ $- != *i* ]] && return

#if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
#    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
#fi

export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=10000

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/android-sdk/platform-tools/:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias nv='nvim'

if [ "$color_prompt" = yes ]; then
    PS1='[\u@\h \w]\$ '
else
    PS1='[\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]]\$ '
fi

export EDITOR='/usr/bin/nvim'
export GIT_EDITOR='/usr/bin/nvim'

[ -f /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh

if command -v fzf 2>&1 >/dev/null; then
    eval "$(fzf --bash)"
fi
