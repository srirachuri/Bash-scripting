# 🧠 Day 8 — Variables & User Input

---

## 📌 Overview
On Day 8, I practised using variables, taking user input, handling errors, and working with environment variables in Bash.

---

## 🛠 Concepts Covered

### 🔤 Variables
```bash
name="Sri Gayathri"
city="Vijayawada"

echo "$name"
echo "I live in $city"
⌨️ User Input
read -p "Enter Your Name: " name
echo "Welcome $name"
⚠️ Error Handling
cp test.txt /backup/ || echo "Copy Failed"

👉 If file doesn't exist → shows custom error message

🛑 Exit Status
echo $?
0 → Success
Non-zero → Error
📂 Conditional Execution
mkdir backup && echo "Backup Folder Created"

👉 Runs the next command only if the previous succeeds

🌍 Environment Variables
echo $PATH
📌 Custom Environment Variable
export MY_GOAL="Cloud Security Engineer"
env | grep MY_GOAL

Key Learnings
Created and used variables
Took input from the user
Handled command errors using ||
Checked command status using $?
Used environment variables
Created a custom environment variable

Outcome
Successfully:
Built interactive Bash commands
Handled errors gracefully
Used environment variables for configuration

Status
✔ Completed Day 8 — Variables, user input, error handling, and environment variables.
