
alias l='ls -lh`'
alias la='ls -A'
alias ll='ls -CF'
alias lf='ls -Gl | grep ^d' # Only list directories
alias lr='tree -Ca'

alias e-bash='vim ~/.bashrc; source ~/.bashrc'
alias e-aliases='vim ~/.bash_aliases; source ~/.bashrc'

alias cdm='cd /Users/dan/Projects/medium2'

# Alias 'git', but still allow autocomplete
alias g='git'
complete -o default -o nospace -F _git g

alias tm='ps aux | grep'

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
