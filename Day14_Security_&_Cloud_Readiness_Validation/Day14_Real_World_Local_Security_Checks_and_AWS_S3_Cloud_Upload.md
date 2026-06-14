# Day 14 - Local Security Checks and AWS S3 Cloud Upload

## Project Overview

This project demonstrates how to perform basic Linux security checks and connect a Linux system to AWS cloud storage using Amazon S3.

The objective was to verify user permissions, inspect SSH security settings, create test files, upload them to AWS S3, and validate that cloud storage operations succeeded.

This project bridges Linux administration with cloud security fundamentals.

---

## Objectives

- Verify file permissions
- Check user privilege levels
- Review SSH server configuration
- Create and manage local files
- Upload files to AWS S3
- Validate successful cloud uploads
- Gain hands-on cloud administration experience

---

## Technologies Used

- Ubuntu Linux
- AWS CLI
- Amazon S3
- SSH
- Linux File Permissions
- Bash Commands

---

## Security Checks Performed

### 1. File Permission Verification

Checked file ownership and permissions:

```bash
ls -l test.txt
```

Example Output:

```text
-rw-rw-r-- 1 user user 61 Jan 7 test.txt
```

Verified:

- File owner
- Group ownership
- Read/Write permissions
- Access rights

---

### 2. User Privilege Verification

Checked sudo group membership:

```bash
sudo cat /etc/group | grep sudo
```

Verified:

- User belongs to sudo group
- Administrative privileges available

---

### 3. SSH Configuration Review

Opened SSH daemon configuration:

```bash
sudo nano /etc/ssh/sshd_config
```

Reviewed security-related settings:

- Port configuration
- Authentication methods
- Root login policy
- Password authentication
- Session controls

---

## AWS S3 Cloud Storage

### Create Test File

```bash
echo "Day 14 Cloud Upload Test" > cloud_test.txt
```

---

### List Available Buckets

```bash
aws s3 ls
```

Verified AWS CLI connectivity and credentials.

---

### Upload File to S3

```bash
aws s3 cp cloud_test.txt s3://sri-cloud-lab-2026
```

Result:

```text
upload: ./cloud_test.txt to s3://sri-cloud-lab-2026/cloud_test.txt
```

---

### Validate Upload

```bash
aws s3 ls s3://sri-cloud-lab-2026
```

Output confirmed file exists inside the bucket.

---


## Security Relevance

This project introduces several important cloud security concepts:

### Identity & Access

- User privilege verification
- Administrative access validation

### Secure Remote Access

- SSH configuration inspection
- Authentication policy review

### Cloud Storage

- Secure file upload process
- S3 bucket interaction

### Configuration Review

- Understanding security-sensitive system files

---

## Real-World Use Cases

Activities like these are commonly performed by:

- Cloud Security Engineers
- Cloud Administrators
- DevSecOps Engineers
- Security Analysts
- Linux System Administrators

Examples:

- Security audits
- Cloud onboarding
- S3 storage management
- Access reviews
- Server hardening assessments

---

## Learning Outcomes

Through this project, I learned:

- How Linux permissions work
- How to verify administrative privileges
- How SSH security settings are structured
- How AWS CLI communicates with cloud services
- How to upload and verify files in Amazon S3
- How Linux and cloud environments integrate

---

## Project Status

Completed Successfully ✅

### Tasks Completed

| Task | Status |
|--------|--------|
| Verify File Permissions | ✅ |
| Check Sudo Access | ✅ |
| Review SSH Configuration | ✅ |
| Create Test File | ✅ |
| Connect AWS CLI | ✅ |
| Upload File to S3 | ✅ |
| Verify Upload | ✅ |

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
- DevSecOps
