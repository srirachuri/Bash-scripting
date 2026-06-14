# Day 10 - Basic Server Security Audit Script

## Project Overview

This project automates a basic server security audit using Bash scripting.

The script performs:

- User and date collection
- File integrity verification using SHA256 hashes
- Read permission validation
- Open port enumeration
- Basic security reporting

The goal is to simulate the type of checks performed by Linux Administrators, DevOps Engineers, and Cloud Security Analysts.

---

## Script

```bash
#!/bin/bash

echo "BASIC SECURITY AUDIT"
echo "Date: $(date)"
echo "User: $(whoami)"
echo "--------------------------------"

echo "File Integrity Check (.txt files)"

for file in *.txt; do
    if [ -f "$file" ] && [ -r "$file" ]; then
        sha256sum "$file"
    else
        echo "Skipping $file (no read permission)"
    fi
done

echo "--------------------------------"
echo "Open Ports on Server"

ss -tulnp

echo "--------------------------------"
echo "Audit Completed"
```

---

## Features

### System Information Collection

Displays:

- Current date and time
- Current logged-in user

### File Integrity Verification

Calculates SHA256 hashes for readable text files.

Benefits:

- Detect unauthorized changes
- Verify file integrity
- Support security investigations

### Permission Validation

Checks:

```bash
-r "$file"
```

before attempting to access files.

Benefits:

- Prevents script failures
- Handles permission issues safely

### Network Port Audit

Lists active:

- TCP Ports
- UDP Ports
- Listening Services
- Open Connections

using:

```bash
ss -tulnp
```

Benefits:

- Detect exposed services
- Identify unnecessary open ports
- Improve server visibility

---

## Example Output

```text
BASIC SECURITY AUDIT

Date: Mon Jan 12 22:57:56 IST 2026
User: sri

--------------------------------

File Integrity Check (.txt files)

d9c2cdd3eac6a713ea9754a0f1764...
dns_a.txt

--------------------------------

Open Ports on Server

tcp LISTEN 0 128 0.0.0.0:22
tcp LISTEN 0 511 0.0.0.0:80

--------------------------------

Audit Completed
```

---

## Concepts Practiced

- Bash Scripting
- For Loops
- Conditional Statements
- File Permission Checks
- SHA256 Hashing
- Linux Networking
- Open Port Enumeration
- Security Auditing

---

## Cloud Security Relevance

This project demonstrates foundational security operations skills:

### File Integrity Monitoring

Used to:

- Detect tampering
- Verify backups
- Monitor critical files

### Security Auditing

Used to:

- Review server configurations
- Verify system state
- Support compliance checks

### Network Visibility

Used to:

- Discover running services
- Detect attack surfaces
- Identify unnecessary exposure

---

## Skills Gained

✅ Bash Automation

✅ File Integrity Checking

✅ Permission Validation

✅ Network Port Monitoring

✅ Security Reporting

✅ Linux Administration

---

## Project Status

Completed Successfully ✅

### Audit Tasks Performed

| Task | Status |
|--------|--------|
| Date & User Collection | ✅ |
| File Integrity Check | ✅ |
| Permission Validation | ✅ |
| SHA256 Hashing | ✅ |
| Open Port Enumeration | ✅ |
| Security Audit Report | ✅ |

---

## Future Improvements

- Export audit results to a log file
- Generate audit reports automatically
- Monitor system users
- Check failed login attempts
- Scan for world-writable files
- Email audit reports

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
- Security Automation
