# Day 14 – Security & Cloud Readiness Validation

## Overview

This project focuses on validating Linux security readiness and basic cloud integration using AWS S3.

The objective was to review local security configurations, verify user privileges, inspect SSH server settings, and confirm successful communication with cloud storage services.

This exercise simulates the type of validation activities commonly performed by Cloud Security Engineers, System Administrators, and DevSecOps teams before deploying workloads to cloud environments.

---

## Project Goals

- Verify Linux file permissions
- Confirm administrative privileges
- Review SSH server security configuration
- Validate cloud readiness
- Upload files to AWS S3
- Confirm successful cloud storage operations
- Build foundational cloud security skills

---

## Technologies Used

- Ubuntu Linux
- AWS CLI
- Amazon S3
- OpenSSH
- Linux Permissions
- Bash Commands

---

## Security Checks Performed

### 1. File Permission Validation

Checked file ownership and permissions.

```bash
ls -l test.txt
```

Verified:

- File owner
- Group ownership
- Read permissions
- Write permissions

---

### 2. Administrative Access Verification

Confirmed sudo group membership.

```bash
getent group sudo
```

Output confirmed the current user belongs to the sudo group.

---

### 3. SSH Security Review

Reviewed OpenSSH server configuration.

```bash
sudo nano /etc/ssh/sshd_config
```

Examined settings related to:

- SSH Port
- Authentication
- Password Policies
- Root Login Controls
- Session Management
- Logging Configuration

Security parameters reviewed include:

```text
PasswordAuthentication
PermitEmptyPasswords
PubkeyAuthentication
MaxAuthTries
MaxSessions
ClientAliveInterval
PermitTunnel
```

---

## Cloud Readiness Validation

### Create Test File

```bash
echo "Production readiness test" > readiness.txt
```

---

### Upload File to AWS S3

```bash
aws s3 cp readiness.txt s3://sri-cloud-lab-2026
```

Upload completed successfully.

---

### Verify Cloud Storage

```bash
aws s3 ls s3://sri-cloud-lab-2026
```

Verified files stored inside the S3 bucket.

Example:

```text
cloud_test.txt
readiness.txt
```

---

## Skills Demonstrated

### Linux Security

- File Permission Auditing
- User Privilege Verification
- SSH Configuration Analysis

### Cloud Operations

- AWS CLI Usage
- Amazon S3 Storage Management
- Cloud Connectivity Validation

### Security Concepts

- Least Privilege
- Secure Remote Access
- Authentication Controls
- Cloud Storage Security
- Security Readiness Assessments

---

## Security Relevance

This project demonstrates several entry-level cloud security tasks:

### Identity & Access Management

Verified administrative permissions and user access controls.

### Secure Remote Administration

Reviewed SSH daemon configuration to understand authentication and access settings.

### Cloud Storage Security

Uploaded and validated files inside an AWS S3 bucket.

### Configuration Review

Inspected security-sensitive configuration files used in production Linux systems.

---

## Real-World Applications

Tasks similar to this are commonly performed by:

- Cloud Security Engineers
- Security Operations Analysts
- Linux Administrators
- Cloud Support Engineers
- DevSecOps Engineers

Examples include:

- Security audits
- Server readiness checks
- Cloud onboarding validations
- Infrastructure reviews
- Compliance preparation

---

## Learning Outcomes

Through this project, I learned:

- How Linux permissions affect system security
- How administrative access is managed
- How SSH server settings influence security posture
- How AWS CLI interacts with Amazon S3
- How to verify successful cloud uploads
- How Linux and cloud technologies work together

---

## Project Status

Completed Successfully

### Checklist

| Task | Status |
|--------|--------|
| Verify File Permissions | ✅ |
| Confirm Sudo Access | ✅ |
| Review SSH Configuration | ✅ |
| Create Test File | ✅ |
| Upload File to AWS S3 | ✅ |
| Verify Cloud Upload | ✅ |
| Validate Cloud Readiness | ✅ |


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
- DevSecOps
