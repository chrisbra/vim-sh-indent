# Shared helper for the indent tests; source from a test directory.
# Usage: run_test -c ':set ...' [-c ...]...
run_test() {
    vim --clean --not-a-term \
        -c ':unlet! b:did_indent' \
        -c ':delfunc! GetShIndent' \
        -c ':so ../../indent/sh.vim' \
        "$@" \
        -c ':saveas! output.sh' \
        -c ':q!' indent.sh >/dev/null
}
