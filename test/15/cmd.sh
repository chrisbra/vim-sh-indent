#!/bin/sh
. ../common.sh

run_test \
    -c ':let g:is_bash=1' \
    -c ':set sw=0 sts=-1 ts=2 et' \
    -c 'norm! gg=G'
