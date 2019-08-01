#!/bin/bash

PACMAN_OPTIONS=${PACMAN_OPTIONS:-"--noconfirm"}

pacman -Syu

cat <<PACKAGES | xargs pacman -S $PACMAN_OPTIONS
make
git
vim
screen
tmux
highlight
ranger
net-tools
python
python-pip
ruby
libpqxx
curl
httpie
jq
PACKAGES

gem update

cat <<GEMS | xargs gem install
jekyll
bundler
GEMS
