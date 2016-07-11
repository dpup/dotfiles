# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTTIMEFORMAT="%F %T "
shopt -s cmdhist
shopt -s histappend

# Set the prompt to "user@host working/directory $" but with nice colors.
export PS1='\[\e[0;33m\]\u@\h:\[\e[m\] \[\e[0;37m\]\w$(__git_ps1)\[\e[m\] \[\e[0;31m\]\$\[\e[m\] '

# Show Git branch name and working directory in terminal's title.
function path_title() {
  echo -en "\\033];$(__git_ps1) - `pwd`\\007"
}
PROMPT_COMMAND=path_title
