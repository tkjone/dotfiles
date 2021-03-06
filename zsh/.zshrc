export ZSH=$HOME/.oh-my-zsh     # Path to oh-my-zsh installation
export DOTFILES=$HOME/dotfiles  # path to dotfiles

# ------------------------------------------------------------------------------
# ZSH SETTINGS
# ------------------------------------------------------------------------------

# zsh theme name - see `themes/thomas.zsh-theme`
ZSH_THEME="thomas"

# auto-update zsh after 13 days
export UPDATE_ZSH_DAYS=13

# zsh plugins to improve your workflow
plugins=(
    # syntax highlight man pages for easier reading
    colored-man-pages
    # syntax higlight by file extension
    colorize
    # shortcuts like `hidefiles` & `showfiles`
    osx
    # syntax hilight cli commands as you're typing
    zsh-syntax-highlighting
)

# ------------------------------------------------------------------------------
# USER SETTINGS
# ------------------------------------------------------------------------------

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/.jenv/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,extras}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# ------------------------------------------------------------------------------
# ALIASES
# ------------------------------------------------------------------------------

# quick access to config files
alias zshconfig="subl ~/dotfiles/zsh/.zshrc"     # open zshrc with sublime
alias dotfiles="cd ~/dotfiles"                   # open dotfiles

# docker
alias containers="docker ps --format 'table {{.Names}}\t{{.Image}}'"

# ------------------------------------------------------------------------------
# PYTHON
# ------------------------------------------------------------------------------

# virtualenvwrapper configuration
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/source

# tell virtual env exactly which python interpreter and local of vw
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

# ------------------------------------------------------------------------------
# NODE
# ------------------------------------------------------------------------------

export NVM_DIR="$HOME/.nvm"

# load nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

 # nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ------------------------------------------------------------------------------
# JAVA
# ------------------------------------------------------------------------------
eval "$(jenv init -)"


# ------------------------------------------------------------------------------
# POSTGRES
# ------------------------------------------------------------------------------
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin


# ------------------------------------------------------------------------------
# Clojure
# ------------------------------------------------------------------------------

# alias to call zprint for code formatting
alias pz="/usr/local/bin/zprint"
