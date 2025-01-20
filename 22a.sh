fun(){
  i=$1
  if [ -f $i ] ; then
  echo "File $i exists"
  line=$(wc -l <$i)
  word=$(wc -w <$i)
  char=$(wc -c <$i)
  echo "No of lines:$line No of Words:$word No of characters:$char"
  ls -l "$i"
  if [ -w "$i" ]; then
      echo "Group has write permission. Revoking it..."
      chmod g-w "$i"
    else
      echo "Group has no write permission. Adding it..."
      chmod g+w "$i"
  fi
  elif [ -d $i ] ; then
  echo "Directory $i exists"
  else
  echo "Neither file nor directory"
  fi
}
for i in "$@" ; do
fun "$i"
done