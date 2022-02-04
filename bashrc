# TODO: populate below
export PYTHONPATH=

# some git aliases
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gl='git log'
alias ga='git add -p'
alias gd='git diff'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# some docker aliases
alias dc='docker-compose'
alias dcf='docker-compose -f docker-compose.yml'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

color_prompt='yes'
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)} \[\033[01;32m\]\u @ \h \[\033[00m\] : \[\033[01;34m\]\w\[\033[00m\] \[\033[1;36m\]$(parse_git_branch)\[\033[00m\] \$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
