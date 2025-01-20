sum=0
i=1
while [ $i -le 5 ] ; do
read num
sum=$((sum+num))
i=$((i+1))
done

echo "Sum is : $sum"