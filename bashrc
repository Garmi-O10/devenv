# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
test -s ~/bin/bladefunctions && . ~/bin/bladefunctions || true

source find_sources

export GREP_OPTIONS="--color --exclude=\*.svn\*"
export EDITOR=vim
export FIGNORE=svn
