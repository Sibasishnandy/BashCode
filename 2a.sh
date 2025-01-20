echo "Enter the value of x:"
read x

echo "Enter the number of terms:"
read terms

sum=1
i=1    

while [ $i -lt $terms ]; do
  expo=$((i+1))
  decision=$((expo % 2))

  xbytwo=$( echo "$x / 2" | bc -l )
  val=$( echo "$xbytwo ^ $expo" | bc -l )

  if [ $decision -eq 0 ] ; then
  sum=$( echo "$sum+$val" | bc -l)
  else
  
  sum=$( echo "$sum-$val" | bc -l )
  fi

  i=$((i + 1))                 
done

echo "Answer is: $sum"
