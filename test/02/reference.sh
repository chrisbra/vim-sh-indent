#!/bin/sh

if [[ /bin/true ]]; then
  echo "true"
else
  echo "false"
  if [[ /bin/false ]]; then
    echo "false"
  else
    echo "true"
  fi
fi
if [[ /bin/true ]]
then
  echo "true"
else
  echo "false"
  if [[ /bin/false ]]
  then
    echo "false"
  else
    echo "true"
  fi
fi
