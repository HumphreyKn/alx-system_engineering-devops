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

---

