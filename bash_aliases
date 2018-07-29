
alias l='ls -lh'
alias la='ls -A'
alias ll='ls -CF'
alias lf='ls -Gl | grep ^d' # Only list directories
alias lr='tree -Ca'

alias serve='python -m SimpleHTTPServer 8080'

alias e-bash='vim ~/.bashrc; source ~/.bashrc'
alias e-aliases='vim ~/.bash_aliases; source ~/.bashrc'

alias cdm="cd /Users/$USER/Projects/mono"

# Alias 'git', but still allow autocomplete
alias g='git'
complete -o default -o nospace -F _git g

alias tm='ps au | grep'

alias back='cd -'

# Go up N directories
up() {
  str=""
  count=0
  while [ "$count" -lt "$1" ];
  do
    str=$str"../"
    let count=count+1
  done
  cd $str
}
