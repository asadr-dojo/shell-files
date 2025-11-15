# some git aliases
alias gst='git status'
alias gco='git checkout'
alias gcm='git commit -m'
alias gbr='git branch'
alias gl='git pull'
alias gp='git push'
alias ga='git add'
alias gaa='git add -A'
alias glp="git pull --prune"
alias gpoc='git push -u origin $(git branch --show-current)'
alias local_ignore='git update-index --skip-worktree'
alias local_unignore='git update-index --no-skip-worktree'

# Easier navigation:
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# clean all branches in current repo
alias clean_repo='git branch | grep -v "main" | xargs git branch -D'

# set up pbcopy
alias pbcopy="xclip -sel clip"
