path+=('/usr/local/bin')
path+=('/usr/local/opt/sqlite/bin')
path+=('/Users/pupius/Projects/git-workflow')
path+=('/Users/pupius/bin')
export PATH

ZSH_THEME="clean"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
	brew
	docker
	git
	go
	gulp
	node
	npm
	osx
	ssh-agent
	sublime
	terraform
)

ssh-add -A

export WORLD=devpupius
