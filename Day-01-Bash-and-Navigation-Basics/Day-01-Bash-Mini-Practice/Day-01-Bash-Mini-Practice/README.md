# Day 01 - Bash Mini Practice

## 📌 Objective
Practice basic Bash commands by creating directories, navigating the Linux file system, creating files, listing directory contents, and verifying successful command execution.

---

## 🛠 Technologies Used
- Ubuntu Linux
- Bash Shell
- Linux Terminal
- Oracle VirtualBox

---

## 📚 Concepts Learned
- Directory creation
- Directory navigation
- Creating text files
- Writing output to files
- Viewing directory contents
- Displaying file contents
- Bash command chaining
- Home directory navigation

---

## ⚡ Commands Used

### Create a Practice Directory

```
mkdir bash_day_1_practice
```

Creates a new practice directory.

### Navigate to the Directory

```
cd bash_day_1_practice
```

Moves into the newly created directory.

### Create a Text File

```
echo "Day1 Bash Practice" > practice.txt
```

Creates a file and writes text into it.

### List Directory Contents

```
ls -l
```

Displays detailed information about the files in the directory.

### Return to Parent Directory

```
cd ..
```

Moves one directory up.

### Return to Home Directory

```
cd ~
```

Returns to the user's home directory.

### Create a Success Log and Display It

```
echo "I Completed Day 1 Bash and Navigation Basics Successfully" > success_day1.txt && cat success_day1.txt
```

Creates a success log file and immediately displays its contents.

---

## 🧪 What I Practised

- Created a new practice directory.
- Navigated through Linux directories.
- Created a text file using the `echo` command.
- Verified files using `ls -l`.
- Returned to the parent and home directories.
- Generated a success log file.
- Displayed file contents using the `cat` command.

---

## 📸 Screenshots

### 1. Exploring the Home Directory

The screenshot demonstrates:

- Displaying the current working directory.
- Listing files using `ls`.
- Viewing detailed file information using `ls -l`.

### 2. Bash Mini Practice

The screenshot shows:

- Creating a practice directory.
- Navigating into the directory.
- Creating a text file using `echo`.
- Listing directory contents.
- Returning to the parent and home directories.
- Creating and displaying a success log using `cat`.

---

## 🔒 Security Notes

- Practised commands inside the user's home directory.
- Verified file creation before accessing files.
- Used simple text files without modifying system directories.
- Followed safe Linux command-line practices.

---

## 🎯 Skills Practiced

- Bash Shell
- Linux Terminal
- Directory Navigation
- File Creation
- File Management
- Command Chaining
- Output Redirection
- Basic Linux Administration

---

## ✅ Outcome

Completed the Bash mini practice by:

- Creating and navigating directories.
- Writing text to files using `echo`.
- Viewing files with `ls -l`.
- Creating and displaying a success log.
- Strengthening fundamental Bash and Linux command-line skills.

This hands-on exercise reinforces essential Linux and Bash concepts that serve as the foundation for System Administration, DevOps, Cloud Engineering, and Cloud Security.
