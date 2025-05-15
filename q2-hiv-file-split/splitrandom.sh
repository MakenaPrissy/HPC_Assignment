#!/bin/bash
# Get total line count (excluding header)
total_lines=$(grep -v "^>" HIV_ref_genome.fasta | wc -l)
header=$(grep "^>" HIV_ref_genome.fasta)

# Remove header and work with the sequence only
grep -v "^>" HIV_ref_genome.fasta > body.txt

# Generate 50 random numbers summing to $total_lines
python3 - << EOF > splits.txt
import random

total = $total_lines
parts = 50
splits = [1] * parts
for _ in range(total - parts):
    splits[random.randint(0, parts - 1)] += 1
for i, val in enumerate(splits, 1):
    print(f"part{i}.txt {val}")
EOF

# Split the file using the splits
start=1
while read line; do
    fname=$(echo $line | cut -d' ' -f1)
    count=$(echo $line | cut -d' ' -f2)
    end=$((start + count - 1))
    echo "$header" > "$fname"
    sed -n "${start},${end}p" body.txt >> "$fname"
    start=$((end + 1))
done < splits.txt

# Clean up
rm body.txt
