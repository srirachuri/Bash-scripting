# REAL-WORLD SCENARIO — DAY 6
## ⚠️ Server Is Slow / Almost Down

## 📝 Overview
This log documents a simulated real-world scenario where a server is experiencing severe performance degradation. The objective of this exercise was to systematically investigate the root cause of the slowness by checking disk utilization, identifying resource-hogging processes, and verifying critical services. 

## 🛠️ Commands Covered
* `df`: Check overall disk space availability.
* `du`: Check the size of specific directories.
* `ps`: Report process status (with advanced sorting flags).
* `top`: Live, interactive system monitoring.
* `grep`: Filter output for specific services.
* `head`: Output the first part of files/results.

---

## 🚀 Step-by-Step Investigation

### 1. Check for Disk Exhaustion
A very common cause of server slowness or failure is running out of disk space, particularly if logs are growing out of control. The first step was to check overall usage and then target the log directory.

```bash
# Check overall file system disk space usage
df -h

# Check the specific disk usage of the system logs directory
sudo du -sh /var/log
🔐 Restricted File Permissions
chmod 600 user-secret.txt
Only the owner can read/write
No access for others
👑 Changed Ownership to Root
sudo chown root:root user-secret.txt

👉 Prevents normal users from accessing sensitive data

🔑 Secured SSH Key
chmod 600 ~/.ssh/id_ed25519

👉 Ensures private key is not exposed

👑 Verified Root Access
sudo -i
whoami
🔍 Checked Restricted Directory
sudo ls /root

Key Learnings
Secured sensitive files using strict permissions
Protected secrets by assigning root ownership
Understood the importance of SSH key security
Practised privilege escalation using sudo
Learned basic server hardening techniques

Outcome
Successfully:
Secured confidential data
Restricted unauthorized access
Hardened server after deployment
Applied real-world Linux security practices
