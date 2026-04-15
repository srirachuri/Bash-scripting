# 📁 Day 02 — File & Directory Operations

## 🎯 Objective
Learn how to create, copy, move, and delete files and directories using Bash commands.

## 📌 Commands Practiced

### 🔹 Create Directory
```
mkdir bash_day2
cd bash_day2
🔹 Create File
echo "Hello Bash" > test.txt
🔹 Copy File
mkdir backup
cp test.txt backup/
🔹 Move / Rename File
mv backup/test.txt backup/test_backup.txt
🔹 Delete File & Directory
rm backup/test_backup.txt
rmdir backup
