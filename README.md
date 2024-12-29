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

- Use `Ctrl + T + SPACE` to toggle between `I`nsert or `O`vertype mode

- Use `Ctrl + Shift + -` to undo

- Use `Ctrl + K + X` to save and exit

- Use `Ctrl + C` and confirm with `y` to exit without saving

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

- It display a file, skipping adjacent duplicate lines.

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

- `ls -l`: (long) show more info about files.

- `ls -a`: (all) displays _all files_, even invisible ones.

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

- `rm -r <directory>` --> recursively deletes the files (and other subdirectories) within a directory and also deletes teh directory itself.

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

## Access permissions

- Three types of users can access a file:

  - the owner of the file (_owner_)
  - a member of a group to which the owner belongs (_group_)
  - everyone else (_other_)

- A user can attempt to access a ordinary file in three ways, by trying to:

  - _read from_
  - _write to_
  - _execute it_

- Three types of users, each able to access a file in three ways, equal to a total of _nine possible_ ways to access a ordinary file.

- `ls -l` --> `drwxr-xr-x   2 root root 4096 Apr 22  2024 boot`

## Changing access permissions

- The owner of a file controls which users have permission to access the file and how they can access it.

- `chmod` (change mode)
  - `chmod a+rw <filename>` --> adds (+) read and write (rw) for all users
  - `chmod o-rx <filename>` --> removes (-) read and execute (rx) permissions for other (o) users

- In addition to `a` (for _all_) and `o` (for _other_), you can use `g` (for _group_) and `u` (for _user_, although user actually refers to the owner of the file, who may or may not be the user of the file at any given time)

- Note: The user who knows the `root` password can log in as **Superuser** and have full access to _all_ files, regardless of owner or access permissions.

## Directory access permissions

- Access permissions have a slightly different meanings when used with directory. Execute access permission is redefined for a directory. It means you can search through the directory. It has nothing to do with executing a file.

- `chmod a+rwx <dir>`

## Links

- `ln` (link): creates an additional link to an existing file.

- `ln existing-file new-link`

- The `ln` utility creates am additional pointer to an existing file. It does not make another copy of the file. The file status information is the same for all links. Only the filenames differ.

## `df`

- It displays all mounted filesystems along with information about each.

## The terminal as file

- The Linux system has an additional type of file, a _device file_. A device file resides in the Linux file structure, usually in the `/dev` directory, and represents a peripheral device such as a terminal, printer or disk drive.

- The command `tty` displays the name of the terminal you give the command from.

## Redirecting standard output (`>`)

- `command [arguments] > filename`

- It instructs the shell to redirect a command's output to the specified file instead of to the terminal.

- `cat file1 file2 > file3` --> it redirects file1 and file2 output to _catenate_ (join one after the other) several files into one larger file.

## Redirecting standard input (`<`)

- `command [arguments] < filename`

- It instructs the shell to redirect a command's input from the specific file instead of the terminal.

- Note: A feature called `noclobber` (in `bash`), `NO_CLOBBER` (in `zsh`), stops you from inadvertently overwriting an existing file using redirection.

## Appending starndard output to a file (`>>`)

- `cat pear >> orange`

- It causes the shell to add the new information to the end of the file, leaving intact any information that was already there. It is a convenient way of catenating two files into one.

- Be careful to include both _greater-than_ signs.

## Using `/dev/null`

- The `dev/null` device, commonly called a bit-bucket, is a place you can redirect output that you do not want.

- `echo "hi there" > /dev/null`

## Pipes (`|`)

- The shell uses a _pipe_ to connect standard output of one command directly to standard input of another command.

- `command_a [arguments] | command_b [arguments]`

- You can use `-` to represent standard input when needed. Example: `cat memos.new | diff - memo.draft`

## Filters

- A _filter_ is a command that processes an input stream of data to produce an output stream of data.

- In the following example `sort` is a filter.

- `who | sort | lpr`

## `tee`

- You can use the `tee` utility in a pipe to send the output of a command to a file while also sending the output to standard output.

- `who | tee who.out | grep scott`

## `tr`

- Maps one string of characters into another

