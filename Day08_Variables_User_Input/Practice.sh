# ⚙️ Day 8 — Mini Practice: Interactive Bash Script

---

## 📌 Overview
In this mini practice, I built a simple interactive Bash script that:
- takes user input,
- uses variables,
- prints environment information,
- and handles command errors.

---

## 📜 Script Used

### day8_mini.sh
```bash
#!/bin/bash
set -e

# Variable
goal="Cloud Security Engineer"

# User Input
read -p "Enter your name: " name
echo "Welcome $name"

# Environment variables
echo "Your goal is: $goal"
echo "Your PATH is: $PATH"

# Error handling example
cp not_exist.txt backup/ || echo "Copy failed"

# Conditional execution
mkdir backup && echo "Created Folder"
🛠 Steps Performed
📄 Create Script
nano day8_mini.sh
🔐 Make Executable
chmod +x day8_mini.sh
▶️ Run Script
./day8_mini.sh
🧾 Output Example
Enter your name: Sri Gayathri
Welcome Sri Gayathri
Your goal is: Cloud Security Engineer
Your PATH is: /usr/local/sbin:...

Copy failed
Created Folder

 Key Learnings
Used variables for configuration
Took user input using read
Printed environment variables ($PATH)
Handled errors using ||
Used set -e for safer script execution
Used && for conditional command execution

 Outcome
Successfully:
Built an interactive Bash script
Handled failures gracefully
Combined multiple concepts into one script

Status
✔ Completed Day 8 Mini Practice — Interactive Bash script with variables, input, and error handling.
