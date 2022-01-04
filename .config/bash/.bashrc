export TERM=xterm-256color
export EDITOR="nvim"

if [ ! -z $_USER ];
then
    export _HOME=$HOME/$_USER
    export TMUX_TMPDIR=/tmp/$_USER
else
    export _HOME=$HOME
    export TMUX_TMPDIR=/tmp/
fi

# Neovim plugins will be automatically installed at this directory
export XDG_CONFIG_DIRS=$_HOME
export XDG_CONFIG_HOME=$_HOME
export XDG_DATA_DIRS=$_HOME
export XDG_DATA_HOME=$_HOME

# Basic Aliases
alias la="ls -a"
alias ll="ls -l"
alias vi="nvim -u $_HOME/dot/.config/nvim/init.lua"
alias ta="tmux a -t"
alias tn="tmux new -s"
alias tl="tmux ls"

# Git Aliases
alias gs="git status"
alias glog="git log --graph --abbrev-commit --pretty=oneline"

# Functions
function jpt {
    jupyter-lab --no-browser --port=$1
}

source $_HOME/dot/completion/git-completion.bash
source $_HOME/dot/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

if { [ -n "$TMUX" ]; } then
    tmux source $_HOME/dot/.config/tmux/.tmux.conf
fi
