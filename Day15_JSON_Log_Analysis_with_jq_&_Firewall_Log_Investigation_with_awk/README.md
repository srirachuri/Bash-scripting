# Day 15 – JSON Log Analysis with jq & Firewall Log Investigation with awk

## Overview

This project focuses on security log analysis using two powerful Linux command-line tools:

- jq for parsing and filtering JSON-based cloud logs
- awk for processing firewall log data

The goal was to simulate real-world cloud security investigations by identifying users, detecting access-denied events, and analysing rejected network traffic.

---

## Technologies Used

- Ubuntu Linux
- jq
- awk
- JSON
- Linux Shell
- Cloud Security Concepts

---

## Project Objectives

- Parse JSON security logs
- Extract user activity information
- Detect unauthorized actions
- Analyze firewall events
- Identify blocked IP addresses
- Practice security-focused log investigation

---

# Part 1: JSON Log Analysis with jq

## Verify jq Installation

```bash
jq --version
```

Output:

```text
jq-1.6
```

---

## Sample Cloud Log

Created a sample cloud log file:

```bash
nano cloud_log.json
```

The file contained simulated cloud events such as:

- Console Login
- CreateBucket
- TerminateInstances

---

## Display Formatted JSON

```bash
cat cloud_log.json | jq
```

This converts raw JSON into a readable format.

---

## Extract User Names

```bash
cat cloud_log.json | jq '.Records[].userIdentity.userName'
```

Output:

```text
"admin"
"hacker_bob"
"dev_sri"
```

This helps identify users performing actions within the environment.

---

## Detect Access Denied Events

```bash
cat cloud_log.json | jq '.Records[] | select(.errorCode=="AccessDenied")'
```

Output identified:

```text
TerminateInstances
User: hacker_bob
Source IP: 203.0.113.5
```

---

## Security Insight

This technique is commonly used when reviewing:

- AWS CloudTrail logs
- Azure Activity Logs
- GCP Audit Logs
- Security Monitoring Systems

---

# Part 2: Firewall Log Investigation with awk

## Create Firewall Log

```bash
nano firewall.log
```

Sample entries included:

```text
2026-01-14 10:02 203.0.113.99 10.0.0.5 REJECT
2026-01-14 10:04 45.33.22.11 10.0.0.5 REJECT
```

---

## Display Source IP and Action

```bash
awk '{print $3, $5}' firewall.log
```

Output:

```text
192.168.1.50 ACCEPT
203.0.113.99 REJECT
192.168.1.52 ACCEPT
45.33.22.11 REJECT
```

---

## Show Only Rejected Traffic

```bash
awk '$5=="REJECT" {print $0}' firewall.log
```

Output:

```text
2026-01-14 10:02 203.0.113.99 10.0.0.5 REJECT
2026-01-14 10:04 45.33.22.11 10.0.0.5 REJECT
```

---

## Count Rejected IP Addresses

```bash
awk '$5=="REJECT" {print $3}' firewall.log | sort | uniq -c
```

Output:

```text
1 203.0.113.99
1 45.33.22.11
```

This helps identify suspicious hosts attempting connections.

---

# Skills Demonstrated

## Linux

- Command-line log analysis
- Text processing
- Security investigation

## jq

- JSON parsing
- Filtering objects
- Extracting fields
- Event investigation

## awk

- Field extraction
- Conditional filtering
- Log analytics
- IP investigation

## Security Analysis

- Access Denied detection
- User activity review
- Firewall monitoring
- Threat hunting basics

---

# Real-World Cloud Security Relevance

These techniques are commonly used by:

- Cloud Security Engineers
- SOC Analysts
- Security Analysts
- DevSecOps Engineers
- Incident Response Teams

Example use cases:

- Investigating suspicious API activity
- Reviewing CloudTrail logs
- Detecting unauthorised actions
- Monitoring blocked connections
- Finding malicious IP addresses

---

# Learning Outcomes

Through this project, I learned:

- How JSON security logs are structured
- How to extract data using jq
- How to investigate cloud events
- How to filter firewall logs using awk
- How to identify blocked network traffic
- How security teams analyse logs in real environments

---

# Project Status

Completed Successfully

## Checklist

| Task | Status |
|--------|--------|
| Install jq | ✅ |
| Parse JSON Logs | ✅ |
| Extract User Names | ✅ |
| Detect Access Denied Events | ✅ |
| Create Firewall Log | ✅ |
| Analyse Traffic with awk | ✅ |
| Identify Rejected Connections | ✅ |
| Count Suspicious IPs | ✅ |

---

# Author

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
