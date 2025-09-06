#!/bin/bash
# vim: set ft=bash sw=2 noet:

function lastLineEmptyInFunctionAfterContinuation() {
  [[ "$#" != "1" || "$1" = "-h" || "$1" = "--help" ]] \
    && echo "show help" && exit

}

function lastLineCommentAfterContinuation() {
  [[ "$#" != "1" || "$1" = "-h" || "$1" = "--help" ]] \
    && echo "show help" && exit
  # if last line is not a continuation, but a comment, it should indent correctly
}

function lastLineClosingAfterContinuation() {
  [[ "$#" != "1" || "$1" = "-h" || "$1" = "--help" ]] \
    && echo "show help" && exit
}

function lastLineClosingAfterContinuationWithComment() {
  # Test Comment
  [[ "$#" != "1" || "$1" = "-h" || "$1" = "--help" ]] \
    && echo "show help" && exit
}

echo "test multiline without function" \
  && echo "should be indented"
echo "should not be indented"
