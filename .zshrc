if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git fzf)

source $ZSH/oh-my-zsh.sh


# user defined aliases and functions
alias f='cd $(find ~/.config ~/projects -maxdepth 3 -name .git -prune -o -name node_modules -prune -o -type d -print | fzf --height 40% --layout reverse --border)'
alias v='nvim $(find ~/.config ~/projects -maxdepth 3 -name .git -prune -o -name node_modules -prune -o -type f -print | fzf --height 40% --layout reverse --border --preview "bat --style=numbers --color=always {}")'
alias gs='git status'
alias gaa='git add .'
alias gc='git commit -m'
alias gp='git push'
alias aven='[ -d .venv ] && source .venv/bin/activate || echo "No .venv found"'
alias vi='nvim'


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/apps/powerlevel10k/powerlevel10k.zsh-theme

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

eval "$(zoxide init zsh)"

. "$HOME/.local/bin/env"

fastfetch 
