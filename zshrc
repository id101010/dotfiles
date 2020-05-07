# Path settings
export PATH=/usr/local/bin:$PATH

# Path to oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh/

# Don't try to display a powerlinefont theme in a tty
if [[ $TERM == "linux" ]] || [[ $TERM == "screen" ]] ; then
    ZSH_THEME="gentoo"
else
    ZSH_THEME="agnoster"
fi

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"
# Auto update zsh
UPDATE_ZSH_DAYS=13
# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
# Timestamps in zsh history
HIST_STAMPS="mm/dd/yyyy"
# No duplicates in history
HIST_IGNORE_DUPS="true"

# List of plugins
plugins=(
  git
  last-working-dir
  fbterm
  ssh-agent
  gpg-agent
)

# Move one word left or right using alt
bindkey "[D" backward-word
bindkey "^[h" backward-word
bindkey "[C" forward-word
bindkey "^[l" forward-word

# Aliases
alias lsblk="lsblk -o +LABEL"
alias ip="ip -c"
alias showip="ip --brief a"
alias ssh='TERM=xterm ssh'

# ZSH cache dir config
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
