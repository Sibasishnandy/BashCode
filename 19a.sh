temp="tempa.txt"
out="tempout.txt"
while IFS=' ' read -r day temp; do
  if [ $temp -lt 15 ] ; then
  x="Very cold"
  elif [ $temp -ge 15 ] && [ $temp -lt 25 ] ; then
  x="Cold"
  elif [ $temp -ge 25 ] && [ $temp -lt 35 ] ; then
  x="Hot"
  else
  x="Very Hot"
  fi
  echo "$day|$temp|$x" >> "$out"
done < "$temp"