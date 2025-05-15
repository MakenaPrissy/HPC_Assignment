#!/bin/bash

max_gc=0
max_file=""

for file in part*.txt; do
    # Extract only sequence lines (skip headers)
    seq=$(grep -v "^>" "$file" | tr -d '\n')

    # Count nucleotides
    a=$(echo "$seq" | grep -o "A" | wc -l)
    t=$(echo "$seq" | grep -o "T" | wc -l)
    c=$(echo "$seq" | grep -o "C" | wc -l)
    g=$(echo "$seq" | grep -o "G" | wc -l)

    total=$((a + t + c + g))
    gc=$((g + c))

    # Avoid division by zero
    if [ $total -gt 0 ]; then
        gc_content=$(awk "BEGIN { printf \"%.2f\", ($gc / $total) * 100 }")
        
        # Update max GC content
        higher=$(awk "BEGIN {print ($gc_content > $max_gc)}")
        if [ "$higher" -eq 1 ]; then
            max_gc=$gc_content
            max_file=$file
        fi
    fi
done

echo "File with highest GC content: $max_file ($max_gc%)"

