#!/bin/sh
# Algunas de estas funciones están copiadas del archivo de Dries
# https://github.com/driesvints/dotfiles/blob/main/fresh.sh

echo "Configurando nuevos dotfiles"

# Elimina el .zshrc de $HOME (si existe) y crea symlinks
# del .zshrc con el archivo en nuestros .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc