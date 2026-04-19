# Day 4 — Mini Practice (Search & Text Processing)

## 📌 Overview
In this mini practice, I applied Linux text processing commands on a sample log file to simulate real-world log analysis.

---

## 📂 File Created

### file.txt
Contains sample log entries:
- error
- login failed
- warning
- login success

---

## 🛠 Commands Used

### 🔍 Search Errors

grep -i "error" file.txt
🔢 Count Total Lines
wc -l file.txt
🔗 Count Error Occurrences
grep -i "error" file.txt | wc -l
🔃 Sort File
sort file.txt
🔁 Remove Duplicates
uniq file.txt
🔢 Count Each Entry
sort file.txt | uniq -c
✏️ Replace Text
sed -i 's/error/ERROR/g' file.txt
