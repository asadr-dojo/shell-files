source $HOME/.bash_aliases

# search history
bindkey "\e[A" history-search-backward
bindkey "\e[B" history-search-forward
bindkey "\eOA" history-search-backward
bindkey "\eOB" history-search-forward

export HISTSIZE=1000000
export SAVEHIST=1000000
