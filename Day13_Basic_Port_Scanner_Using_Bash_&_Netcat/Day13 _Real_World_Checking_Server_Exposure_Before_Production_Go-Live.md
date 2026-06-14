# Day 13 - Checking Server Exposure Before Production Go-Live

## Project Overview

This project demonstrates how to verify exposed services on a Linux server before deployment.

Using UFW (Uncomplicated Firewall), Netcat, and Linux networking tools, I validated which ports were accessible and identified services that should remain blocked.

This process helps reduce the attack surface and improve security before a system is placed into production.

---

## Objectives

- Enable and configure firewall rules
- Verify exposed services
- Test open and closed ports
- Identify unnecessary exposure
- Validate security controls

---

## Technologies Used

- Ubuntu Linux
- UFW Firewall
- Netcat (nc)
- Bash
- TCP/IP Networking
- Linux Security Administration

---

## Firewall Configuration

Allowed ports:

| Port | Service | Status |
|--------|----------|--------|
| 22 | SSH | Allowed |
| 25 | SMTP | Active |
| 80 | HTTP | Allowed |
| 443 | HTTPS | Allowed by Firewall |
| 3306 | MySQL | Denied |

Commands used:

```bash
sudo ufw enable

sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443

sudo ufw deny 3306
```

---

## Exposure Verification

Ports tested:

```bash
for port in 22 23 25 80 443 3306
do
    nc -zv localhost $port
done
```

---

## Scan Results

| Port | Service | Result |
|--------|----------|---------|
| 22 | SSH | OPEN |
| 23 | Telnet | CLOSED |
| 25 | SMTP | OPEN |
| 80 | HTTP | OPEN |
| 443 | HTTPS | CLOSED |
| 3306 | MySQL | CLOSED |

---

## Additional Verification

Checked listening services:

```bash
sudo ss -tulnp | grep :25
```

Result:

```text
SMTP service detected and listening on port 25
```

Verified HTTPS port:

```bash
nc -zv localhost 443
```

Result:

```text
Connection refused
```

Meaning no HTTPS service was currently running despite the firewall rule being present.

---

## Security Analysis

### Safe Findings

- SSH available for administration
- HTTP is available for web access
- MySQL is not publicly exposed
- Telnet disabled

### Potential Risk

SMTP service detected on port 25.

Before production deployment:

- Confirm SMTP is required
- Restrict access if unnecessary
- Monitor mail service logs

---

## Skills Demonstrated

✅ Linux Administration

✅ UFW Firewall Management

✅ Service Exposure Verification

✅ Network Troubleshooting

✅ Netcat Usage

✅ Security Hardening

✅ Attack Surface Assessment

✅ Port Enumeration

---

## Real-World Cloud Security Relevance

This activity is commonly performed by:

- Cloud Security Engineers
- DevSecOps Engineers
- SOC Analysts
- Security Administrators
- Site Reliability Engineers

Typical use cases:

- Pre-production security reviews
- Firewall validation
- Security audits
- Server hardening
- Cloud workload assessments

---

## Learning Outcomes

Through this project I learned:

- How firewall rules affect network exposure
- How to identify open and closed ports
- How to verify running services
- How to reduce unnecessary attack surface
- How to perform basic security validation before deployment

---

## Project Status

Completed Successfully ✅

### Tasks Completed

| Task | Status |
|--------|--------|
| Enable UFW | ✅ |
| Configure Firewall Rules | ✅ |
| Verify Open Ports | ✅ |
| Verify Closed Ports | ✅ |
| Check Running Services | ✅ |
| Validate Exposure | ✅ |
| Security Assessment | ✅ |

---

## Author

Sri Gayathri

BCA Student | Linux Learner | Future Cloud Security Engineer

Current Learning Path:

- Linux Administration
- Bash Scripting
- Networking
- Python
- Cloud Security
- DevSecOps
