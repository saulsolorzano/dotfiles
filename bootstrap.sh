#!/bin/sh
# Algunas de estas funciones están copiadas del archivo de Dries
# https://github.com/driesvints/dotfiles/blob/main/fresh.sh

echo "Configurando nuevos dotfiles para oh-my-zsh"

# Elimina el .zshrc de $HOME (si existe) y crea symlinks
# del .zshrc con el archivo en nuestros .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Clonamos el único plugin externo que siempre uso
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.dotfiles/plugins/zsh-autosuggestions

echo ""
echo "Configurando otros dotfiles"
echo ""

# Sincroniamos nuestros archivos git con los de la carpeta raíz
rsync .gitconfig .gitignore -avh --no-perms ~;

# Especificamos a nuestro git el archivo global
git config --global core.excludesfile ~/.gitignore

./private.sh