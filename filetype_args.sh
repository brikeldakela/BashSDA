#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename1> <filename2> ..."
    exit 1
fi

for filename in "$@"; do
    if [ -e "$filename" ]; then
        if [ -f "$filename" ]; then 
            echo "$filename is a regular file"
        elif [ -d "$filename" ]; then
            echo "$filename is a directory."
        else
            echo "$filename is a different type of file."
        fi

        echo "Listing information for $filename"
        ls -l "$filename"
        echo

    else
        echo "$filename does not exists."
        echo
    fi
done