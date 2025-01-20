
isprime(){
  x=$1
  if [ $x -lt 2 ] ; then
  echo "$x is niether prime not composite"
  else
  i=2
  while [ $i -le $((x-1)) ] ; do
  if [ $((x % i)) -eq 0 ] ; then
  echo "$x is composite"
  return
  fi
  i=$((i+1))
  done
  echo "$x is prime"
  fi
}
if [ "$#" -ne 2 ] ; then
exit 1
fi
lower=$1
higher=$2
while [ $lower -lt $higher ] ; do
isprime "$lower"
lower=$((lower+1))
done