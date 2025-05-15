#!/bin/bash

# Output CSV header
echo "File Name,Line Count,Total Nucleotides,A,T,C,G,GC Content (%)" > consolidated_summary.csv

for file in part*.txt; do
    # Line count (excluding FASTA header)
    line_count=$(grep -v "^>" "$file" | wc -l)

    # Get only sequence (remove header and newlines)
    seq=$(grep -v "^>" "$file" | tr -d '\n')

    # Nucleotide counts
    a=$(echo "$seq" | grep -o "A" | wc -l)
    t=$(echo "$seq" | grep -o "T" | wc -l)
    c=$(echo "$seq" | grep -o "C" | wc -l)
    g=$(echo "$seq" | grep -o "G" | wc -l)
    total=$((a + t + c + g))

    # Calculate GC content
    if [ $total -gt 0 ]; then
        gc_content=$(awk "BEGIN { printf \"%.2f\", (($c + $g) / $total) * 100 }")
    else
        gc_content="0.00"
    fi

    # Append results to CSV
    echo "$file,$line_count,$total,$a,$t,$c,$g,$gc_content" >> consolidated_summary.csv
done

