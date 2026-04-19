#  Day 7 — First Bash Script

---

## 📌 Overview
On Day 7, I created and executed my first Bash script. The script checks if a file exists and displays system information such as date, user, and uptime.

---

## 📜 Script Created

### info.sh
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

check_file test.txt
🛠 Steps Performed
📄 Create Script
nano info.sh
🔐 Make Script Executable
chmod +x info.sh
▶️ Run Script
./info.sh
🧾 Output

Example output:

Date: Wed Jan 7 ...
User: sri-gayathri-rachuri
22:57:30 up ...
test.txt Exists

Key Learnings
Created a Bash script using #!/bin/bash
Used functions in Bash (check_file)
Used condition (if -f) to check file existence
Used system commands inside the script:
date
whoami
uptime
Made script executable using chmod +x

 Outcome
Successfully:
Wrote first Bash script
Used the reusable function
Automated system information check
Executed script successfully

✅ Status

✔ Completed Day 7 — Created and executed the first Bash script with a function and system info.
