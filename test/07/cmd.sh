#!/bin/sh
. ../common.sh

run_test \
    -c ':set sw=0 sts=-1 ts=2 et ft=zsh nofoldenable' \
    -c 'norm! oadd another comment' \
    -c ':3' \
    -c 'norm! oand another comment'
