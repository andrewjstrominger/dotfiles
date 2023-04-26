# Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.p push
git config --global alias.st status
git config --global alias.amend-no-edit "commit --amend --no-edit"
git config --global core.editor "vim"

alias rc="bundle exec rails console"
alias rs="bundle exec rails server"
alias be="bundle exec"
alias bi="bundle install"
alias pull="git pull"
alias rebase-main="git fetch origin main && git rebase origin/main"
alias rebase-master="git fetch origin master && git rebase origin/master"

# Still need to play around with this
alias format-changed="git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs ./node_modules/.bin/prettier -w && git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs rubocop -A"
source ~/.git-completion.bash

if [ ! -d "$HOME/.config/nvim/plugged/" ]; then
  nvim +'PlugInstall --sync' +qall
fi
