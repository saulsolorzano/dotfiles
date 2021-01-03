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


# GIT
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"
alias gs="git status"
alias gti="git"