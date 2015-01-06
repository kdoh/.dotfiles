# kdoh zsh config

# the splendid source
# ----------------

source '/Users/kdoh/.dotfiles/plugins/zaw/zaw.zsh'
eval "$(fasd --init auto)"

# jennifer garners
# ----------------

alias ..='cd ..'
alias reload='. $HOME/.zshrc'
alias ls='ls -la'
alias c='fasd_cd -d'
alias v='f -e vim'

# key bindings
# ----------------

bindkey ^R zaw-history

# prompt
# ----------------

# set the left hand side prompt to show the current directory 
PROMPT='%/$ '

# set the right hand side prompt to show the current user and host
RPROMPT='%n@%m'

# history
# ----------------

# save history to this file
HISTFILE=$HOME/.zsh_history
# append, don't replace
setopt APPEND_HISTORY
HISTSIZE=1200
SAVEHIST=1000

# cask - what for the emacs dependency management
# (TODO @kdoh) next time your're dinking around in here see if this seems like something
# you want to keep
# ----------------
export PATH="$HOME/.cask/bin:$PATH"
