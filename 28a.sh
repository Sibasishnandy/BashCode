filecount=0
maxline=0
filename=1
for i in * ; do
 if [ -f $i ] ; then
  filecount=$((filecount+1))
  line=$(wc -l <$i)
  if [ $line -gt $maxline ] ; then
  maxline=$line
  filename=$i
  fi
 fi
done

echo "$filecount">>"answerof28a.txt"
echo "$filename">>"answerof28a.txt"