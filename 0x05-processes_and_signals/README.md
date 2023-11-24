# Processes and signals
## Bash Scripting

### What is a PID?

PID stands for "Process IDentifier." It is a unique numerical identifier assigned to each running process in a computer system. PIDs are used by the operating system to keep track of and manage processes.

### What is a process?

A process is an executing instance of a program in a computer system. It consists of the program code, data, and resources necessary for the program's execution. Each process runs independently, and the operating system manages their execution.

### How to find a process' PID?

You can find a process's PID using the `ps` command in Unix-like operating systems. For example:

```bash
ps aux | grep <process_name>
```

This command will display information about processes, and `grep` is used to filter the output based on the process name.

### How to kill a process?

To terminate a process, you can use the `kill` command followed by the process ID (PID). For example:

```bash
kill <PID>
```

If a process is unresponsive, you can forcefully terminate it using:

```bash
kill -9 <PID>
```

### What is a signal?

In Unix-like operating systems, a signal is a software interrupt delivered to a process. Signals are used to communicate with processes and can trigger specific behaviors or actions.

### What are the 2 signals that cannot be ignored?

The two signals that cannot be ignored are:

1. **SIGKILL (9)**: This signal forces the process to immediately terminate. It cannot be caught or ignored by the process.

2. **SIGSTOP (19) or Ctrl-Z**: This signal suspends the process, and it also cannot be caught or ignored. It halts the process until it is explicitly resumed with the `SIGCONT` signal.

## Commonly used commands
### 1. `ps`

The `ps` command is used to display information about the currently running processes on a system. It provides a snapshot of the processes at the moment the command is executed. Common usage includes:

```bash
ps aux
```

- `a`: Show information about all users.
- `u`: Display detailed information, including the user and resource usage.
- `x`: Include processes not attached to a terminal.

### 2. `pgrep`

The `pgrep` command is used to search for processes based on their name or other attributes and print the process IDs (PIDs) to the standard output. For example:

```bash
pgrep -l "process_name"
```

This command lists the PIDs and process names of all processes matching the specified criteria.

### 3. `pkill`

The `pkill` command is used to send signals to processes based on their name. It is essentially a shortcut for finding and killing processes. For example:

```bash
pkill -SIGTERM "process_name"
```

This command sends the `SIGTERM` signal to all processes whose name matches "process_name," causing them to terminate.

### 4. `kill`

The `kill` command is used to send signals to processes. It can be used to terminate a process, among other actions. For example:

```bash
kill -SIGTERM PID
```

This command sends the `SIGTERM` signal to the process with the specified PID.

### 5. `exit`

The `exit` command is used to exit a shell or a script. It terminates the current shell session or script execution. For example:

```bash
exit
```

This command exits the current shell.

### 6. `trap`

The `trap` command is used to catch and respond to signals received by a script or shell. It defines actions to be taken when a signal is received. For example:

```bash
trap 'echo "Ctrl+C is disabled."' SIGINT
```

This command sets up a trap to respond to the `SIGINT` signal (Ctrl+C) by printing a message instead of terminating the script.

These commands are essential for managing and interacting with processes, handling signals, and controlling the execution flow in a Unix-like environment.
