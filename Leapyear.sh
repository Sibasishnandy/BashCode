leapyear(){

  year=$1
  l1=$((year%400))
  l2=$((year%100))
  l3=$((year%4))
  if [ $l1 -eq 0 ] ; then
  echo 1
  elif [ $l2 -ne 0 ] && [ $l3 -eq 0 ] ; then
  echo 1
  else
  echo 0
  fi

}
echo "Enter date:(dd/mm/yy)"
read date

day=$( echo "$date" | cut -d'/' -f1 )
month=$( echo "$date" | cut -d'/' -f2 )
year=$( echo "$date" | cut -d'/' -f3 )

if [ $month -lt 1 ] || [ $month -gt 12 ] ; then
echo "$date is wrong"
exit 1
fi

case $month in
1|3|5|7|8|10|12)
max_days=31;;
4|6|9|11)
max_days=30;;
2)
ans=$(leapyear "$year")
if [ $ans -eq 1 ]; then
max_days=29
else
max_days=28
fi
;;
esac

if [ $day -lt 1 ] || [ $day -gt $max_days ] ; then
echo "$date is wrong"
exit 1
fi

echo "$date is valid"
