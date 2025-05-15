#!/bin/bash
printf "File Name\tLine Count\n" > line_counts.txt
for file in part*.txt; do
    count=$(wc -l < "$file")
    printf "%s\t%d\n" "$file" "$count" >> line_counts.txt
done

cat line_counts.txt
