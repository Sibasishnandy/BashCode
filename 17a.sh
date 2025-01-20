#!/bin/bash

# Prompt for Roll and Marks
echo "Enter Roll:"
read iroll
echo "Enter Marks:"
read imarks


store="students.txt"
x="output1.txt"

# Process the student records
while IFS='|' read -r roll name marks ; do
  # If the roll number matches the user input, update marks
  if [ "$roll" -eq "$iroll" ]; then
    marks=$imarks
    echo "$roll|$name|$marks" >>"$x"  # Use new marks
  else
    echo "$roll|$name|$marks" >>"$x"  # Keep original marks
  fi
done < "$store"
    