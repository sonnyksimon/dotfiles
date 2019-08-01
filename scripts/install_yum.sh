#!/bin/bash

YUM_OPTIONS=${YUM_OPTIONS:-"-y"}

yum update

# ranger needs to be built manually from source

cat <<PACKAGES | xargs yum install $YUM_OPTIONS
make
git
vim
screen
tmux
net-tools
curl
httpie
epel-release
jq
PACKAGES
