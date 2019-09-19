#!/bin/sh

test() {
  echo "something"

  {
    echo "more"
    echo "even more"
  } | tee /dev/null

# TODO: this is most-likely wrong, it should be indented by 1 indent like line 4
  echo "last"
}
