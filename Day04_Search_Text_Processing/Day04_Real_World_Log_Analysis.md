# Day 4 — Real-World Scenario: Analysing Server Errors

## 📌 Scenario
In this task, I analysed real system logs to identify frequent errors and failed operations. This simulates how cloud engineers and security analysts monitor systems.

---

## 📂 Logs Used

- `/var/log/syslog`
- `/var/log/auth.log`

---

## 🛠 Commands Used

### 🔍 Search for Errors in System Logs
```bash
sudo grep -a "error" /var/log/syslog
🔢 Count Total Errors
sudo grep -a "error" /var/log/syslog | wc -l
📊 Analyse Frequency of Errors
sudo grep -a "error" /var/log/syslog | sort | uniq -c
🔐 Check Authentication Failures
sudo grep -a "failed" /var/log/auth.log
🔢 Count Failed Login Attempts
sudo grep -a "failed" /var/log/auth.log | wc -l
🎯 Key Learnings
Used grep to extract important log data
Used wc to count occurrences
Used sort and uniq to analyse patterns
Understood how system logs record errors and failures
Learned how to investigate authentication issues
🚀 Outcome

Successfully:

Identified repeated system errors
Counted error occurrences
Analysed failed login attempts
Simulated real-world server monitoring
💡 Real-World Relevance

This task is important for:

Cloud Security Monitoring
Incident Detection
Debugging System Failures
Detecting Unauthorized Access
✅ Status

✔ Completed real-world log analysis using grep, wc, sort, and uniq.

📝 Final Output
echo "Analysed Logs and Identified frequent errors" > success_server_errors.txt
cat success_server_errors.txt
