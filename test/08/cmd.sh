#!/bin/sh

vim --clean \
    -c ':unlet! b:did_indent' \
    -c ':delfunc! GetShIndent' \
    -c ':so ../../indent/sh.vim' \
    -c ':set sw=0 sts=-1 ts=2 et ft=zsh nofoldenable' \
    -c 'norm! oadd another comment' \
    -c ':3' \
    -c 'norm! oand another comment' \
    -c ':saveas! output.sh' \
    -c ':q!' indent.sh
