
alias npm="npm -d"
alias nx="npx nx"
alias nr="npm run"

alias npm-clear="echo 'rm -rf ~/.npm ~/.cache/ '; rm -rf ~/.npm ~/.cache/"
alias npmi="npm-clear node_modules && npm i"


alias nrs="rm -rf .angular node_modules/.cache .nx && npm run start"
alias nrb="rm -rf .angular node_modules/.cache dist .nx && npm run build"

alias yarni="rm -rf $HOME/.yarn/berry/ $HOME/.cache/yarn node_modules && yarn"

alias npm-install-no-cache="rm -rf ~/.npm ~/.cache/ node_modules/ .nx .angular && npm ci && rm -rf ~/.npm ~/.cache/ node_modules/ .nx .angular && npm i"


