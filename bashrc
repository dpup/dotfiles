# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTTIMEFORMAT="%F %T "
shopt -s cmdhist
shopt -s histappend

export GIT_EDITOR='subl -n -w'
export EDITOR=subl

RESET="\[\017\]"
NORMAL="\[\e[0m\]"
YELLOW="\[\e[0;33m\]"
WHITE="\[\e[0;37m\]"
RED="\[\e[0;31m\]"

#source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# Set the prompt to "user@host working/directory $" but with nice colors.
export PS1="$YELLOW\u@\h: $WHITE\w$NORMAL\$(__git_ps1) $RED\$ $NORMAL$RESET"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /usr/local/bin/aws_completer ]; then
  complete -C '/usr/local/bin/aws_completer' aws
fi

