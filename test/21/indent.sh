#!/bin/bash
# vim: set ft=bash sw=2 noet:

a = 10
b = 20

function add() {
c = $((a + b))
}

function print {
# do nothing
}

if [[ $c -ge 15 ]];
then
print("ok")
else
print("not ok")
fi
