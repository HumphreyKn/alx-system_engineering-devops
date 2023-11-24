# Bash Scripting Guide

## Shebang Line in Bash Scripts

### Advantage of `#!/usr/bin/env bash` over `#!/bin/bash`

When writing Bash scripts, the shebang line at the beginning specifies the interpreter to be used. Using `#!/usr/bin/env bash` has advantages over `#!/bin/bash`:

- **Portability:** `#!/usr/bin/env bash` is more portable, as it relies on the `env` command to locate the Bash interpreter in the user's PATH.

- **PATH Resolution:** It dynamically resolves the path to the Bash interpreter based on the user's environment, making it adaptable to different systems.

- **Multiple Bash Versions:** It allows users to use their preferred version of Bash, as opposed to a fixed path that may point to a specific version.

## Creating SSH Keys

SSH keys are essential for secure authentication to remote servers.

### 1. Open a Terminal or Command Prompt:

- **Linux/Mac:** Use the Terminal application.
- **Windows:** Use the Command Prompt or PowerShell.

### 2. Generate SSH Key Pair:

```bash
ssh-keygen -t rsa -b 2048 -C "your_email@example.com"
```

- `-t`: Type of key (RSA).
- `-b`: Number of bits in the key.
- `-C`: Label/comment for the key.

### 3. Choose a Secure Passphrase (Optional):

You can enter a passphrase for added security.

### 4. Verify the Key Pair:

Check the generated keys in the specified location.

### 5. Display the Public Key:

```bash
cat ~/.ssh/id_rsa.pub
```

Copy the public key.

### 6. Add Public Key to Remote Server:

Use `ssh-copy-id` or manually add the public key to `~/.ssh/authorized_keys` on the remote server.

## Bash Scripting - Loops and Comparison Operators

### 1. While Loop:

```bash
#!/bin/bash

counter=1

while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done
```

### 2. Until Loop:

```bash
#!/bin/bash

counter=1

until [ $counter -gt 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done
```

### 3. For Loop:

#### For Loop with Numbers:

```bash
#!/bin/bash

for i in {1..5}; do
    echo "Number: $i"
done
```

#### For Loop with Array:

```bash
#!/bin/bash

fruits=("apple" "orange" "banana" "grape")

for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
```

### Loop Control Statements:

- **`break` Statement:**

```bash
#!/bin/bash

counter=1

while true; do
    echo "Counter: $counter"
    ((counter++))
    if [ $counter -gt 5 ]; then
        break
    fi
done
```

- **`continue` Statement:**

```bash
#!/bin/bash

for i in {1..5}; do
    if [ $i -eq 3 ]; then
        continue
    fi
    echo "Number: $i"
done
```

### Comparison Operators:

#### File-Related Operators:

- `-e` (Existence)
- `-f` (Regular File)
- `-d` (Directory)
- `-s` (Nonzero Size)

#### Numeric Comparison Operators:

- `-eq` (Equal)
- `-ne` (Not Equal)
- `-lt` (Less Than)

#### String Comparison Operators:

- `=` (Equal)
- `!=` (Not Equal)
- `<` and `>` (Less Than and Greater Than)

These operators are used for making decisions based on file attributes, numeric values, or string comparisons in Bash scripts.

Comparison operators in bash are used to compare different types of values, such as integers, strings, files, etc. They can be used in conditional statements, such as if, while, case, etc., to control the flow of the script. Depending on the type of value, different operators are available. Here is a summary of the main comparison operators in bash:

- For **integer** values, you can use the following operators:
    * `-eq`: equal to
    * `-ne`: not equal to
    * `-lt`: less than
    * `-le`: less than or equal to
    * `-gt`: greater than
    * `-ge`: greater than or equal to
    * These operators are used inside `[ ]` or `[[ ]]` brackets, or inside `(( ))` parentheses. For example:

```bash
a=10
b=20
if [ "$a" -eq "$b" ]; then
  echo "a and b are equal"
elif [ "$a" -lt "$b" ]; then
  echo "a is less than b"
else
  echo "a is greater than b"
fi
```

- For **string** values, you can use the following operators:
    * `=`: equal to
    * `!=`: not equal to
    * `<`: less than (in ASCII alphabetical order)
    * `>`: greater than (in ASCII alphabetical order)
    * `-z`: the string is null (empty)
    * `-n`: the string is not null (not empty)
    * These operators are used inside `[ ]` or `[[ ]]` brackets. For example:

```bash
str1="hello"
str2="world"
if [ "$str1" = "$str2" ]; then
  echo "str1 and str2 are equal"
elif [ "$str1" > "$str2" ]; then
  echo "str1 is greater than str2"
else
  echo "str1 is less than str2"
fi
```

- For **file** values, you can use the following operators:
    * `-e`: the file exists
    * `-f`: the file is a regular file
    * `-d`: the file is a directory
    * `-h` or `-L`: the file is a symbolic link
    * `-b`: the file is a block device
    * `-c`: the file is a character device
    * `-p`: the file is a named pipe
    * `-s`: the file size is greater than zero
    * `-t`: the file descriptor is associated with a terminal
    * `-r`: the file is readable
    * `-w`: the file is writable
    * `-x`: the file is executable
    * `-g`: the file has the set-group-ID bit set
    * `-u`: the file has the set-user-ID bit set
    * `-k`: the file has the sticky bit set
    * `-O`: the file is owned by the current user
    * `-G`: the file is owned by the same group as the current user
    * `-N`: the file has been modified since it was last read
    * `-nt`: the file is newer than another file
    * `-ot`: the file is older than another file
    * `-ef`: the file is the same as another file
    * These operators are used inside `[ ]` or `[[ ]]` brackets. For example:

```bash
file1="test.txt"
file2="backup.txt"
if [ -e "$file1" ]; then
  echo "file1 exists"
  if [ -f "$file1" ]; then
    echo "file1 is a regular file"
    if [ -s "$file1" ]; then
      echo "file1 is not empty"
      if [ "$file1" -nt "$file2" ]; then
        echo "file1 is newer than file2"
      elif [ "$file1" -ot "$file2" ]; then
        echo "file1 is older than file2"
      elif [ "$file1" -ef "$file2" ]; then
        echo "file1 and file2 are the same file"
      fi
    else
      echo "file1 is empty"
    fi
  else
    echo "file1 is not a regular file"
  fi
else
  echo "file1 does not exist"
fi
```

---

