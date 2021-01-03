#!/bin/sh


# Crear el sitio Code que uso siempre
mkdir $HOME/Code


# Revisamos que tengamos instalado homebrew
# Y en caso de no lo instalamos
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Actualizamos homebrew
brew update