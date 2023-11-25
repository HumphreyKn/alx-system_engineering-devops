# Positional Arguments
Positional arguments in Bash are the arguments that are passed to a script or a function when it is invoked. They are also called positional parameters, because they are identified by their position rather than by their name. For example, if you run a script like this:

```bash
./myscript.sh foo bar baz
```

Then the script can access the positional arguments as `$1`, `$2`, and `$3`, where `$1` is `foo`, `$2` is `bar`, and `$3` is `baz`. The number of positional arguments is stored in the special variable `$#`, which in this case is `3`. The script name itself is stored in the special variable `$0`, which is `./myscript.sh`.

Positional arguments are useful for passing input data or options to a script or a function. They can be reassigned using the `set` builtin command, which can also change the shell options. For example, if you want to change the value of the third positional argument to `qux`, you can do:

```bash
set -- "$1" "$2" qux
```

The `--` option signals the end of options and the beginning of arguments, so that any argument that starts with a `-` is not interpreted as an option. Alternatively, you can use the `shift` builtin command, which discards the first positional argument and shifts the rest to the left. For example, if you do:

```bash
shift
```

Then `$1` becomes `bar`, `$2` becomes `baz`, and `$3` becomes empty. You can also specify a number to shift by more than one position. For example, if you do:

```bash
shift 2
```

Then `$1` becomes `baz`, and `$2` and `$3` become empty.

Bash provides special variables to refer to all positional arguments: `$*` and `$@`. Both of these variables refer to all arguments in a script, but with a slight difference. When `$*` is used, all of the arguments are seen as a single word. However, when `$@` is used, each argument is seen as a separate word. For example, if you do:

```bash
echo "$*"
```

The output is:

```
foo bar baz
```

But if you do:

```bash
echo "$@"
```

The output is:

```
foo
bar
baz
```

This difference is more noticeable when you use double quotes around the variables. For example, if you do:

```bash
for arg in "$*"; do
  echo "$arg"
done
```

The output is:

```
foo bar baz
```

But if you do:

```bash
for arg in "$@"; do
  echo "$arg"
done
```

The output is:

```
foo
bar
baz
```

The `$@` variable is usually preferred when you want to preserve the word splitting of the positional arguments. For more information and examples, you can check out these web pages: [Positional Parameters (Bash Reference Manual)](^3^) ³, [Ways to set positional parameters in bash](^2^) ², [bash - Assigning to a positional parameter](^1^) ¹, and [How to Use Positional Parameters in Bash Scripts](^4^) ⁴. I hope this helps you understand positional arguments in Bash. 😊

Source: Conversation with Bing, 11/25/2023
(1) Positional Parameters (Bash Reference Manual). https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html.
(2) Positional Parameters (Bash Reference Manual). https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html.
(3) Ways to set positional parameters in bash. https://unix.stackexchange.com/questions/378566/ways-to-set-positional-parameters-in-bash.
(4) Ways to set positional parameters in bash. https://unix.stackexchange.com/questions/378566/ways-to-set-positional-parameters-in-bash.
(5) bash - Assigning to a positional parameter - Stack Overflow. https://stackoverflow.com/questions/13762370/assigning-to-a-positional-parameter.
(6) bash - Assigning to a positional parameter - Stack Overflow. https://stackoverflow.com/questions/13762370/assigning-to-a-positional-parameter.
(7) How to Use Positional Parameters in Bash Scripts - The Geek Search. https://www.thegeeksearch.com/how-to-use-positional-parameters-in-bash-scripts/.
(8) How to Use Positional Parameters in Bash Scripts - The Geek Search. https://www.thegeeksearch.com/how-to-use-positional-parameters-in-bash-scripts/.
(9) undefined. https://www.gnu.org/software/bash/manual/bashref.html.
