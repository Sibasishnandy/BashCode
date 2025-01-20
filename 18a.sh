# ) Write a shell script to determine the Grade as per WBUT rule. Students name, roll no
# and marks are taken from an input file and output will store as “student name, roll no,
# marks and grade” format in a file. (Using if-else)
while IFS=' ' read -r name roll marks ; do
if [ $marks -gt 80 ]; then
grade="A"
elif [ $marks -gt 40 ] && [ $marks -le 80]; then
grade="A+"
else
grade="F"
fi
echo "$name $roll $marks $grade" >> output.txt
done < "students.txt"