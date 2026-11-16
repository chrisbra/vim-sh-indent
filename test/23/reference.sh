#!/bin/bash
# vim: set ft=bash sw=2 noet:

test() {
  local a=1
  local b=$(( 1 + 2 ))
  local c=${#array[@]}
  local d=$(( ${#array[@]} - 1 ))
  echo "$d"
}
