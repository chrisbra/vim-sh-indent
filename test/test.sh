#!/bin/sh

#set -x

# Setup some color variables
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)
rc=0

for i in */; do
  {
    cd "$i" &&
    test -f "cmd.sh" &&
    ./cmd.sh
    diff -qu output.sh  reference.sh >/dev/null
    if [ $? -ne 0 ]; then
      printf "Test %s:\t\t[${red}Failed${reset}]\n" ${i%%/}
      if [ -n "$1" ] && [ "${1}" = "-v" ]; then
        diff -u --color output.sh reference.sh
      fi
      rc=1
    else
      printf "Test %s:\t\t[${green}OK${reset}]\n" ${i%%/}
    fi
    cd "$OLDPWD"
  }
done
exit $rc
