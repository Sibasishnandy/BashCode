isprime(){
  value=$1
  if [ $value -le 1 ] ; then
  echo "$value Neither prime neither composite"
  else
  i=2
  while [ $i -le $((value-1)) ] ; do
  decison=$((value%i))
  if [ $decison -eq 0 ] ; then
  echo "$value Composite"
  return
  fi
  i=$((i+1))
  done
  echo "$value prime"
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