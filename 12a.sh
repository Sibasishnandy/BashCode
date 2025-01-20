leapyear(){
  year=$1
  r1=$((year % 100))
  r2=$((year % 4))
  r3=$((year % 400 ))
  if [ $r3 -eq 0 ] ; then
  echo "True"
  elif [ $r2 -eq 0 ] && [ $r1 -ne 0 ]; then
  echo "True"
  else
  echo "false"
  fi
}
for i in "$@"; do
leapyear $i
done