# Batch files for Competitive Programming

## Overview

The purpose of this project is to support the competitive programmer who is using Window to compile, run, ... source file.
This is also included for who is using [Command prompt](https://en.wikipedia.org/wiki/Cmd.exe)

This project mainly supports [C++](https://en.wikipedia.org/wiki/C++) 
source files (`*.cpp`) and will only be of use for C++ programmers. 

You can edit the file locally in order to work with other languages

**This readme.md is currently tutorial for Window 10 users! The syntax of the commands is still the same for Window 7+ users.** 



## Installation

### Install C++ Compiler:

**_You can skip this step if you machine have GCC installed_**

There are a lot of GCC compiler's version. You can choose one of these to install, but they usage should be the same:

* [GNU Collection](https://gcc.gnu.org)

Recommend: Version 7.3.0 or later (C++17)

* [TDM-GCC](https://jmeubank.github.io/tdm-gcc/download)

Recommend: Version 7.3.0 or later (C++17)

**Note: Install latest version (10.3.0 or later) is installing C++20. This is not recommend since
there are a lot of website doesn't support this**

### Install project normally (Recommend)

In the repository, you can find a green button with **Code** on it. Then you select **Download ZIP** and choose a location for your file

After downloaded the file, you need to extract it in order to use the Batch files

### Install project with command line

#### Install Git (In case you haven't install it)

You can find the download link [here](https://git-scm.com/downloads). Run the installer and wait until it finish.

#### Open command line (cmd.exe)

There are several ways to open your command line which can be found 
[here](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10). 
Here is one of them:

Open your **Start** menu in your taskbar then type in **cmd**. It should appear in the search list as **Command Prompt**. 

Open it then go to a location that I want to install. 

For example, I want to download at **D:\BatchFile**. It should appear like this:

```
D:\BatchFile>
```

**If you don't know how to go to the location that you want to install, 
you can [see this blog](https://www.thewindowsclub.com/how-to-open-command-prompt-from-right-click-menu)**

After you're done, type in `git clone https://github.com/QuangBuiYT/BatchForCP.git`. It should be like this:

```
D:\BatchFile>git clone https://github.com/QuangBuiYT/BatchForCP.git
```

Press `Enter` and wait until it finish.

After you are done. You are ready to go to the next section: **Setup**

## Setup

You need to add the project's **folder location** to your machine's **PATH variable**. There is a detailed blog for this can be found 
[here](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10)

In case you don't want to add, you need to place the project **files** to the same location of your source code.

## Usage

Most of the commands are being execute by the following parameter:

```
D:\MyCode>[command_name] [argument]
```

For example, I want to compile file `A.cpp` with simple flag, I can do:

```
D:\MyCode>com A
```

### `com.cmd` & `bld.cmd`

Example: Compile your source file with the given flag. You can edit your compile flag as you want in variable `flags`.

* `com.cmd`: Compile source code with basic flag (and optimization **-O2**).

This command mostly use for stress test. You can use this as your main compile flag but you need to beware of
[Array index out of bound](https://www.geeksforgeeks.org/accessing-array-bounds-ccpp) 
or anything related to [Runtime error](https://www.geeksforgeeks.org/runtime-errors)

Example: Command line to compile file `A.cpp`:

```
D:\MyCode>com A
```

**Note: Do not type** `com A.cpp` **or any file with extension** `.cpp` **on it.** 
**It will compile** `A.cpp.cpp` **(from the above exmaple) instead! This also applied for** `bld.cmd` **command!**

* `bld.cmd`: Compile source code with lots of flag related to debugging, exception, etc...

*This command is related to `do.cmd`*

This command is recommend to use for compile. 
It will detect unwanted bugs (Or [Runtime error](https://www.geeksforgeeks.org/runtime-errors) for short).

Example: Command line to compile file `A.cpp`:

```
D:\MyCode>bld A
```

===

### `cat.cmd`

Create a text file with the given name in `[argument]` then open it with notepad.

You need to save then close it before continue using command line.

**If the text file have been exist, it will constantly overwrite with no text in it. You need to beware about the file you
are going to do! If you file have been exist, it is strongly recommend to backup it before using this command!**

Example: Command line to use with file `message`

```
D:\MyCode>cat message
```

Or `input.in`

```
D:\MyCode>cat input.in
```

===

### `catin.cmd`

*This command is related to `run.cmd` and `do.cmd`*

Create a text file with the given name in `[argument].in` then open it with notepad.

You need to save then close it before continue using command line.

This command is often use for single input file

**If the text file have been exist, it will constantly overwrite with no text in it. You need to beware about the file you
are going to do! If you file have been exist, it is strongly recommend to backup it before using this command!**

Example: Command line to use with file `input.in`

```
D:\MyCode>catin input
```

===

### `catout.cmd`

*This command is related to `run.cmd` and `do.cmd`*

Create a text file with the given name in `[argument].out` then open it with notepad.

You need to save then close it before continue using command line.

This command is often use for single output file

**If the text file have been exist, it will constantly overwrite with no text in it. You need to beware about the file you
are going to do! If you file have been exist, it is strongly recommend to backup it before using this command!**

Example: Command line to use with file `output.out`

```
D:\MyCode>catin output
```

===

### `init.cmd`

Simply delete `[argument].in` and `[argument].out`.

Example: This will delete `A.in` and `A.out`

```
D:\MyCode>init A
```

**Beware that if you only do `init` with no argument, it will delete all files with extension `*.in` or `*.out`.**

===

### `run.cmd`

*This command is related to `do.cmd`*

Simply just run `[argument].exe` with input file `[argument].in`.

If the input file doesn't exist, the command will run `catin [argument]` first then run the program.

Example: Command line that run execucation file `A.exe`

```
D:\MyCode>run A
```

===

### `do.cmd`

This command will compile the program with `bld.cmd` then run the program with `run.cmd`.

If the compilation failed, it will not run the program.



## Project's status:

This project is uncompleted since the batch files still have a lot unexpected errors.

If you know_how/want to fix/contribute/... the batch or suggest something to make the project better, 
**Contribution** section is a great for you.



## Contributing:

You can find it in `contributing.md`


## License

[GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-3.0)















