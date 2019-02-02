# load this file, set ft=sh, gg=G
# should show the same indentation as indent.sh.expected
# with sw=0 sts=-1 and ts=2

var=${true:-5}

#var=${true:-5}
#echo hi

echo << EOF
hi there {
more {
EOF

#{

echo 'test # most evil {'
echo hi

echo true # evil {
echo hi

#function hello {
#    echo hi
#}

var=${true:-5}

function hello {
  echo hi
}
echo hi

most_fun() { echo hi;
  echo hi
}

hi() { echo hi &&
  echo hi
}

fun() { true; }

more_fun() { # test
  echo test
}

test_this () {
  echo hi
}

fun() { # test
  echo test
}

# echo hi &&
# there

#{ true; true; false } |
#    true

echo hi

{ # test
  echo test
}

true && {
  echo test
}

true && { # test
  echo test
}

true && { echo test; }
echo hi

most_fun

echo pipes | # true
  echo pipend

true && # hi!
  echo inside

true && # hello \
  echo inside

true &&
  echo ok ||
  echo not ok

cd build || {
  echo "Failed to move to build directory"
  exit 1
}

echo this example below works
[[ true  ]] && {
  :
} || {
  :
}
echo 'this line should not be indented'

echo this example below NOT works
[[ true  ]] &&
  {
    :
  } || {
    :
  }
echo 'this line should not be indented'

echo this example below NOT works
[[ true  ]] &&
  {
    :
  } || {
    :
  }
echo 'this line should not be indented'

echo this example below NOT works
[[ true  ]] &&
  {
    :
  } ||
    {
      :
    }
  echo 'this line should not be indented'

# Should be indented correctly
if true; then
  echo 'pipe beginning' |
    sed 's/beginn/end/'
fi

# vim:sw=0:sts=-1:ts=2
