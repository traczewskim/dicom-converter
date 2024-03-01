#!/bin/bash

# Check if the input directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input-dir>"
    exit 1
fi

# Get the input directory from the first command-line argument
input_dir="$1"

# Check if the input directory exists
if [ ! -d "$input_dir" ]; then
    echo "Directory $input_dir does not exist."
    exit 1
fi

# Change directory to the input directory
cd "$input_dir" || exit 1
mkdir "jpg"
# Loop through each file in the directory
for file in *; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Run your command on each file
        dcmj2pnm +oj "$file" "jpg/${file%.dcm}.jpg"
        # This command converts DICOM to JPEG using dcmj2pnm
        # "${file%.dcm}.jpg" removes the .dcm extension and replaces it with .jpg
        echo "Converted $file to JPEG"
    fi
done

echo "Conversion complete."
