#!/bin/bash
# vim: set ft=bash sw=2 noet:

function variables(){
local test1="test1"
test2=(
"test" "test2"
)
local test3=(
"test" "test3"
)
typeset -ua test4=(
"test" "test4"
)
declare -a inline=("also work") multiline=(
"multiple" "values"
)
declare -l var="VALUE"
}
