export ZSH="/Users/latacio.nery/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="lambda-gitster"
# ZSH_THEME="spaceship"

plugins=(git python ruby brew pip bundler node)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 45% --layout=reverse --border'

# SPACESHIP_PROMPT_ORDER=(
#   dir           # Current directory section
#   git           # Git section (git_branch + git_status)
#   vi_mode       # Vi-mode indicator
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )
# SPACESHIP_USER_SHOW=false
# SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_CHAR_SYMBOL="❯"
# SPACESHIP_CHAR_SUFFIX=" "
# SPACESHIP_DIR_TRUNC=1

export AWS_PROFILE=default

alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3
