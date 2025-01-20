for i in * ; do
 if [ -f $i ] ; then
  echo $i>>"Storefilename.txt"
 fi
done