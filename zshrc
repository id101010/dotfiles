# path
export PATH=/home/aaron/.cargo/bin:$PATH

# Syntax highlighting
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
source /home/$USER/.oh-my-zsh/oh-my-zsh.sh

# Don't try to display a fancy theme in a tty
if [[ $TERM == "linux" ]] || [[ $TERM == "screen" ]] || [[ $TERM == "xterm" ]] ; then
  [[ ! -f ~/.p10k-portable.zsh ]] || source ~/.p10k-portable.zsh
else
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

# Move one word left or right using alt
bindkey "[D" backward-word
bindkey "^[h" backward-word
bindkey "[C" forward-word
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
zstyle ':completion:*' menu select

# oh-my-zsh configs
DIASBLE_AUTO_TITLE="true"
DISABLE_AUTO_UPDATE="false"
UPDATE_ZSH_DAYS=5

# oh-my-zsh plugins
#plugins=(
#  ssh-agent
#  gpg-agent
#)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
