# 📁 Day 02 — File & Directory Operations

## 📌 Objective
Learn how to create, copy, rename, move, and delete files and directories using essential Bash commands in Linux. This exercise focuses on practising basic file management operations through the command line.

---

## 🛠 Technologies Used
- Ubuntu Linux
- Bash Shell
- Linux Terminal
- Oracle VirtualBox

---

## 📚 Concepts Learned
- Creating directories
- Creating text files
- Copying files
- Renaming files
- Moving files
- Listing directory contents
- Removing files
- Removing empty directories
- Directory navigation

---

## ⚡ Commands Used

### Create a New Directory

```
mkdir bash_day2
```

Creates a new working directory.

### Navigate into the Directory

```
cd bash_day2
```

Moves into the newly created directory.

### Display Current Directory

```
pwd
```

Shows the current working directory.

### Create a Text File

```
echo "Hello Bash" > test.txt
```

Creates a file named **test.txt** and writes text into it.

### Create a Backup Directory

```
mkdir backup
```

Creates a directory for storing backup files.

### Copy a File

```
cp test.txt backup/
```

Copies **test.txt** into the **backup** directory.

### View Backup Directory Contents

```
ls backup/
```

Lists the files stored in the backup directory.

### Rename the Copied File

```
mv backup/test.txt backup/test_backup.txt
```

Renames the copied file.

### Remove a File

```
rm backup/test_backup.txt
```

Deletes the backup file.

### Remove an Empty Directory

```
rmdir backup
```

Removes the empty backup directory.

### Return to Parent Directory

```
cd ..
```

Moves one level up in the directory structure.

---

## 🧪 What I Practised

- Created a new working directory.
- Created a text file using `echo`.
- Created a backup folder.
- Copied files using the `cp` command.
- Renamed files using `mv`.
- Deleted files using `rm`.
- Removed an empty directory using `rmdir`.
- Verified each step using `ls`.

---

## 📸 Screenshots

### 1. File and Directory Operations

The screenshot demonstrates:

- Creating a new directory.
- Creating a text file.
- Creating a backup directory.
- Copying files into the backup folder.
- Renaming the copied file.
- Deleting the backup file.
- Removing the empty backup directory.
- Returning to the parent directory.

---

## 🔒 Security Notes

- Verified file locations before copying and deleting.
- Removed only unnecessary files created during practice.
- Deleted the backup directory only after it became empty.
- Practised safe file management using Linux command-line tools.

---

## 🎯 Skills Practiced

- Bash Shell
- Linux File Management
- Directory Operations
- File Copying
- File Renaming
- File Deletion
- Linux Terminal Navigation
- Basic System Administration

---

## ✅ Outcome

Completed the file and directory management exercise by:

- Creating and organising directories.
- Copying and renaming files.
- Deleting files and empty directories.
- Verifying each operation using Linux commands.

This exercise strengthens essential Linux file management skills required for System Administration, DevOps, Cloud Engineering, and Cloud Security roles.
