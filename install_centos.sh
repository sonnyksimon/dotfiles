#!/bin/bash

cat <<PACKAGES | sudo yum install
git
PACKAGES
