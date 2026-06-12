# Day 9 - Pre-Deployment File Validation Script

## Objective

Create a Bash script that validates whether a configuration file exists before deployment starts.

This simulates a real-world DevOps and Cloud Security workflow where deployments should stop if required configuration files are missing.

---

## Script

```bash
#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Error: No File Provided"
    echo "Usage: $0 <config_file>"
    exit 1
fi

if [ -f "$1" ]; then
    echo "Config file Found. Proceeding with Deployment"
else
    echo "Config file Missing. Deployment Stopped"
    exit 1
fi
```

---

## Make Script Executable

```bash
chmod +x validate_config.sh
```

---

## Usage

### Run without argument

```bash
./validate_config.sh
```

Output:

```text
Error: No File Provided
Usage: ./validate_config.sh <config_file>
```

---

### Run with existing file

```bash
./validate_config.sh app.conf
```

Output:

```text
Config file Found. Proceeding with Deployment
```

---

### Run with missing file

```bash
./validate_config.sh missing.conf
```

Output:

```text
Config file Missing. Deployment Stopped
```

## Status

✅ Completed Day 9 – Pre-Deployment File Validation Script
