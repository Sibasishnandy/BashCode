fun() {
  a=$1

  # Correct syntax for variable assignment (no spaces around '=')
  word=$(wc -w < "$a")
  line=$(wc -l < "$a")
  char=$(wc -c < "$a")

  # Print the results
  echo "File: $a"
  echo "Words: $word"
  echo "Lines: $line"
  echo "Characters: $char"
  echo "-------------------------"
}

# Loop through all command-line arguments
for i in "$@"; do
  if [ -f "$i" ]; then  # Check if the file exists
    fun "$i"
  else
    echo "File not found or not a regular file: $i"
  fi
done
