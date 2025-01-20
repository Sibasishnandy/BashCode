echo "enter the RollNo "
read Ro
echo "enter the updated marks"
read mark

test="students.txt"
temp="temp.txt"

echo "$(wc -l < "$test")"

tail -n +2 "$test" | while IFS='|' read -r Roll Name Marks;do
    if [ $Ro -eq $Roll ];then
        Marks=$mark
    fi
    echo "$Roll|$Name|$Marks" >> "$temp"
done 

mv "$temp" "$test"
