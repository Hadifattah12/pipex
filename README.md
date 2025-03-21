Pipex Project
Program Name
pipex

Description
The pipex program simulates the behavior of pipes in the shell, managing file I/O and executing multiple commands sequentially, connected by pipes.

Usage

./pipex file1 cmd1 cmd2 file2
Where:

file1: the input file to read from.
cmd1: the first shell command to execute.
cmd2: the second shell command to execute.
file2: the output file to write to.
This program behaves exactly as if you were running:


< file1 cmd1 | cmd2 > file2

Example

$> ./pipex infile "ls -l" "wc -l" outfile
This should behave like:

< infile ls -l | wc -l > outfile

Another Example

$> ./pipex infile "grep a1" "wc -w" outfile

This should behave like:


< infile grep a1 | wc -w > outfile
Requirements

Mandatory Part
Arguments: The program takes 4 arguments:
file1: The input file.
cmd1: The first command to execute.
cmd2: The second command to execute.
file2: The output file.
Functionality:
The program will read from file1 and pass the data to cmd1, then pipe the output of cmd1 to cmd2, and finally write the result into file2.
Error Handling: Your program should handle errors thoroughly. Ensure no segmentation faults, bus errors, double frees, or memory leaks.
External Functions
open, close, read, write, malloc, free, perror, strerror, access, dup, dup2, execve, exit, fork, pipe, unlink, wait, waitpid.
ft_printf and any equivalent you coded.
Makefile
Your Makefile should include the following targets:

NAME
all
clean
fclean
re
Compilation
Compile your code using the provided Makefile:


make
To clean up:


make clean
To remove all generated files:


make fclean
To recompile everything:

make re
Requirements
Error handling: Ensure that errors are properly handled and that the program doesn't crash unexpectedly.
No memory leaks: The program must be free of memory leaks.
No segfaults or crashes
