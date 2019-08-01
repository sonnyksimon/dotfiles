#!/bin/bash

YUM_OPTIONS=${YUM_OPTIONS:-"-y"}

yum update

cat <<PACKAGES | xargs yum install $YUM_OPTIONS
make
git
vim
screen
tmux
ranger
curl
httpie
epel-release
jq
PACKAGES
