# Day 9 - Conditions (if, else) Plus Script Arguments

## Objective
Learn how to use:

- if / else conditions
- Script arguments
- File existence checking

## Script

```bash
#!/bin/bash

set -e

if [ -f "$1" ]; then
    echo "File $1 Exist"
else
    echo "File $1 Missing"
fi
```

## Make Executable

```bash
chmod +x check_file.sh
```

## Usage

Check if a file exists:

```bash
./check_file.sh test.txt
```

Output:

```text
File test.txt Exist
```

Check a missing file:

```bash
./check_file.sh abc.txt
```

Output:

```text
File abc.txt Missing
```

## Concepts Learned

- Conditional statements
- if / else syntax
- Script arguments (`$1`)
- File test operator (`-f`)
- Bash scripting basics

## Real-World Use

System administrators and cloud engineers use file existence checks to:

- Validate configuration files
- Verify backups
- Check log files
- Automate system monitoring

## Status

✅ Completed Day 9
