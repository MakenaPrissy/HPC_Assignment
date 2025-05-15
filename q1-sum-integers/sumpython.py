# sum of first 10 million integers using python
import time
start = time.time()

total = sum(range(1, 10000001))

end = time.time()
runtime = end - start

print(f"Python Sum: {total}")
print(f"Execution Time: {runtime:.6f} seconds")
