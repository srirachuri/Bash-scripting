# Day 6 — Mini Practice

## 📝 Overview
This log documents a mini practice session for Day 6 of Linux terminal training. The exercises reinforce essential system administration skills, specifically focusing on monitoring disk space, observing running processes, isolating resource-intensive background tasks, and terminating them.

## 🛠️ Commands Covered
* `df`: Report file system disk space usage.
* `du`: Estimate file space usage.
* `ps`: Report a snapshot of current processes (including specific PID targeting).
* `top`: Display Linux processes interactively in real-time.
* `grep`: Search for specific patterns in command output.
* `kill`: Terminate specific processes by their Process ID (PID).

---

## 🚀 Step-by-Step Execution

### 1. Disk Usage Verification
Checked the overall system disk space and the size of a specific directory to monitor storage health.

```bash
# Check overall file system disk space usage in a human-readable format
df -h

# Check the total disk usage of the bash_day6 directory
du -sh ~/bash_day6
2. Process Snapshot & Observation
Used the ps command to take snapshots of running programs, identifying normal operations as well as suspicious background tasks.

Bash
# View processes running in the current terminal session
ps

# View all running processes on the system with detailed stats
ps aux
Observation: The output revealed background sleep 300 processes and two infinite loop commands (bash -c while true; do :; done) running under PIDs 483 and 494.

3. Filtering and Real-Time Monitoring
Attempted to find specific services and used top to assess the system impact of the suspicious processes.


# Attempt to find if an 'apache' service is running
ps aux | grep apache

# Launch the interactive process viewer to monitor live resource usage
top
Observation: top confirmed that PIDs 483 and 494 were each consuming roughly 100% of the CPU.

4. Isolating and Terminating Rogue Processes
Targeted the specific CPU-hogging processes to view their exact details, terminated them, and verified their removal.


# Filter processes to isolate bash-related commands
ps aux | grep bash

# Use full-format (-f) to view specific details for PIDs 483 and 494 (-p)
ps -fp 483 494

# Terminate the first rogue process
kill 483

# Terminate the second rogue process
kill 494

# Verify the processes have been successfully terminated (returns only the header)
ps -fp 483 494
5. Mission Accomplished
Logged the successful completion of the mini practice into a text file.


echo "I Completed Day 6 Mini Practice, Checked Disk and Processes" > success_day6_min
