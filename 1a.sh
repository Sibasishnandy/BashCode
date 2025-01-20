
factorial() {
  x=$1
  fact=1
  i=1
  while [ $i -le $x ]; do
    fact=$(echo "$fact * $i" | bc)
    i=$((i + 1))
  done
  echo "$fact"
}


echo "Enter the value of x:"
read x

echo "Enter the number of terms:"
read terms

sum=0  
i=1    

# Loop for the number of terms
if [ $terms -ge 2 ] ; then
while [ $i -lt $terms ]; do
  val=$((i * 2))                
  facting=$(factorial $val)    
  # Compute x^val
  mul=$(echo "$x^$val" | bc -l ) # Use bc for exponentiation

  # Compute term value (x^val / val!)
  e1=$(echo "$mul / $facting" | bc -l )
  sum=$(echo "$sum + $e1" | bc -l ) # Add the term to the sum

  i=$((i + 1))                  # Increment the term counter
done
fi

# Add x to the sum
 sum=$(echo "$sum + $x" | bc -l )

# Output the result
echo "Answer is: $sum"
