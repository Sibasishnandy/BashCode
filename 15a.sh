# workdone(){
#   x=$1
#   while IFS='|' read -r roll name marks ; do
#   if [ $marks -ge 90 ] ; then
#   grade="O"
#   elif [ $marks -ge 80 ] && [ $marks -lt 90 ] ; then
#   grade="E"
#   elif [ $marks -ge 70 ] && [ $marks -lt 80 ] ; then
#   grade="A"
#   elif [ $marks -ge 60 ] && [ $marks -lt 70 ] ; then
#   grade="B"
#   elif [ $marks -ge 50 ] && [ $marks -lt 60 ] ; then
#   grade="C"
#   elif [ $marks -ge 40 ] && [ $marks -lt 50 ] ; then
#   grade="D"
#   else
#   grade="F"
#   fi
#   echo "$roll|$name|$marks|$grade" >> "grade_file_output.txt"
#   done < "$x" 
# }




# for i in "$@" ; do
# workdone $i
# done

workdone() {
  input_file=$1
  
  # Process each line of the input file
  while IFS='|' read -r roll name marks; do
    # Determine the grade using a case statement
    case $marks in
      9[0-9]|100)
        grade="O"  # Marks 90-100
        ;;
      8[0-9])
        grade="E"  # Marks 80-89
        ;;
      7[0-9])
        grade="A"  # Marks 70-79
        ;;
      6[0-9])
        grade="B"  # Marks 60-69
        ;;
      5[0-9])
        grade="C"  # Marks 50-59
        ;;
      4[0-9])
        grade="D"  # Marks 40-49
        ;;
      *)
        grade="F"  # Marks below 40
        ;;
    esac
    
    # Append the result to the output file
    echo "$roll|$name|$marks|$grade" >> "grade_file_output.txt"
  done < "$input_file"
}

# Loop through all input files passed as arguments
for i in "$@"; do
  workdone "$i"
done
