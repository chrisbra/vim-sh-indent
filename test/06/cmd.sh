#!/bin/sh
. ../common.sh

run_test \
    -c ':set sw=0 sts=-1 ts=2 et' \
    -c ':5' \
    -c 'norm! ciwfi'
