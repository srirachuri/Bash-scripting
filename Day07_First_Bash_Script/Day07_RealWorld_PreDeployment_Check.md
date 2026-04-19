# 🚀 Day 7 — Real-World Scenario: Pre-Deployment System Health Check Script

---

## 📌 Scenario
Before deploying an application, it is important to verify system health and ensure the required files exist.  
In this task, I created a Bash script to automate pre-deployment checks.

---

## 📜 Script Created

### pre_check.sh
```bash
#!/bin/bash

check_file() {
    if [ -f "$1" ]; then
        echo "$1 Exists"
    else
        echo "$1 is Missing"
    fi
}

echo "===== PRE-DEPLOYMENT CHECK ====="
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Uptime: $(uptime)"

echo "------------------------"

check_file file_test.txt
check_file file_secret.txt
🛠 Steps Performed
📄 Create Script
nano pre_check.sh
🔐 Make Executable
chmod +x pre_check.sh
▶️ Execute Script
./pre_check.sh
🧾 Output

Example:

===== PRE-DEPLOYMENT CHECK =====
Date: Thu Jan 8 ...
User: sri-gayathri-rachuri
Uptime: ...

file_test.txt is Missing
file_secret.txt Exists

Key Learnings
Created a reusable Bash function
Automated system health checks
Validated required files before deployment
Used system commands (date, whoami, uptime)
Built structured output for readability

🚀 Outcome
Successfully:
Automated pre-deployment checks
Detected missing required files
Displayed system health information
Built a real-world DevOps utility script

Status
✔ Completed Pre-Deployment System Health Check Script using Bash automation.
