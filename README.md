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

## Quoting/Scaping Characters

- To quote, or scape, a character precede it with a backslash (`\`)

- Another way is to enclose them between single quotation marks (`'**'`)

## `cp`

- `cp source-file destination-file`

- Caution: If `destination-file` exists before, `cp` overwrites it. It is good idea to use `-i` or `--interactive` option. It checks with you before overwrites a file.

## `mv`

- `mv existing-filename new-filename`

- If you want to rename a file without making a duplicate copy of it, you can use `mv`

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
