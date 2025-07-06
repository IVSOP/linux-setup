#!/usr/bin/bash

if [ $EUID -ne 0 ]
then
	echo "Please run as root"
	exit 1
fi

# Exit immediately if a command exits with a non-zero status
set -e

# Install everything
for f in $(\ls -v install/*.sh)
do
    source "$f"
done
