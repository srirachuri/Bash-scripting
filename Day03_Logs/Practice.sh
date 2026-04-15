🧪 Practice
Step 1: Create a log file
echo -e "Login success\nLogin failed\nPermission denied\nLogin failed" > file.log
Step 2: Read logs
cat file.log
less file.log
head file.log
tail file.log
🔍 Real Log Monitoring
sudo cat /var/log/auth.log
tail /var/log/syslog
✔ Viewed real system logs
✔ Observed login activity and system events
