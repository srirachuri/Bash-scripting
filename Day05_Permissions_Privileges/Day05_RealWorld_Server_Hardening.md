# 🛡️ Day 5 — Real-World Scenario: Server Hardening After Deployment

---

## 📌 Scenario
After deploying a server, I performed basic security hardening to protect sensitive data, restrict access, and enforce proper permissions.

---

## 📂 Files Secured

### user-secret.txt
Contains sensitive data:
```bash
API_KEY=sk_live_********
🛠 Steps Performed
📄 Create Sensitive File
echo "API_KEY=sk_live_********" > user-secret.txt
🔐 Restrict File Permissions
chmod 600 user-secret.txt
Owner: Read & Write
Others: No access
👑 Change Ownership to Root
sudo chown root:root user-secret.txt
🔑 Secure SSH Private Key
chmod 600 ~/.ssh/id_ed25519

👉 Ensures only the owner can access the private key

🔍 Verify Root Access
sudo ls /root
👤 Switch to Root User
sudo -i
whoami

👉 Confirmed root access

Key Learnings
Secured sensitive files using strict permissions
Applied the principle of least privilege
Protected SSH private keys
Used root privileges responsibly
Understood post-deployment hardening steps

Outcome
Successfully:
Secured confidential data
Restricted unauthorized access
Hardened system using permissions and ownership
Simulated real-world cloud/server security practices

Status
✔ Completed server hardening using chmod, chown, and secure SSH practices.

Final Output
echo "I Completed Hardened Server by Securing File Permissions and Ownership Successfully!" > success_hardening_server.txt
cat success_hardening_server.txt
