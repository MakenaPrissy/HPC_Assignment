# HPC Assignment – Eneza Data Science Internship

This repository contains hands-on HPC (High-Performance Computing) assignments for the Eneza Data Science Internship Program.  
Each section includes scripts, results, and documentation for the assigned tasks.

---

## Directory Layout

```bash
HPC_Assignment/
├── q1-sum-integers/
│   ├── sumInt.sh
│   └── sumpython.py
│    
├── q2-hiv-file-split/
│   ├── HIV_ref_genome.fasta
│   ├── splitrandom.sh
│   ├── countlines.sh
│   ├── count_nucleotides.sh
│   ├── HighestGC_Content.sh
│   ├── consolidate_results.sh
│   ├── part1.txt ... part50.txt
│   ├── line_counts.txt
│   ├── nucleotide_counts_summary.txt
│   └── consolidated_summary.csv
│   
```
---

# Question 1: Sum of First 10 Million Integers
## Scripts
- sumInt.sh: Bash script
- sumpython.py: Python script

**Bash Script**  

![image](https://github.com/user-attachments/assets/eb21c617-0b87-423a-b4f0-be96ba03dbde)  

**Python Script**  

![image](https://github.com/user-attachments/assets/1648fe32-3998-4be7-ad2d-5e189c5d2d87)  

**Output Comparison**  

| Language | Execution Time | Result         |
| -------- | -------------- | -------------- |
| Bash     | 105.211142308s          | 50000005000000 |
| Python   | 0.294275s          | 50000005000000 |

Python is significantly faster due to optimized native functions. Bash loops are slower with large iterations.  

---
# Question 2: HIV Reference Genome File Split
## Downloading the file to perform tasks on

![image](https://github.com/user-attachments/assets/180103b3-564c-4241-b354-e605d7f93c91)  

### Task 1: Splitting the file into 50 Random Parts  
- Script: splitrandom.sh

![image](https://github.com/user-attachments/assets/67e36f4c-e8f9-42df-a014-5e4f727ee906)  

### Task 2: Count Lines in Each File
- Script: countlines.sh
- Output: (A screenshot of part of the output)

![image](https://github.com/user-attachments/assets/de150e78-4eb4-4e9c-adfc-b1a0aac78c15)  

### Task 3:  Count Nucleotides in Each File
- Script: count_nucleotides.sh  

![image](https://github.com/user-attachments/assets/2012bdea-e922-42fa-a952-d8e22e94fc13)  

- The results were saved in a summary file named nucleotide_counts_summary.txt, and this is a screenshot of the output

 ![image](https://github.com/user-attachments/assets/e54c4c60-5d7f-4019-a877-2a6ccd40dfff)

### Task 4: File with Highest GC Content
- Script: HighestGC_Content.sh

- Output printed to terminal:

![image](https://github.com/user-attachments/assets/43a02f49-99a1-40f1-9811-5a954d7a6c03)  

### Task 5: Combine Results  
Script to consolidate all outputs into a single CSV file.  
Consolidated CSV file includes columns for:  
- File Name  
- Line Count  
- Total Nucleotides  
- Counts of A, T, C, G  
- GC Content (%)

**Script:** consolidate_results.sh

![image](https://github.com/user-attachments/assets/fd6ac930-aefd-4fe2-bd82-545ad7b58da3)  

**Output:** consolidated_summary.csv  

![image](https://github.com/user-attachments/assets/aa876cd9-05ff-4508-ba8f-94dc5781fcf2)


 ---  
 ## N/B: Setup and Organization  
 
Before compressing the file, directories were created to organize scripts and outputs for each question:  

![image](https://github.com/user-attachments/assets/100939de-a458-45b1-80f6-38f11eec2dc0)  

![image](https://github.com/user-attachments/assets/87a2f769-6068-4c15-982a-afbbe62e78f7)

 # Question 3: Compression & File Transfer  
 **Compression :** 

![image](https://github.com/user-attachments/assets/47903be9-39d4-4a81-b6ec-6d23289a6e96)  

- Compressed file is highlighted in red:  

![image](https://github.com/user-attachments/assets/16def003-e47f-48ac-b58f-e69dd999ac04)  

**Transfer of compressed file to Local system :**  
- Used scp method:

![image](https://github.com/user-attachments/assets/94c7bf18-2a12-4e3a-a52b-acc6d4bbea72)  





