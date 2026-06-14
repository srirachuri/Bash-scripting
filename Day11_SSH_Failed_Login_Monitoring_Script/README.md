# Day 11 - SSH Failed Login Monitoring Script

## Project Overview

This Bash script monitors SSH authentication logs and reports failed login attempts.

The script helps security administrators identify suspicious login activity by:

- Checking authentication logs
- Counting failed login attempts
- Displaying recent failed login events
- Generating a simple security report

This is a common task in Linux Administration, SOC Operations, and Cloud Security monitoring.

---

## Script

```bash
#!/bin/bash

LOG_FILE="/var/log/auth.log"

echo "SSH Failed Login Monitor"
echo "Date: $(date)"
echo "--------------------------------"

if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found"
    exit 1
fi

FAILED_COUNT=$(grep -i "failed password" "$LOG_FILE" | wc -l)

echo "Total failed SSH attempts: $FAILED_COUNT"
echo "Last 5 failed attempts"

grep -i "failed password" "$LOG_FILE" | tail -n 5
```

---

## Features

### Log File Validation

Checks whether:

```bash
/var/log/auth.log
```

exists before processing.

### Failed Login Detection

Searches for:

```bash
failed password
```

inside authentication logs.

### Failed Attempt Counter

Counts total failed login attempts using:

```bash
wc -l
```

### Recent Activity Review

Displays the latest failed login entries using:

```bash
tail -n 5
```

---

## Example Output

```text
SSH Failed Login Monitor

Date: Tue Jan 20 04:11:57 IST 2026

--------------------------------

Total failed SSH attempts: 0

Last 5 failed attempts
```

---

## Cron Job Automation

The script was configured for automatic execution using Cron.

Example:

```bash
*/5 * * * * /home/user/bash_project/ssh_log_monitor.sh
```

This runs the script every 5 minutes.

---

## Concepts Practised

- Bash Scripting
- Log Monitoring
- grep
- wc
- tail
- Conditional Statements
- Cron Jobs
- Security Automation

---

## Security Relevance

This project demonstrates foundational SOC and Cloud Security skills:

### Authentication Monitoring

Detects failed login attempts.

### Threat Detection

Identifies possible:

- Brute-force attacks
- Password spraying
- Unauthorised access attempts

### Security Automation

Automates monitoring using Cron.

### Log Analysis

Processes Linux authentication logs for security events.

---

## Skills Gained

✅ Linux Log Analysis

✅ Bash Automation

✅ SSH Monitoring

✅ Security Reporting

✅ Cron Job Scheduling

✅ Basic SOC Monitoring

---

## Future Improvements

- Email alerts for excessive failures
- IP address extraction
- Failed login threshold alerts
- Automatic IP blocking
- Daily security reports
- Integration with SIEM tools

---

## Project Status

Completed Successfully ✅

### Tasks Completed

| Task | Status |
|--------|--------|
| Authentication Log Check | ✅ |
| Failed Login Detection | ✅ |
| Failed Attempt Count | ✅ |
| Recent Event Review | ✅ |
| Cron Automation | ✅ |

---

## Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Learning Path:

- Linux Administration
- Bash Scripting
- Python
- Networking
- Cloud Security
- Security Operations (SOC)