- Example: Translate all occurrences of characters `[` and `{` to `(`, and all occurrences of `]` and `}` to `)`

- `tr [{]} (()) < filename`

## Running a program in the background

- Running a command in the background can be useful if the command will be running for a long time and does not need supervision.

- To run a command in the background, type an ampersand (`&`) just before the `RETURN` that ends the command line.

- The shell assigns a small number to the job called a _job number_ and displays it between brackets. Following the job number, the shell displays the _process identification_ (PID) number.

- Example:

```txt
root@500cb9f8dd75:/# ls -l > file-list.txt &
[1] 67
[1]+  Done                    ls --color=auto -l > file-list.txt
root@500cb9f8dd75:/# 
```

- The interrupt key (usually `Ctrl + C`) cannot abort a process you are running in the background; you must use `kill` utility for this purpose. Follow `kill` on the command line with either the PID number of the process you want to abort or a percent sign (`%`) followed by the job number.

- If you forget the PID number, you can use `ps` (process status) utility to display it.

- If you forget the job number, you can use the `jobs` builtin to determine the job number of the background job.

- `bg` --> Moves a process to the background

- `fg` --> Moves a process to the foreground

## Filename generation / pathname expansion

- _metacharacters_ / _wildcards_ --> characters that have a special meaning to the shell.

- When one of these special characters appears in an argument on the command line, the shell expands that argument into a list of filenames and passes the list to the program that the command line calls.

- Filenames that contain these special characters are called _ambiguous file references_ because they do not refer to any one specific file.

- The process that the shell performs on these filenames is called _pathname expansion_ or _globbing_.

### `?`

- It matches any single character in the name of a existing file.

- `ls memo?` --> matches `memo5`, `memo9`, `memoa`, `memos`

### `*`

- The asterisk performs a function similar to that of the question mark, except that it matches any number of characters, _including zero characters_, in a filename.

- `ls s*`, `ls *.txt`

### `[]`

- A pair of square brackets surrounding a list of characters causes the shell to match filenames containing the individual characters.

- Each character-class definition can replace only a single character, _one at a time_, within a filename.

- `cat page[2468].txt` --> `page2.txt`, `page4.txt`, `page6.txt` and `page8.txt`

- A hyphen defines a range of characters.

- `cat page[6-9].txt` --> `page6.txt`, `page7.txt`, `page8.txt` and `page9.txt`

## Networking and the Internet

- People generally find it easier to work with symbolic names rather than numbers, and Linux systems provide several ways to associate hostnames with IP addresses. The oldest method is to consult a list of name and addresses that are stored in the `/etc/hosts` file.

```txt
root@500cb9f8dd75:/# cat etc/hosts
127.0.0.1       localhost
::1     localhost ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
172.17.0.2      500cb9f8dd75
```

- The address `127.0.0.1` is reserved for special hostname `localhost`, which serves as a hook for the system's networking software to operate on the local machine without actually going out onto a physical network.

- Using a regular text file for theses name-to-address mappings proved to be inefficient and inconvenient, as more hosts joined the networks and the file grew ever larger and impossible to keep up top date. The most popular solution today is for systems to subscribe to the Domain Name Service (DNS). It erectly addresses the efficiency and update issues.

- A common convention for the format of network addresses: `user@host` (often read as _user at host_). When you use an `@` sign in an argument to a command, the utility interprets the text that follows as the name of a remote host computer. When it does not include an `@` sign or hostname, it assumes requesting from a local host.

- To identify the computer you are using, run `hostname`

## `rcp` (remote copy) and `ftp` (file transfer protocol)

- `rcp memo.921 bravo:memos/memo.921`: bravo is a remote system

- `ftp` is interactive.

## `ping`

- The `ping` utility sends a particular kind of IP data packet to a remote computer that causes the remote system to send back a reply. This is a quick way to verify that a remote system is available, as well as to check how well the network is operating.

## `vim` (`vi`)

- The tildes (`~`) indicates that the file is empty.

- To leave without saving: `ESCAPE` + type `:q!` + `RETURN`

### Command and Input Modes

- In Command Mode, you can give `vim` commands.

