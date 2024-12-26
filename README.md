# linux

## Commands

- Erasing characters: Backspace or `Ctrl + H`

- Deleting a line: `Ctrl + U`

- Deleting a word: `Ctrl + W`

- Abort: `Ctrl + C`

## `man`

- Use `SPACE` bar to show another page

- Use `H` to display a list of `less` commands

- Use `Q` to exit

## `info`

- Use `SPACE` bar or `N` to go to another page

- Use `DEL` or `P` to go back

- `m<Texinfo> RET` visits the Texinfo manual

- `H` lists all Info commands

- `D` to go to the initial menu

- Use `Q` to exit

## `joe`

- Use `Ctrl + KH` for help

- Use `Ctrl + T + SPACE` to toogle between `I`nsert or `O`vertype mode

- Use `Ctrl + Shift + -` to undo

- Use `Ctrl + K + X` to save and exit

- Use `Ctrl + C` and cofirm with `y` to exit without saving

## `cat`, `less` and `more`

- To show a file

- Use `SPACE` bar to go to another page

- Use `B` to go back (`less`)

- Use `Q` to exit

## Quoting/Scaping characters

- To quote, or scape, a character precede it with a backslash (`\`)

- Another way is to enclose them between single quotation marks (`'**'`)

## `cp`

- `cp source-file destination-file`

- Caution: If `destination-file` exists before, `cp` overwrites it. It is good idea to use `-i` or `--interactive` option. It checks with you before overwrites a file.

## `mv`

- `mv existing-filename new-filename`

- If you want to rename a file without making a duplicate copy of it, you can use `mv`

- `mv existing-file-list directory`

- Moves a file or files to a new directory.

- `mv existing-directory-list directory`

- Moves a directory or directories to a new directory.

## `grep` (global regular expression print)

- `grep <word> <filename>`

- `grep '<word> <word>' <filename>`

- It searches for the text and displays each line that has it

- It accepts more the one file

## `head`

- `head <filename>`

- It displays the first ten lines of a file.

- `head -<n> <filename>`. n: number of lines

## `tail`

- `tail <filename>`

- It displays the last ten lines of a file.

- `tail -<n> <filename>`. n: number of lines

## `sort`

- `sort <filename>`

- It displays the contents of a file in order by line.

## `uniq` (unique)

- `uniq <filename>`

- It display a file, skkiping adjacent duplicate lines.

- `sort <filename> | uniq` --> Sorted before processed by `uniq`, ensures that no two lines are the same.

## `diff`

- `diff <filename1> <filename2>`

- It compares two files and displays a list of the difference between them.

## `file`

- `file <filename>`

- It determines file type.

## `echo`

- `echo <text>`

- It display the text on terminal.

## `date`

- `date` --> Tue Dec 24 21:55:08 UTC 2024

- It display the time and date on terminal.

## `ls` (list files)

- `ls -l`: show more info about files.

- `ls -a`: displays _all files_, even invisible ones.

## `gzip`

- `gzip <filename>`

- It compresses a file

- `-v` or `--verbose` option reports how much is was able to compress.

## `gunzip`

- `gunzip <filename>.gz`

- It decompresses a file

## `zcat`

- `zcat <filename>.gz`

- It display the file content decompressed but keeps it compressed.

Note: Do not confuse `gzip` and `gunzip` with `zip` and `unzip`. These are used to pack and unpack zip files containing several files compressed into a single file.

## `tar` (tape archive)

- It original function was to create and read archive tapes. Today it is used to create single files that, when unpacked, create a directory with any level of subdirectories and subfiles beneath it.

- Often the `tar` files are compressed with `gzip`, and has filename extension `.tar.gz` or `.tgz`

- Creating a tar file: `tar cvf <name_of_archive>.tar <dirname>/`

- Creating a tarball (gzipped) file: `tar cvzf <name_of_archive>.tar.gz <dirname>/`

- Separating a tar file into component files: `tar xvf <name_of_archive>.tar(.gz) -c <dirname>/`

Note: You don’t need to specify the directory name while separating a tar file into its component files. You can specify the directory name if you want to extract the tar file to directory other than the current one.

- <https://blog.udemy.com/tar-command-in-linux>

## `which`, `whereis` and `type`

- Helps to locate commands by giving its pathname to the file for the command.

- When you type the name of a command, the shell searches for the command in your search path and runs the first one it finds.

- `which` finds which copy of the program the shell runs.

- `whereis` looks in a few standard locations instead of using your search path. It also find any `man` pages for the command.

- `type` also shows if the command is a shell builtin or its pathname.

## `apropos`

- `apropos sort` --> `man -k sort` (-k: keyword)

- It lists the short description lines for all man pages that contain the keyword somewhere in the header line.

## `who`, `whoami`, `w` and `finger`

- For obtaining users and system information

## `write`, `talk`, and `pine` (email)

- For communication with other users

- `mesg n` --> to disable messages

- `mesg y` --> to enable

## Invisible file/directory

- `.dockerenv` / `.git`

- A filename that begins with a period is called _invisible file_ because `ls` does not display it.

- The command `ls -a` displays _all files_, even invisible ones.

## `mkdir`

- `mkdir /home/dafdev/docs`

- It creates a directory.

## `rmdir`

- `rmdir /home/dafdev/docs`

- It removes a directory.

- You cannot delete the working directory or a directory that contains entries other than `.` and `..`.

- If you need to delete a directory with files in it, first delete the files using `rm` and then delete the directory.

- `rm -r <directory>` --> recursively deletes the files (and other subdirectories) whithin a directory and also deletes teh directory itself.

- **Caution**: You must use it carefully. It is quite easy to wipe out your home directory with a single, short command.

## `pwd` (print working directory)

- `pwd`

- It displays the pathname or the working directory.

- When you first log in on a Linux system, the working directory is your _home directory_.

## Startup files

- The shell executes the commands in this file each time you log in.

- `bash` --> `.profile`

- `zsh` --> `zprifile`

## `cd` (change directory)

- `cd var/log`

- Without an argument, `cd` makes your home directory the working directory, as it was when you first logged in.

## Special pathnames

- `~/` --> at the start of a pathname denote your home directory

- `~<user>/` --> A tilde followed by a login name denotes that's user home directory.
