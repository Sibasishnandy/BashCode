amstrong(){
  x=$1
  org=$x
  org1=$x
  org2=$x
  sum=0
  count=0
  while [ $org -gt 0 ] ; do
  org=$( echo "$org/10" | bc -l )
  count=$( echo "$count+1" | bc -l )
  done
  while [ $org1 -gt 0 ] ; do
  ld=$( echo "$org1%10" | bc -l )
  expo=$( echo "$ld^$count" | bc -l )
  sum=$( echo "$sum+$expo" | bc -l )
  org1=$( echo "$org1/10" | bc -l )
  done

  if [ "$org2" -eq "$sum" ] ; then
  echo "Amstrong number"
  else
  echo "Not a amstrong no"
  fi

  
}
for i in "$@" ; do
amstrong "$i"
done
