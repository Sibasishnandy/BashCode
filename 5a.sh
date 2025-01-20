x="words.txt"
while IFS=' ' read -r line ; do
   for word in $line ; do
  clean=$(echo "$word" | tr -d ',.;')
  reverse=$(echo "$clean" | rev)

  if [ $reverse = $clean ] ; then
  echo "Palindrome"
  else
  echo "Not"
  fi

  done


done < "$x"