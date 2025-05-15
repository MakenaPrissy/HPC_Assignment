#!/bin/bash
# sum of first 1o million integers
start=$(date +%s.%N)

sum=0
for (( i=1; i<=10000000; i++ ))
do
    sum=$((sum + i))
done

end=$(date +%s.%N)
runtime=$(echo "$end - $start" | bc)

echo "Bash Sum: $sum"
echo "Execution Time: $runtime seconds"
