path+=("/usr/local/bin")
path+=("/usr/local/opt/sqlite/bin")
path+=("/Users/$USER/Projects/git-workflow")
path+=("/Users/$USER/bin")
export PATH

ZSH_THEME="clean"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
	brew
	docker
	git
	golang
	gulp
	node
	npm
	macos
	ssh-agent
	sublime
	terraform
)

ssh-add -A

export WORLD=devpupius
