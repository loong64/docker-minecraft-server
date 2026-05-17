#!/bin/sh

set -e

distro=$(cat /etc/os-release | grep -E "^ID=" | cut -d= -f2 | sed -e 's/"//g')

bash "$(dirname "$0")/${distro}/$1".sh