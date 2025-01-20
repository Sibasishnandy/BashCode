file="output1.txt"
hmarks=0
while IFS='|' read -r roll name marks ; do
if [ $marks -gt $hmarks ] ; then
  hmarks=$marks
fi
done < "$file"

while IFS='|' read -r roll name marks ; do
if [ $hmarks -eq $marks ] ; then
  echo "Roll:$roll name:$name marks:$marks"
fi
done < "$file"
