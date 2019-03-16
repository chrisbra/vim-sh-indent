#/bin/sh

if true; then
  echo 'pipe beginning'
  sed 's/beginn/end/'
fi

# TODO:
# The line after the pipe will be indented. Is this correct?
if true; then
  echo 'pipe beginning' |
    sed 's/beginn/end/'
fi
