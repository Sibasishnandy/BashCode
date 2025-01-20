read birthdate

birthday=$( echo "$birthdate" | cut -d'/' -f1 )
birthmonth=$( echo "$birthdate" | cut -d'/' -f2 )
birthyear=$( echo "$birthdate" | cut -d'/' -f3 )


currentday=20
currentmonth=01
currentyear=2025


month=$((currentmonth-birthmonth))
year=$((currentyear-birthyear))
day=$((currentday-birthday))

if [ $day -lt 0 ] ; then
day=$(( day+ $(cal $((currentmonth-1)) $ currentyear | awk 'NF {DAYS = $NF} ; END { printf DAYS }' )))
month=$((month-1))
fi

if [ $month -lt 0 ] ; then
month=$((month+12))
year=$((year-1))

fi

echo "years:$year Month:$month day : $day"