- In Input Mode, `vim` accepts anything you enter as a text and displays it on the screen.

- Press `ESCAPE` to return to Command Mode.

- The colon (`:`) puts `vim` into another mode, _Last Line Mode_.

- There are three types of Input Mode: OPEN, INSERT, and APPEND.

### Entering text

- To put `vim` in Input Mode, press the `i` key.

#### Correcting text as you insert it

- The keys that allow you to back up and correct a shell command line serve the same functions when `vim` is in Input Mode.

- These keys include the erase, line kill and word kill keys (`Ctrl + H`, `Ctrl + U` and `Ctrl + W`)

#### Moving the cursor

- In Command Mode, you can use `RETURN`, `SPACE` and `ARROW` keys to move the cursor.

- Also, `h`, `j`, `k` and `l` (ell) keys to move left, down, up and right, respectively.

#### Deleting text

- In Command Mode, you can delete a single character with `x`, a word with `dw` (delete word) and a line with `dd`

#### The Undo command

- Use `u` (undo)

#### Inserting additional text

- When you want to insert new text within text that you have already entered, move the cursor to where you want to insert a new text.

- Then give the `i` (insert) command to go to Input Mode.

- To enter one or more lines, give the command `o` (open). The `vim` editor opens a blank line, puts the cursor on it, and goes to Input Mode.

#### Correcting text

- A shorthand for the two commands `dw` followed by the `i` command is `cw` (change word). The command `cw` automatically puts `vim` into Input Mode.

### Ending the editing session

- While you are editing, `vim` keeps the edited text in an area called _Work Buffer_.

- When you finish editing you must write out the contents of the Work Buffer to a disk file so that the edited text is saved and available when you next want it.

- You can use `:wq!` + `RETURN` or `ZZ` (uppercase `Z`s)

### `view`

- If yu want to use `vim` editor to look at a file but not change it, you can use the `view` utility.

- It calls `vim` editor with the -R (read-only) option.

### `:w filename`

- To name the file and write it to the disk.

### `!`

- The exclamation point is necessary only when you have made changes since the last time you wrote the Work Buffer to disk.

### Recovering text after a crash

- `vim -r filename`

- If your work was saved, you will be editing a recent copy of your Work Buffer.

### Moving the cursor by characters

- `<n>SPACE` or `<n>l` or `<n>->` --> moves the cursor n characters to the right

- `<n>BACKSPACE` or `<n>h` or `<n><-` --> moves the cursor n characters to the left

### Moving the cursor to a specific character

- `fa` --> moves the cursor to the next occurrence of `a`

- `Fa` --> moves the cursor to the previous occurrence of `a`

- `;` --> repeats the last Find command

### Moving the cursor by words

- `w` --> moves the cursor forward to the first letter of the next word.

- `W` --> moves forward by blank-delimited words, skips punctuation.

- `b` --> moves the cursor backward to the first letter of the previous word.

- `B` --> moves backward by blank-delimited words, skips punctuation.

- `<n>w` or `<n>b` --> moves a specific number of words

### Moving the cursor by lines

- `RETURN` --> moves the cursor to the beginning of the next line.

- `j` or `DOWN ARROW` --> moves it down one line to the character just below the current character.

- `k` or `UP ARROW` --> similar to before but in the opposite direction.

- `-` --> similar to `RETURN` but also in the opposite direction.

### Moving the cursor by sentences and paragraphs

- `)` --> moves forward to the beginning of the next sentence.

- `}` --> move forward to the beginning of the next paragraph.

- `(` --> moves backward to the beginning of the previous sentence.

- `{` --> move backward to the beginning of the previous paragraph.

### Moving the cursor within the screen

- `H` --> moves the cursor at the left end of the top line of the screen.

- `M` --> moves to the middle of the screen.

- `L` --> moves to the lower bottom line.

### Viewing different parts of the Work Buffer

- `Ctrl + F` --> Scroll forward

- `Ctrl + D` --> Scroll down half screen

- `Ctrl + B` --> Scroll backward

- `Ctrl + U` --> Scroll up half screen

- `<n>G` --> goes to line number `n`

- `G` --> goes to last line
