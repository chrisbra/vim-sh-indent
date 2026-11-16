#!/bin/sh
. ../common.sh

run_test \
    -c ':set sw=0 sts=-1 ts=2 et' \
    -c ':let g:is_bash=1' \
    -c 'norm! gg=G'
