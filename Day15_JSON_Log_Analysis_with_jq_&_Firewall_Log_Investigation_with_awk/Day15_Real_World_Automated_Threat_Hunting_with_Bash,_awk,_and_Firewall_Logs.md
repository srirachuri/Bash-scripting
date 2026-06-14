# Day 15 – Automated Threat Hunting with Bash, awk, and Firewall Logs

## Overview

This project simulates a basic Security Operations Center (SOC) workflow by automatically identifying suspicious IP addresses from firewall logs.

The script scans firewall events, detects rejected connections, extracts attacker IP addresses, removes duplicates, and generates a blacklist report.

This demonstrates how Bash automation can be used for security monitoring and threat hunting.

---

## Project Objectives

- Automate firewall log analysis
- Detect suspicious IP addresses
- Extract rejected connection attempts
- Generate a blacklist report
- Practice security automation with Bash
- Simulate SOC threat hunting workflows

---

## Technologies Used

- Ubuntu Linux
- Bash Scripting
- awk
- sort
- uniq
- Firewall Logs

---

## Project Structure

```text
.
├── firewall.log
├── threat_hunt.sh
├── blacklist.txt
└── README.md
```

---

## Threat Hunting Script

Created:

```bash
nano threat_hunt.sh
```

Made executable:

```bash
chmod +x threat_hunt.sh
```

Executed:

```bash
./threat_hunt.sh
```

---

## Script Workflow

### Step 1

Verify log file exists.

```bash
if [ ! -f "$LOG_FILE" ]; then
```

---

### Step 2

Search firewall logs for rejected connections.

```bash
awk '$5=="REJECT" {print $3}' firewall.log
```

---

### Step 3

Remove duplicate attacker IPs.

```bash
sort | uniq
```

---

### Step 4

Save results to a blacklist report.

```bash
blacklist.txt
```

---

### Step 5

Count detected attackers.

```bash
wc -l
```

---

## Sample Output

```text
Starting Threat Hunt on firewall.log...

Threat Detected!

Found 2 unique attacker IPs.

203.0.113.99
45.33.22.11
```

---

## Generated Blacklist

```text
203.0.113.99
45.33.22.11
```

---

## Skills Demonstrated

### Bash Scripting

- Variables
- Conditions
- File Validation
- Automation

### Log Analysis

- Firewall Monitoring
- Threat Detection
- Security Investigation

### Linux Tools

- awk
- sort
- uniq
- wc

### Security Operations

- Threat Hunting
- IOC Identification
- Blacklist Generation
- Incident Investigation

---

## Security Relevance

This project demonstrates tasks often performed by:

- SOC Analysts
- Cloud Security Engineers
- Security Analysts
- Incident Responders
- DevSecOps Engineers

Examples include:

- Detecting malicious IPs
- Investigating blocked traffic
- Building threat intelligence lists
- Monitoring firewall events
- Creating automated security workflows

---

## Learning Outcomes

Through this project, I learned:

- How to automate log analysis using Bash
- How to extract attacker IPs using awk
- How to remove duplicate indicators
- How to generate security reports
- How SOC teams automate repetitive investigations

---

## Project Status

Completed Successfully

### Checklist

| Task | Status |
|--------|--------|
| Create Firewall Log | ✅ |
| Build Threat Hunting Script | ✅ |
| Detect Rejected Connections | ✅ |
| Extract Attacker IPs | ✅ |
| Remove Duplicates | ✅ |
| Generate Blacklist | ✅ |
| Automate Investigation | ✅ |

---

## Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Current Learning Focus:

- Linux Administration
- Bash Scripting
- Networking
- Python
- AWS Cloud
- Cloud Security
- Security Operations
