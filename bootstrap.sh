#!/usr/bin/env bash

apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

apt-get install -y vim
apt-get install -y curl

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

