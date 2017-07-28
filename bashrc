# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTTIMEFORMAT="%F %T "
shopt -s cmdhist
shopt -s histappend

export GIT_EDITOR='subl -n -w'

RESET="\[\017\]"
NORMAL="\[\e[0m\]"
YELLOW="\[\e[0;33m\]"
WHITE="\[\e[0;37m\]"
RED="\[\e[0;31m\]"

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# Set the prompt to "user@host working/directory $" but with nice colors.
export PS1="$YELLOW\u@\h: $WHITE\w$NORMAL\$(__git_ps1) $RED\$ $NORMAL$RESET"

# Show Git branch name and working directory in terminal's title.
# function path_title() {
#   echo -en "\\033];$(__git_ps1) - `pwd`\\007"
# }
# PROMPT_COMMAND=path_title

