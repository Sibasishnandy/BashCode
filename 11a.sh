filename="sort.txt"
max=0
while IFS=' ' read -r line ; do
  for no in $line ; do
  if [ $no > $max ]; then
  max=$no
  fi
  done
done < "$filename"

echo "$max"

