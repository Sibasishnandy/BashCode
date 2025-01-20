# Write a shell script to find the value of y using
# Y(x, n) = {1+x
# 2 when n=1
# {1+x/n when n=2
# {1+2x when n=3
# {1+nx when n>3 or n<1


echo "enter x"
read x
echo "enter n"
read n

if [ $n -eq 1 ] ; then
val=$(echo "$x^2" | bc -l)
val=$(echo "$val+1" |bc -l)
echo $val
elif [ $n -eq 2 ] ; then
val=$(echo "$x/$n" | bc -l)
val=$(echo "$val+1" |bc -l)
echo $val
elif [ $n -eq 3 ] ; then
val=$(echo "$x*2" | bc -l)
val=$(echo "$val+1" |bc -l)
echo $val
else
val=$(echo "$x*$n" | bc -l)
val=$(echo "$val+1" |bc -l)
echo $val
fi
