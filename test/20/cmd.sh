#!/bin/bash

# like test 19, but this time
# do not handle it as 'bash'
vim --clean \
    -c ':unlet! b:did_indent' \
    -c ':delfunc! GetShIndent' \
    -c ':so ../../indent/sh.vim' \
    -c ':set sw=0 sts=-1 ts=2 et' \
    -c 'norm! gg=G' \
    -c ':saveas! output.sh' \
    -c ':q!' indent.sh
