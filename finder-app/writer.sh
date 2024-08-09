#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required - <filesdir> <searchstr>"
    exit 1
fi

# Assign arguments to variables
writefile="$1"
writestr="$2"

# Create the directory path if it does not exist
mkdir -p "$(dirname "$writefile")"

# Attempt to create the file and write the content
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create the file $writefile"
    exit 1
fi

echo "File created successfully with the content: $writestr"
