# 🔐 Day 5 — Mini Practice: File Security
---

## 📌 Overview
In this mini practice, I secured a sensitive file by applying Linux permissions and ownership controls. This simulates protecting confidential data such as API keys.

---

## 📂 File Created

### secret.txt
Contains sensitive data:
```bash
API_KEY = 987654
🛠 Steps Performed
📄 Create File
echo "API_KEY = 987654" > secret.txt
🔐 Check Permissions
ls -l secret.txt
🚫 Restrict Access
chmod 600 secret.txt
Owner: Read & Write
Others: No access
👑 Check Sudo Access
sudo -l
🔄 Change Ownership
sudo chown root:root secret.txt
✅ Verify Security
ls -l secret.txt
Completed Day 5 Mini Practice — Secured sensitive file using permissions and ownership.

Key Learnings
Secured sensitive data using chmod
Restricted unauthorized access
Used sudo for privilege escalation
Changed file ownership with chown
Understood the importance of protecting secrets

Outcome
Successfully:
Created a sensitive file
Restricted access using permissions
Transferred ownership to the root
Simulated real-world file security
