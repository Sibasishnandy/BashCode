isamstrong() {
  num=$1
  original=$num
  y=$num
  count=0
  sum=0

  # Count the number of digits
  while [ $y -gt 0 ]; do
    y=$((y / 10))
    count=$((count + 1))
  done

  # Calculate the Armstrong sum
  while [ $num -gt 0 ]; do
    ld=$((num % 10))
    mul=1
    i=1
    while [ $i -le $count ] ; do
    mul=$((mul*ld))
    i=$((i+1))
    done
    sum=$((sum + mul))
    num=$((num / 10))
  done

  # Check if the number is an Armstrong number
  if [ $original -eq $sum ]; then
    echo "$sum True"
  else
    echo "$sum False"
  fi
}

# Process all arguments
for i in "$@"; do
  isamstrong "$i"
done
