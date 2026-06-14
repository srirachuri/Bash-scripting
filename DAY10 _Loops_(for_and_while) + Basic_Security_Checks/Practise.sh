# Day 10 - Mini Practice: Loops and Basic Security Monitoring

## Project Overview

This mini practice demonstrates how Bash loops can be used to automate repetitive security tasks.

The exercises include:

- Processing files using `for` loops
- Generating SHA256 hashes
- Running repeated security checks using `while` loops
- Monitoring active network ports

These skills are commonly used in Linux administration, DevOps, and Cloud Security environments.

---

# Task 1: File Discovery with For Loop

## Script

```bash
for file in *.txt; do
    echo "Found File"
done
```

## Output

```text
Found File
Found File
```

## Purpose

Automates file processing by looping through all text files in a directory.

---

# Task 2: File Hashing Automation

## Script

```bash
for file in *.txt; do
    echo "Hashing for $file"
    sha256sum "$file"
done
```

## Example Output

```text
Hashing for file.txt
f969c75b7e9c919bc5c7c6702cee5c8...

Hashing for success_day10.txt
4a472d9e386623b07ee7500d0717f11...
```

## Security Benefit

SHA256 hashes help:

- Verify file integrity
- Detect unauthorised modifications
- Support incident investigations
- Validate backups

---

# Task 3: Repeated Security Checks

## Script

```bash
count=1

while [ $count -le 3 ]; do
    echo "Security Check Iteration $count"
    count=$((count+1))
done
```

## Output

```text
Security Check Iteration 1
Security Check Iteration 2
Security Check Iteration 3
```

## Purpose

Simulates repeated monitoring tasks used in automated security scripts.

---

# Task 4: Network Port Monitoring

## Command

```bash
ss -tulnp
```

## Information Collected

- Active TCP ports
- Active UDP ports
- Listening services
- Local addresses
- Open network connections

## Security Benefit

This command helps identify:

- Running services
- Exposed ports
- Unexpected network activity
- Potential attack surfaces

---

# Concepts Practised

- Bash Scripting
- For Loops
- While Loops
- File Processing
- SHA256 Hashing
- Linux Security Monitoring
- Network Visibility
- Basic Automation

---

# Cloud Security Relevance

These skills are useful for:

- Security Operations (SOC)
- Linux Administration
- Cloud Infrastructure Monitoring
- Incident Response
- Security Auditing
- DevOps Automation

---

# Skills Gained

✅ Loop Automation

✅ File Integrity Verification

✅ Repeated Security Monitoring

✅ Network Port Analysis

✅ Linux Security Fundamentals

---

# Project Status

Completed Successfully ✅

## Tasks Completed

| Task | Status |
|--------|--------|
| File Discovery Loop | ✅ |
| SHA256 Hashing | ✅ |
| While Loop Practice | ✅ |
| Security Check Iterations | ✅ |
| Network Port Monitoring | ✅ |

---

# Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Currently Learning:

- Linux
- Bash Scripting
- Python
- Networking
- Cloud Security
