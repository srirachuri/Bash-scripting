# Day 02 - Backup Before Making Changes

## 📌 Objective

Learn how to create a backup of important files before making changes by using essential Bash commands. This practice demonstrates a common Linux administration task to help prevent accidental data loss.

---

## 🛠 Technologies Used

- Ubuntu Linux
- Bash Shell
- Linux Terminal
- Oracle VirtualBox

---

## 📚 Concepts Learned

- Creating backup directories
- Copying files
- Renaming backup files
- Verifying backups
- Using output redirection
- Displaying file contents with `cat`

---

## ⚡ Commands Used

### Navigate to the Working Directory

```
cd ~/bash_day2
```

Moves into the project directory.

### List Files

```
ls
```

Displays the files and folders in the current directory.

### Create a Backup Directory

```
mkdir backup
```

Creates a directory for storing backup files.

### Copy a File to the Backup Directory

```
cp test.txt backup/
```

Copies the original file into the backup folder.

### Verify the Backup

```
ls backup/
```

Displays the contents of the backup directory.

### Rename the Backup File

```
mv backup/test.txt backup/test.txt.bak
```

Renames the copied file with a `.bak` extension.

### Create a Success Log

```
echo "Backup Created safely before modifying files" > success_backup_created.txt && cat success_backup_created.txt
```

Creates a success message file and immediately displays its contents.

---

## 🧪 What I Practised

- Navigated to the project directory.
- Listed files and folders.
- Created a backup directory.
- Copied files into the backup folder.
- Renamed the backup file using the `.bak` extension.
- Verified the backup.
- Created and displayed a success log.

---

## 📸 Screenshots

### 1. Creating a Backup Before Modifying Files

The screenshot demonstrates:

- Navigating to the project directory.
- Creating a backup folder.
- Copying the original file.
- Renaming the backup file.
- Verifying the backup.
- Creating a success log using `echo`.
- Displaying the success message with `cat`.

---

## 🔒 Security Notes

- Created a backup before making any modifications.
- Verified the backup copy before proceeding.
- Used a separate backup directory to keep the original file safe.
- Followed good file management practices to reduce the risk of data loss.

---

## 🎯 Skills Practiced

- Bash Shell
- Linux File Management
- Backup Management
- File Copy Operations
- File Renaming
- Linux Terminal
- Basic System Administration

---

## ✅ Outcome

Successfully practised creating and verifying file backups using Bash commands. This exercise reinforces the importance of protecting important files before making changes, a fundamental practice in Linux System Administration, DevOps, Cloud Engineering, and Cloud Security.
