#!/bin/bash

APTITUDE_OPTIONS=${APTITUDE_OPTIONS:-"-y"}

apt-get update

cat <<PACKAGES | xargs apt-get install $APTITUDE_OPTIONS
make
git
vim
screen
tmux
highlight
ranger
net-tools
python3
python3-pip
python3-venv
ruby-full
build-essential
zlib1g-dev
libpq-dev
curl
httpie
jq
nodejs
npm
PACKAGES

cat <<GEMS | xargs gem install
jekyll
bundler
GEMS
