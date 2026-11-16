#!/usr/bin/env bash

if [[ -z "somecondition" ]]; then
  if [[ -z "thircondition" ]]; then
    # below command will also break formatting as it has if keyword
    echo "if in double quoted string"
    echo 'if in single quoted string'
  fi
fi
