#!/bin/bash
. ../common.sh

run_test \
    -c ':set sw=0 sts=-1 ts=2 et' \
    -c 'norm! gg=G'
