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

# vim:sw=2:sts=-1:ts=2
