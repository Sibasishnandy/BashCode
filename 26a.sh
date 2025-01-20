#!/bin/bash

# Prompt for Roll and Marks
echo "Enter Roll:"
read iroll
store="students.txt"
x="output1.txt"

while IFS='|' read -r roll name marks ; do
  if [ "$roll" -ne "$iroll" ]; then
    echo "$roll|$name|$marks" >>"$x"  
  fi
done < "$store"

mv "$x" "$store"
    