# Day 10 - Loops and Basic Security Checks

## Project Overview

This project demonstrates the use of Bash loops for automation and basic Linux security monitoring commands.

The exercises include:

- Iterating through files using `for` loops
- Repeating tasks using `while` loops
- Checking file existence
- Generating file hashes
- Viewing listening network ports

These are common tasks performed by Linux Administrators, DevOps Engineers, and Cloud Security Engineers.

---

# Exercise 1: For Loop

## Objective

Loop through files and perform actions automatically.

### Example

```bash
for file in *.txt; do
    echo "Found File"
done
```

### Output

```text
Found File
```

---

# Exercise 2: File Validation Inside Loop

## Objective

Check whether files exist before processing them.

### Example

```bash
for file in *.txt; do
    if [ -f "$file" ]; then
        echo "$file Exist"
    fi
done
```

### Output

```text
file.txt Exist
```

---

# Exercise 3: While Loop

## Objective

Repeat a task until a condition becomes false.

### Example

```bash
count=1

while [ $count -le 3 ]; do
    echo "Check Number $count"
    count=$((count+1))
done
```

### Output

```text
Check Number 1
Check Number 2
Check Number 3
```

---

# Exercise 4: File Integrity Check

## Objective

Generate a SHA256 hash of a system file.

### Command

```bash
sha256sum /etc/passwd
```

### Example Output

```text
3d88f2fec344b502639385d0f78427e3...
```

### Why It Matters

Hashing helps:

- Verify file integrity
- Detect unauthorized changes
- Support security monitoring

---

# Exercise 5: Network Port Monitoring

## Objective

View active listening ports and services.

### Command

```bash
ss -tulnp
```

### Information Displayed

- TCP Ports
- UDP Ports
- Listening Services
- Local Addresses
- Running Processes

### Why It Matters

Security teams use this command to:

- Detect unexpected services
- Monitor exposed ports
- Investigate suspicious activity
- Audit systems

---

# Concepts Practiced

- Bash Loops
- for Loop
- while Loop
- Conditional Statements
- File Handling
- SHA256 Hashing
- Network Monitoring
- Linux Security Basics

---

# Cloud Security Relevance

These skills are useful for:

- Security Monitoring
- Incident Response
- Log Analysis
- Infrastructure Auditing
- Vulnerability Assessment
- Cloud Administration

---

# Skills Gained

✅ Automation with Loops

✅ File Validation

✅ Integrity Verification

✅ Network Visibility

✅ Linux Security Fundamentals

---

# Project Status

✅ Completed Successfully

### Tasks Completed

| Task | Status |
|--------|--------|
| For Loop Practice | ✅ |
| File Check Loop | ✅ |
| While Loop Practice | ✅ |
| SHA256 Integrity Check | ✅ |
| Network Port Monitoring | ✅ |

---

# Author

Sri Gayathri

BCA Student | Linux Enthusiast | Future Cloud Security Engineer

Currently learning:

- Linux
- Bash Scripting
- Python
- Networking
- Cloud Security
