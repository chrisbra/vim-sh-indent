#!/bin/bash

function g {
  grep --color=always -nre "$1" ./*
}
