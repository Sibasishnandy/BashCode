ispalindrome(){
  num=$1
  rev=$( echo "$num" | rev )
  if [ "$num" = "$rev" ]; then
  echo "Palindrome"
  else
  echo "Not Palindrome"
  fi
}
for i in "$@";do
ispalindrome $i
done
