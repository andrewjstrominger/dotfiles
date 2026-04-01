# Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.p push
git config --global alias.st status
git config --global alias.amend-no-edit "commit --amend --no-edit"
git config --global core.editor "nvim"

alias rc="bundle exec rails console"
alias rs="bundle exec rails server"
alias be="bundle exec"
alias bi="bundle install"
alias pull="git pull"
alias rebase-main="git fetch origin main && git rebase origin/main"
alias rebase-master="git fetch origin master && git rebase origin/master"

# Still need to play around with this
alias lint-changed='changed=$(git diff --name-only --diff-filter=d HEAD); [ -n "$changed" ] && echo "$changed" | xargs bundle exec rubocop -A && echo "$changed" | xargs npx prettier --write'
source ~/.git-completion.bash

if [ ! -d "$HOME/.config/nvim/plugged/" ]; then
  nvim +'PlugInstall --sync' +qall
fi
