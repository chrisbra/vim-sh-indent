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

