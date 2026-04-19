# ⚙️ Day 7 — Mini Practice: Bash Function Script

---

## 📌 Overview
In this mini practice, I created a Bash script to display system information and check whether a file exists. I tested the script with both existing and non-existing files.

---

## 📜 Script Used

### mini_info.sh
```bash
#!/bin/bash

check_file() {
    if [ -f "$1" ]; then
        echo "$1 Exists"
    else
        echo "$1 Does Not Exist"
    fi
}

echo "Date: $(date)"
echo "User: $(whoami)"
uptime

check_file file.txt
🛠 Steps Performed
📄 Create Script
nano mini_info.sh
🔐 Make Executable
chmod +x mini_info.sh
▶️ Run Script
./mini_info.sh
🧪 Testing
✅ Case 1: File Exists
Output:
file.txt Exists
❌ Case 2: File Deleted
rm file.txt
Output:
file.txt Does Not Exist

🎯 Key Learnings
Created a reusable function in Bash
Used conditional statement (if -f)
Passed the file as an argument to the function
Tested both success and failure cases
Executed script using ./

Outcome
Successfully:
Built a functional Bash script
Validated script behaviour with different scenarios
Practised real-world script testing
Status
✔ Completed Day 7 Mini Practice — Bash script with function and testing scenarios.
