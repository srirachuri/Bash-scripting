# Day 11 (Add-On) - SSH Log Monitoring with Alerts and Cron Automation

## Project Overview

This project extends the SSH Failed Login Monitoring Script by adding:

- Alert generation
- Failed login thresholds
- Cron automation
- Continuous security monitoring
- Log collection

The script monitors authentication logs and automatically generates alerts when failed SSH login attempts exceed a defined threshold.

This simulates a basic Security Operations Centre (SOC) monitoring workflow.

---

## Script

```bash
#!/bin/bash

LOG_FILE="/var/log/auth.log"
THRESHOLD=5
ALERT_LOG="$HOME/bash_project/alerts.log"

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

# Alert Condition

if [ "$FAILED_COUNT" -gt "$THRESHOLD" ]; then

MESSAGE="ALERT: $FAILED_COUNT SSH failed login attempts detected on $(hostname) at $(date)"

echo "$MESSAGE"

echo "$MESSAGE" >> "$ALERT_LOG"

fi
```

---

## Features

### Authentication Log Monitoring

Monitors:

```bash
/var/log/auth.log
```

for failed SSH login attempts.

### Failed Login Counter

Calculates:

```bash
FAILED_COUNT
```

using:

```bash
grep
wc -l
```

### Recent Login Activity

Displays:

```bash
tail -n 5
```

failed login events.

### Alert Generation

Creates an alert whenever:

```bash
FAILED_COUNT > THRESHOLD
```

### Alert Logging

Stores alerts in:

```bash
alerts.log
```

for future investigation.

---

## Cron Automation

The script was configured using Cron.

### View Cron Jobs

```bash
sudo crontab -l
```

### Cron Entry

```bash
*/5 * * * * /home/sri-gayathri-rachuri/bash_project/ssh_log_monitor.sh >> /home/sri-gayathri-rachuri/bash_project/cron.log 2>&1
```

### Schedule

Runs every 5 minutes.

### Output

Results are automatically written to:

```bash
cron.log
```

---

## Example Output

```text
SSH Failed Login Monitor

Date: Thu Jan 29 15:50:02 IST 2026

--------------------------------

Total failed SSH attempts: 0

Last 5 failed attempts
```

---

## Security Relevance

This project demonstrates practical SOC monitoring concepts.

### Detects

- Failed SSH logins
- Brute-force attempts
- Password spraying attacks
- Unauthorized access attempts

### Provides

- Automated monitoring
- Alert generation
- Scheduled execution
- Security logging

---

## Concepts Practiced

- Bash Scripting
- Log Analysis
- SSH Monitoring
- grep
- wc
- tail
- Conditional Statements
- Alerting
- Cron Jobs
- Security Automation

---

## Skills Gained

✅ Linux Log Monitoring

✅ SSH Security Monitoring

✅ Alert Generation

✅ Threshold-Based Detection

✅ Cron Automation

✅ Security Operations Fundamentals

---

## Future Improvements

- Email notifications
- Slack alerts
- Discord alerts
- IP extraction
- Automatic IP blocking
- Daily security reports
- Integration with SIEM tools

---

## Project Status

Completed Successfully ✅

### Tasks Completed

| Task | Status |
|--------|--------|
| SSH Log Monitoring | ✅ |
| Failed Login Counting | ✅ |
| Threshold Detection | ✅ |
| Alert Generation | ✅ |
| Alert Logging | ✅ |
| Cron Automation | ✅ |

---

## Project Structure

```text
Day11_Alerts_Cron_Automation/
│
├── ssh_log_monitor.sh
├── alerts.log
├── cron.log
├── success_alerts_cron.txt
└── README.md
```

---

## Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Currently Learning:

- Linux Administration
- Bash Scripting
- Python
- Networking
- Cloud Security
- Security Operations (SOC)
- Security Automation
