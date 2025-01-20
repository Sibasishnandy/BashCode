#!/bin/bash

# Read directory paths from the user
echo "Enter the first directory:"
read directory1
echo "Enter the second directory:"
read directory2

file1=0
file2=0

# Check if the first directory exists
if [ -d "$directory1" ]; then
  for i in "$directory1"/*; do
    if [ -f "$i" ]; then
      file1=$((file1 + 1))
    fi
  done
else
  echo "$directory1 does not exist."
  exit 1
fi

# Check if the second directory exists
if [ -d "$directory2" ]; then
  for i in "$directory2"/*; do
    if [ -f "$i" ]; then
      file2=$((file2 + 1))
    fi
  done
else
  echo "$directory2 does not exist."
  exit 1
fi

# Output the number of files in both directories
echo "$directory1 has $file1 files."
echo "$directory2 has $file2 files."

# Compare the number of files
if [ "$file1" -gt "$file2" ]; then
  echo "$directory1 has more files."
elif [ "$file1" -lt "$file2" ]; then
  echo "$directory2 has more files."
else
  echo "Both directories have the same number of files."
fi
