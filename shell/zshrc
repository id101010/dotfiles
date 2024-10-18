# Path to your oh-my-zsh installation.
ZSH="$HOME/.oh-my-zsh"

# Don't try to display a fancy theme in a tty
if [[ $TERM == "linux" ]] || [[ $TERM == "screen" ]] || [[ $TERM == "xterm-256color" ]] ; then
  export ZSH_THEME="gentoo"
else
  export ZSH_THEME="agnoster"
fi

# oh-my-zsh plugins
plugins=(
  git
  sudo
  virtualenv
  python
#  ssh-agent
#  gpg-agent
  colored-man-pages
  zsh-autosuggestions
)

DISABLE_UNTRACKED_FILES_DIRTY="true"

# call oh-my-zsh
source "$ZSH/oh-my-zsh.sh"

# zsh stuff
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/aaron/.zshrc'
zstyle :omz:plugins:ssh-agent agent-forwarding yes
zstyle :omz:plugins:ssh-agent identities ~/.ssh/id_rsa
# complete -cf sudo

# Move one word left or right using alt
bindkey "^[h" backward-word
bindkey "^[l" forward-word

# Aliases
alias ls="ls --color=auto"
alias lsblk="lsblk -o +LABEL"
alias ip="ip -c"
alias showip="ip --brief a"
alias ssh='TERM=xterm ssh'
alias ll="ls -l"

# History config
HIST_IGNORE_DUPS="true"
HIST_STAMPS="mm/dd/yyyy"
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY

# Autocompletion behaviour
autoload -Uz compinit; compinit

# oh-my-zsh configs
DIASBLE_AUTO_TITLE="true"
DISABLE_AUTO_UPDATE="false"
UPDATE_ZSH_DAYS=5

# fix gpg for git
export GPG_TTY=$(tty)

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
