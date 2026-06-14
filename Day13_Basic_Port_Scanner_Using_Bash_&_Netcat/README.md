# Day 13 - Basic Port Scanner Using Bash and Netcat

## Project Overview

This project is a simple port scanner built using Bash scripting and Netcat (nc).

The script checks whether common ports on a target system are open or closed.

This is a fundamental cybersecurity and network administration task used for:

- Network troubleshooting
- Service discovery
- Security auditing
- Infrastructure monitoring

---

## Features

### Port Scanning

The script scans the following ports:

| Port | Service |
|--------|----------|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |

Example:

```bash
for port in 22 80 443
```

---

### Open Port Detection

Uses Netcat to test connectivity.

```bash
nc -zv localhost $port
```

If the connection succeeds:

```text
OPEN
```

If the connection fails:

```text
CLOSED
```

---

### Loop Automation

The scanner automatically checks multiple ports using a Bash loop.

```bash
for port in 22 80 443
```

Benefits:

- Less manual work
- Faster checks
- Easy to expand

---

### Exit Status Validation

The script evaluates Netcat's return code.

```bash
if [ $? -eq 0 ]
```

Benefits:

- Accurate results
- Proper error handling
- Real-world scripting practice

---

## Script Workflow

```text
Start
  ↓
Select Target Host
  ↓
Check Port 22
  ↓
Check Port 80
  ↓
Check Port 443
  ↓
Display OPEN/CLOSED Status
  ↓
End
```

---

## Technologies Used

- Ubuntu Linux
- Bash Scripting
- Netcat (nc)
- TCP Networking

## Sample Output

```text
Basic Port Scanner
Target: localhost

Checking Port 22: OPEN
Checking Port 80: OPEN
Checking Port 443: CLOSED
```

---

## Security Relevance

Port scanning is one of the first steps in:

### Security Assessments

- Service Discovery
- Attack Surface Identification
- Security Auditing

### Network Administration

- Troubleshooting Services
- Verifying Server Availability
- Connectivity Testing

### Cloud Security

- Checking exposed services
- Verifying firewall rules
- Monitoring infrastructure

---

## Learning Outcomes

Through this project, I learned:

- How TCP ports work
- Difference between open and closed ports
- Using Netcat for connectivity testing
- Bash loops and conditionals
- Basic security enumeration techniques
- Network troubleshooting fundamentals

---

## Project Status

Completed Successfully ✅

### Tasks Completed

| Task | Status |
|--------|--------|
| Port Enumeration | ✅ |
| Netcat Integration | ✅ |
| Loop Automation | ✅ |
| Open Port Detection | ✅ |
| Closed Port Detection | ✅ |
| Output Display | ✅ |

---

## Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Current Focus:

- Linux Administration
- Bash Scripting
- Networking
- Python
- Cloud Security
- DevSecOps
