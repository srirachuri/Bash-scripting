# Day 12 - Automated Backup and Service Validation

## Project Overview

This project automates file backups using Bash scripting and Cron jobs.

The script creates compressed backups of important files and directories, stores them with timestamps, and supports automated execution through Cron.

Additionally, basic service validation was performed using network connectivity and HTTP response checks.

---

## Features

### Automated Backup Creation

Creates compressed backup archives using:

```bash
tar -czf
```

Benefits:

- Reduces storage usage
- Preserves directory structure
- Simplifies recovery

---

### Timestamped Backup Files

Backup filenames automatically include the current date.

Example:

```text
backup_2026-02-09.tar.gz
```

This helps maintain backup history.

---

### Backup Directory Management

Creates a dedicated backup location:

```bash
mkdir -p backup
```

Benefits:

- Organized storage
- Easier recovery
- Better backup management

---

### Cron Automation

The backup script is scheduled automatically using Cron.

Example:

```bash
0 2 * * * /home/user/bash_project/backup.sh >> /home/user/bash_project/backup.log 2>&1
```

This runs the backup every day at 2:00 AM.

---

### Backup Logging

Cron output is stored in:

```bash
backup.log
```

Benefits:

- Track backup execution
- Troubleshoot failures
- Maintain audit records

---

### Service Validation

Network connectivity testing was performed using:

```bash
nc -zv google.com 80
```

HTTP response validation:

```bash
curl -I https://google.com
```

These checks verify:

- Internet connectivity
- DNS resolution
- HTTP service availability

---

## Backup Script

```bash
#!/bin/bash

BACKUP_DIR="$HOME/bash_project/backup"
SOURCE_DIR="$HOME/bash_project/data"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/backup_$(date +%F).tar.gz" "$SOURCE_DIR"

echo "Backup Completed: backup_$(date +%F).tar.gz"
```

---

## Example Output

```text
Backup Completed:
backup_2026-02-09.tar.gz
```

---

## Concepts Practised

- Bash Scripting
- File Archiving
- Compression
- Cron Jobs
- Automation
- Backup Management
- Network Testing
- Service Validation

---

## Cloud Security Relevance

This project demonstrates skills used in:

### Backup and Recovery

- Data protection
- Disaster recovery preparation
- Business continuity

### System Administration

- Automated maintenance
- Scheduled tasks
- Log monitoring

### Cloud Operations

- Backup automation
- Service availability checks
- Infrastructure monitoring

### Security Operations

- Recovery planning
- Availability validation
- Operational resilience

---

## Project Status

Completed Successfully ✅

### Tasks Completed

| Task | Status |
|--------|--------|
| Data Directory Creation | ✅ |
| Sample File Creation | ✅ |
| Tar Backup Creation | ✅ |
| Backup Script Automation | ✅ |
| Cron Scheduling | ✅ |
| Backup Logging | ✅ |
| Service Validation | ✅ |

---

## Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Current Learning:

- Linux Administration
- Bash Scripting
- Python
- Networking
- Cloud Security
- Automation
- Backup & Recovery
