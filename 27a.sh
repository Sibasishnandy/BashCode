filename="sort.txt"
while IFS=' ' read -r line ; do
  for no in $line ; do
  rev=$( echo "$no" | rev );
  if [ $rev -eq $no ] ; then
  echo "palindorme"
  else
  echo "not"
  fi
  done
done < "$filename"

echo "$max"

