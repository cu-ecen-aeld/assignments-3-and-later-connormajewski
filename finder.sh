#!/bin/bash
# Usage: ./finder.sh <directory> <file>
# check that number of arguments is correct.

if [[ $# -ne 2 ]];
then
        echo "Incorrect Usage: ./finder.sh <directory> <file>."
        exit 1
else
        if [ -d $1 ];
        then
                while IFS= read -r -d '' file; do
                        lineCount=$(grep -c $2 "$file")
                        finalLineCount=$(($finalLineCount + $lineCount))
                done <  <(find $1 -type f -print0)
                fileCount=$(find $1 -type f | wc -l)
                echo "The number of files are "$fileCount" and the number of matching lines are "$finalLineCount
                exit 0
        else
                echo "Directory not found."
                exit 1
        fi
fi
