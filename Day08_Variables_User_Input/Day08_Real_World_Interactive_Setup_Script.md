# ⚙️ Day 8 — Interactive Setup Script with Safety Checks

---

## 📌 Overview
In this project, I created an interactive Bash setup script that:
- accepts user input,
- uses environment variables,
- performs safe file operations,
- and handles errors gracefully.

This simulates a real-world deployment/setup script.

---

## 📜 Script Used

### setup.sh
```bash
#!/bin/bash
set -e

echo "Starting setup..."

# User Input
read -p "Enter your name: " name
echo "Hello $name"

# Environment Variable
echo "Your Goal is: $My_Goal"

# Safe file operation
cp config.txt backup/ || echo "Config file not found, skipping copy"
🛠 Steps Performed
📄 Create Script
nano setup.sh
🔐 Make Executable
chmod +x setup.sh
▶️ Run Script
./setup.sh
🧾 Output Example
Starting setup...
Enter your name: Sri Gayathri
Hello Sri Gayathri
Your Goal is: Cloud Security Engineer
Config file not found, skipping copy
Setup Scripting Completed

Key Learnings
Used read for user interaction
Accessed environment variables ($My_Goal)
Handled errors using ||
Used set -e for safer execution
Built a simple automation script

Outcome
✔ Built an interactive setup script
✔ Handled missing files safely
✔ Simulated real deployment workflow

echo "Setup Scripting Completed"
