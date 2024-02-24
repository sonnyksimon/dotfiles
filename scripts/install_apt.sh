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
build-essential
zlib1g-dev
curl
jq
PACKAGES

