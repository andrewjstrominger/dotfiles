  # Git aliases
	git config --global alias.co checkout
	git config --global alias.br branch
	git config --global alias.p push
	git config --global alias.st status
	git config --global alias.amend-no-edit "commit --amend --no-edit"

	alias rc="bundle exec rails console"
	alias rs="bundle exec rails server"
	alias be="bundle exec"
	alias bi="bundle install"
	alias pull="git pull"
  alias rebase-main="git fetch origin main && git rebase origin/main"

  # Still need to play around with this
  alias format-changed="./node_modules/.bin/prettier -w  $(git diff --name-only)"

	source ~/.git-completion.bash

  nvim +'PlugInstall --sync' +qall
