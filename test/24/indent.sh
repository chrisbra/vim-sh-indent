#!/bin/bash
# vim: set ft=bash sw=2 et:
# Test for command grouping with redirections

install_alias() {
        local cnt1="1"
        local cnt2="2"
        local file="testfile.txt"
        {
                echo "$cnt1"
                echo "$cnt2"
        } >> "$file"
        echo "this should not be indented wrong"
}

# Variation with pipe
process_data() {
        local file="testfile.txt"
        {
                echo "piped"
                echo "content"
        } | sort >> "$file"
        echo "sorting complete"
}

# Variation with output redirection
write_config() {
        local config_file="config.ini"
        {
                echo "[section]"
                echo "key=value"
        } > "$config_file"
        echo "config written"
}

# Nested braces
complex_function() {
        local result=""
        if true; then
                {
                        echo "nested"
                        echo "content"
                } >> "output.log"
        fi
        echo "function complete"
}

# Multiple grouped commands
multi_group() {
        {
                echo "group1"
        } > "file1.txt"
        {
                echo "group2"
        } > "file2.txt"
        echo "both groups done"
}

### https://github.com/chrisbra/vim-sh-indent/issues/37 - START
# process / ps stuff
# shellcheck disable=SC2046
{
        pspg() {
                ps -lf $( pgrep -f "$@" )
        }

        pspgt() {
                ps -o lstart,cmd $( pgrep -f "$@" )
        }
}

{
        just-a command not-a function

        another command not-a function
}

# process / ps stuff
# shellcheck disable=SC2046
{
        pspg(){
                ps -lf $( pgrep -f "$@" )
        }

        just-a command not-a function

        pspgt(){
                ps -o lstart,cmd $( pgrep -f "$@" )
        }
}
### https://github.com/chrisbra/vim-sh-indent/issues/37 - END

# vim:sw=2:sts=-1:ts=2
