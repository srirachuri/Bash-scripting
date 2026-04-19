# DAY 6 — Process & Disk Monitoring

## 📝 Overview
This log documents Day 6 of Linux terminal practice. The focus of this session was system administration: monitoring disk space, observing running processes, identifying resource-heavy tasks, and performing incident response by terminating rogue processes.

## 🛠️ Commands Covered
* `df`: Report file system disk space usage.
* `du`: Estimate file space usage.
* `ps`: Report a snapshot of current processes.
* `top`: Display Linux processes interactively in real-time.
* `kill`: Send a signal to a process (usually to terminate it).

---

## 🚀 Step-by-Step Execution

### 1. Environment Setup & Disk Monitoring
Created the day's directory and immediately began checking system storage metrics using human-readable flags (`-h`).

```bash
mkdir bash_day6
cd bash_day6

# Check overall file system disk space usage
df -h

# Check the total disk usage of a specific directory (from Day 5)
du -sh ~/bash_day5
2. Static Process Monitoring
Used the ps command to grab snapshots of running programs. The standard ps shows processes for the current shell, while ps aux provides a comprehensive view of all system processes.

Bash
# View processes tied to the current terminal session
ps

# View all running processes on the system with detailed stats (User, PID, CPU%, MEM%, etc.)
ps aux
Observation: During the ps aux execution, two rogue processes (bash -c while true; do :; done) were identified consuming nearly 100% of the CPU.

3. Real-Time Performance Monitoring
Used top to get a dynamic, real-time view of system resources and confirm which processes were hogging the CPU.

Bash
# Launch the interactive process viewer
top
Observation: The top interface confirmed that Process IDs (PIDs) 231 and 240 were consuming massive amounts of CPU time, necessitating incident response.

4. Filtering and Terminating Processes
Combined ps aux with grep to quickly isolate the problematic bash processes, then used the kill command to terminate them.

Bash
# Search for specific running services (e.g., Docker)
ps aux | grep docker

# Isolate all bash-related processes to locate the infinite loops
ps aux | grep bash

# Terminate the first rogue process gracefully (SIGTERM)
kill 231

# Forcefully terminate the second rogue process (SIGKILL)
kill -9 240
5. Mission Accomplished
Logged the completion of the incident response and monitoring tasks into a success file.

Bash
echo "I Completed Day 6 Monitored Disk Usage and Running Process for incident response" > success_day6.txt && cat success_day6.txt
