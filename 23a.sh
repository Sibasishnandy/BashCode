temp="students.txt"
out="tempout.txt"
i=1
echo "How many data wanna insert?"
read n
while [ $i -le $n ] ; do
echo "Enter roll:"
read studentroll
echo "Enter name:"
read studentname
echo "marks:"
read studentmarks
echo "$studentroll|$studentname|$studentmarks" >> $temp
i=$((i+1))
done

