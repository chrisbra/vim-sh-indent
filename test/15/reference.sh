#!/bin/sh

f(){
  for fn in a b c
  do
    for-script $fn
  done
}
