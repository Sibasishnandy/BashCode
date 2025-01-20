read num
decision=$((num%2))

case $decision in 
  0)
  echo "even";;
  1)
  echo "odd";;
  *)
  echo "invalid input";;
  esac