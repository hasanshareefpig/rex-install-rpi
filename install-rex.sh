#!/bin/bash
echo ' '
echo 'Installer of the REX Control System runtime components'
echo '        for the Raspberry Pi minicomputer             '
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo ' '

ROOT=$(dirname $(readlink -f $0))

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi

# Install core modules
bash $ROOT/script-core

# Done
