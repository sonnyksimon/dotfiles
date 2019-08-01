#!/bin/bash

set -e

if [[ $EUID -ne 0 ]]; then
    echo "ERROR: Must be run with root privileges."
    exit 1
fi

RUNDIR=$(dirname $0)
SCRIPTDIR="$RUNDIR/scripts"

function important() {
    echo -e "\033[31m${1}\033[0m"
}

echo
important "This script assumes that you're in your own box and you have root priviledges"
important "for installs. It also assumes that you're using ubuntu--you gotta know atleast"
important "that mane."
echo
important "Before proceeding, if this is your first time installing, stop here and read"
important "the script (scripts/install_apt.sh). It's got pretty much all the information"
important "to prevent common issues."
echo
important "NEVER RUN THIS ON A MACHINE OTHER THAN YOURS, IT WILL DELETE ALL YOUR FILES,"
important "AND OTHER WEIRD HAIRY STUFF. ONLY USE FOR FRESH INSTALLATIONS OF UBUNTU."
read -er -n1 -p "proceed? [Y/n]" response
if [[ $response =~ ^[Yy]$ || $response == "" ]]; then
    echo "Excellent. Here we go!"
    $SCRIPTDIR/install_apt.sh
fi
