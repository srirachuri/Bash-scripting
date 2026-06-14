# Day 12 - Production Backup Automation with Verification, Retention & Alerts

## Project Overview

This project automates secure backups using Bash scripting and Cron.

The solution performs:

- Source directory validation
- Automated compressed backups
- Backup verification
- Backup size reporting
- Logging
- Retention cleanup
- Scheduled execution using Cron
- Service validation using HTTP checks

This project demonstrates production-style Linux automation practices commonly used by Linux Administrators, Cloud Engineers, and Cloud Security teams.

---

## Features

### 1. Source Validation

Before creating a backup, the script verifies that the source directory exists.

```bash
if [ ! -d "$SOURCE_DIR" ]
```

Benefits:

- Prevents invalid backups
- Detects configuration issues early
- Improves reliability

---

### 2. Automated Backup Creation

Creates compressed archives using:

```bash
tar czf
```

Example output:

```text
backup_2026-02-12.tar.gz
```

Benefits:

- Saves storage space
- Maintains directory structure
- Simplifies recovery

---

### 3. Backup Verification

The script validates backup creation and calculates archive size.

```bash
du -h "$BACKUP_FILE"
```

Benefits:

- Confirms successful backup
- Detects incomplete archives
- Improves operational confidence

---

### 4. Centralized Logging

All operations are recorded in:

```text
backup.log
```

Example log entries:

```text
Backup Started
Backup Successful
Old Backups Cleaned
Job Finished
```

Benefits:

- Auditing
- Troubleshooting
- Monitoring

---

### 5. Retention Policy

Old backups are automatically removed.

```bash
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7
```

Retention period:

```text
7 Days
```

Benefits:

- Storage optimization
- Automated cleanup
- Reduced maintenance

---

### 6. Cron Automation

Backup jobs run automatically through Cron.

Example:

```bash
0 2 * * * /home/user/backup.sh
```

Execution time:

```text
Daily at 2:00 AM
```

Benefits:

- Fully automated backups
- No manual intervention
- Consistent scheduling

---

### 7. Error Handling

Production-style scripting enabled using:

```bash
set -euo pipefail
```

Benefits:

- Stops on failures
- Detects unset variables
- Improves script reliability

---

### 8. Service Validation

Connectivity testing performed using:

```bash
curl -I https://google.com
```

Validated:

- DNS Resolution
- HTTPS Connectivity
- Internet Access

Example Response:

```text
HTTP/2 301
Location: https://www.google.com/
```

---

## Script Workflow

```text
Validate Source Directory
        ↓
Create Backup Directory
        ↓
Generate Compressed Backup
        ↓
Verify Backup
        ↓
Log Results
        ↓
Delete Old Backups
        ↓
Finish Job
```

---

## Technologies Used

- Ubuntu Linux
- Bash Scripting
- Tar
- Cron
- Curl
- Find
- Logging

---

## Sample Cron Job

```bash
0 2 * * * /home/user/backup.sh
```

Runs automatically every day at 2 AM.

---

## Cloud Security Relevance

This project demonstrates concepts used in:

### Backup & Recovery

- Disaster Recovery
- Data Protection
- Business Continuity

### Linux Administration

- Automation
- Scheduling
- Monitoring

### Cloud Operations

- Infrastructure Maintenance
- Automated Workflows
- Operational Reliability

### Security Operations

- Availability Protection
- Recovery Planning
- Audit Logging

---


## Learning Outcomes

After completing this project, I gained hands-on experience with:

- Linux Automation
- Backup Management
- Production Bash Scripting
- Cron Scheduling
- Logging and Monitoring
- Retention Policies
- Service Health Validation

---

## Project Status

Completed Successfully ✅

### Tasks Completed

| Task | Status |
|--------|--------|
| Source Validation | ✅ |
| Backup Creation | ✅ |
| Verification | ✅ |
| Logging | ✅ |
| Retention Policy | ✅ |
| Cleanup Automation | ✅ |
| Cron Scheduling | ✅ |
| Service Validation | ✅ |

---

## Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Current Focus:

- Linux Administration
- Bash Scripting
- Python
- Networking
- Cloud Security
- Automation
- DevSecOps Fundamentals
