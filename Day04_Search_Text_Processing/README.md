
# DAY 4 — Search & Text Processing

## 📝 Overview
This repository/log documents Day 4 of Linux terminal practice, focusing on searching, filtering, and manipulating text files using built-in command-line tools. 

## 🛠️ Commands Covered
* `grep`: Search for patterns within files.
* `wc`: Word, line, character, and byte count.
* `sort`: Sort lines of text files.
* `uniq`: Report or omit repeated lines.
* `sed`: Stream editor for filtering and transforming text.
* `|` (Pipe): Pass the output of one command as input to another.

---

## 🚀 Step-by-Step Execution

### 1. Environment Setup
First, a directory was created for the day's tasks, and a sample text file was generated using `echo` with newline escape characters (`\n`).


mkdir bash_day4
cd bash_day4
echo -e "error\nlogin success\nerror\nwarning\nerror\nlogin failed\nwarning" > test.txt
cat test.txt
2. Searching and Counting Text
Used grep to find specific keywords and wc to count lines. The pipe (|) operator was used to combine them.

Bash
# Find all instances of "error"
grep "error" test.txt

# Count the total number of lines in the file
wc -l test.txt

# Count how many times the word "error" appears
grep "error" test.txt | wc -l
3. Sorting and Finding Unique Entries
Used sort to organise the data and uniq to filter/count duplicates. Note: uniq only detects adjacent duplicate lines, which is why sort is typically used right before it.

Bash
# Sort lines alphabetically
sort test.txt

# Sort lines and then count the unique occurrences of each line
sort test.txt | uniq -c
4. Real-World Application: Searching System Logs
Applied grep to actual system log files. The -a flag was used to treat binary files as text, and -i was used for case-insensitive searching.

Bash
# Search for "error" in system logs (treating as text)
grep -a "error" /var/log/syslog

# Search for "failed" in auth logs (case-insensitive)
grep -i "failed" /var/log/auth.log

# Force treating the auth log as text to view matches
grep -a "failed" /var/log/auth.log
5. In-Place Text Substitution
Used sed (Stream Editor) to permanently replace text inside the file without opening a text editor.

Bash
# Replace all instances of "error" with "WARNING" directly in the file
sed -i 's/error/WARNING/g' test.txt
cat test.txt
6. Mission Accomplished
Logged the completion of the day's tasks into a success file.

Bash
echo 'I Completed Day 4 Searched, Counted, and Edited files using grep, wc, sort, uniq, and sed.' > success_day4.txt && cat success_day4.txt
