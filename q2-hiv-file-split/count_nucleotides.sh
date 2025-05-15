#!/bin/bash

# Output file
echo -e "File Name\tA\tT\tC\tG" > nucleotide_counts_summary.txt

# Loop through each split file
for file in part*.txt; do
    # Remove the header line(s) and concatenate the sequence
    seq=$(grep -v "^>" "$file" | tr -d '\n')

    # Count nucleotides
    a_count=$(echo "$seq" | grep -o "A" | wc -l)
    t_count=$(echo "$seq" | grep -o "T" | wc -l)
    c_count=$(echo "$seq" | grep -o "C" | wc -l)
    g_count=$(echo "$seq" | grep -o "G" | wc -l)

    # Append to summary file
    echo -e "$file\t$a_count\t$t_count\t$c_count\t$g_count" >> nucleotide_counts_summary.txt
done
