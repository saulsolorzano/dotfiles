# Abrir archivo directamente en Sublime
alias subl="open -a 'Sublime Text'"

# Entrar a mis sitios web
alias sites="cd ~/Code"

# LARAVEL
alias test="./vendor/bin/phpunit"
alias pf="./vendor/bin/phpunit --filter"
alias pest="./vendor/bin/pest"
alias pef="./vendor/bin/pest --filter"
alias artisan="php artisan"
alias mfs="artisan migrate:fresh --seed"
alias mf="artisan migrate:fresh"
alias sail="bash vendor/bin/sail"
alias n_19="asdf global nodejs 19.6.0"
alias n_14="asdf global nodejs 14.7.0 && npm run dev"

# NPM
alias watch="npm run watch"
alias deploy="npm run deploy"

# GIT
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"
alias gs="git status"
alias gti="git"
