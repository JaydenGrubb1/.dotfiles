[[ $- != *i* ]] && return

HISTSIZE=5000
SAVEHIST=10000
HISTFILE=~/.zsh_history
HISTDUP=erase

setopt append_history
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

autoload -Uz compinit colors vcs_info
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

bindkey '^I' menu-complete
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

export PATH="$HOME/.local/bin:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias nv='nvim'

preexec() {
	cmd_start="$SECONDS"
}

precmd() {
	vcs_info
	zstyle ':vcs_info:git:*' formats '(%b)'
	zstyle ':vcs_info:*' enable git svn hg
	setopt PROMPT_SUBST

	local cmd_end="$SECONDS"
	elapsed=$((cmd_end-cmd_start))
	if [ $elapsed -ge 1 ]; then
		RPROMPT='%F{yellow}${elapsed}s%f %F{magenta}${vcs_info_msg_0_}%f'
	else
		RPROMPT='%F{magenta}${vcs_info_msg_0_}%f'
	fi
	cmd_start=$cmd_end
}

PROMPT='[%F{green}%n@%m%f:%F{blue}%~%f]$ '

export EDITOR='/bin/nvim'
export GIT_EDITOR='/bin/nvim'

if command -v fzf >/dev/null 2>&1; then
	eval "$(fzf --zsh)"
fi
