# Archivo copiado literalmente de Mathias Bynens

#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "Esto va a sobreescribir archivos en tu directorio home. ¿Estás seguro? (s/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Ss]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;