fibo(){
    n=$1
    a=0
    b=1

    if [ $n -eq 1 ];then
    echo "$a">>fibo_output.txt

    elif [ $n -eq 2 ];then
    echo "$a">>fibo_output.txt
    echo "$b">>fibo_output.txt
    
    else
    echo "$a">>fibo_output.txt
    echo "$b">>fibo_output.txt

    i=2
    while [ $i -lt $n ];do
    c=$((a+b))
    echo "$c">>fibo_output.txt
    a=$b
    b=$c
    i=$((i+1))
    done
    
    fi
    
}
echo "ENter no:"
read x
fibo $x