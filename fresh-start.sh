#!/bin/sh

echo "Empezando con la configuración..."

# Crear el sitio Code que uso siempre
mkdir $HOME/Code


# Revisamos que tengamos instalado homebrew
# Y en caso de no lo instalamos
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Actualizamos homebrew
brew update

# Instalamos todas las dependencias (Ver Brewfile)
brew tap homebrew/bundle
brew bundle

mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"


# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

./bootstrap.sh