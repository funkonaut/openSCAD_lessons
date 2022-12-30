# Getting Started with PowerShell
In this brief guide you will learn some basics about Microsoft **PowerShell**. The point of this guide is to get you up and running with PowerShell so that you can use it to 3D print and slice your models independently. Follow along with the tutorial.

## Pre-Requisite Knowledge
- Typing skills
- Text editing skills
- Basic Windows Navigation skills
- Basic screen reading skills
- Basic knowledge of what a computer **operating system** is and its features (ie file/folders/applications/shortcuts/file extenstions/etc.)
- Basic knowledge of computer hardware (hard drive/usb and other peripheral ports/cloud vs local storage)
- Basic understanding of variables and parameters
- Basic internet navigation skills and (URL structure)

## What is PowerShell?
Windows PowerShell is "a cross-platform task automation solution made up of a **command-line shell**, a scripting language, and a configuration management framework. PowerShell runs on Windows, Linux, and macOS," but what the heck does that mean? 

Essentially PowerShell is a way to access your computer through text instead of through a graphical user interface (**GUI**). Most computer users are sighted therefore most computer programs and operating systems have a GUI where users interact with the computer primarily by using a mouse to navigate to and click on elements. PowerShell is, primarily for our purposes, a command-line shell this means we can control the computer with a keyboard and text instead of through GUI with a mouse! PowerShell also has a scripting language and a configuration managment framework, but we don't really need to worry about that (if are interested check out the links under the Helpful Resources heading), for now if you understand what a command line-shell is then we are good to move on.

### What will we do with it and why should we use it?
We will use PowerShell to run several different programs from their command-line interface (**CLI**). If you remember what our command-line shell is then you should be able to infer that a command line interface is, a text based interface for interacting with an application, don't worry if you are confused it will make more sense when we start to practice. We will also use PowerShell to navigate and move files and folders on our computer, the PowerShell allows us to navigate our computer much like the file explorer, but with text, i.e. without having to tab around or use keyboard shortcuts. As you might have guessed, the powershell is pretty useful if you are navigating your computer auditorily. At the end of this lesson you will understand how the command line shell can be super powerful. 

- Bin bash and built in Windows cli commands

## Tutorial
The best way to learn (in my opinion) is by doing. So lets launch a PowerShell and see what this thing can do. Windows X will pull up a list of options where you can select PowerShell you can also use the Windows key to search for PowerShell.             

Upon launch it will read you a header that has some copyright information and a warning that it detected a screen reader, it will then read you where you are currently at in the computer. You are now in a command-line shell (command-line for short). 

We call where things are located in the computer a **path** an adress to a fodler or file. Its kind of like a URL for where files and folders are on your computer. A path will read something like `C:\Users\name\`. When you launch PowerShell it should default you to your **home directory**. Directory is just another name for a folder they can be used interchangably. The home directory has a path shortcut it is `~/` this will be useful so you don't have to type `C:\Users\name\` every time you want to use the home folder path. 

**parent directory** 
Paths are structured by seperating folder and file names with either a forward or backslash. Each seperation is a level. The **root directory** is the lowest level directory it will typically be `C:\` a shortcut for it is `/`. For instance `C:\Users` is the path to all of the folder containing all of the Users on the C: drive. A path will typically be made up of folders and subfolders and will end in a file name. You would not see something like
`/Users/photo.jpg/name/filename.txt` 
This would mean that a file has a subfolder, which can not be the case. Folders can have sub folders but files can not.

You can use the tab key to autocomplete directory or file names when typing a path 
**try typing `~/D` and then press tab**
This will autocomplete to the full home path and most likely your Desktop folder if you hit tab again it will go through the next folder starting with D in alphabetical order. If you dont type anything and press tab it will go through the folders and files in your current path in alphabetical order.

You may notice that we typed a forward slash to seperate the folders and the path autocompleted to using back slashes on Windows the system uses back slashes on other operating systems like Mac and Linux it uses forward slashes since everyone likes those better Windows added support for forward slashes in ther powershell command line environment we are going to stick with forward slashes for the most part.

A final note on paths `./` is a shortcut to the current path and `../` is a shortcut to the path above the current path. Try typing 
`./` and tab a couple times to listen to the files and folders in your current path
`../` and tab a couple times to listen to the files and folders in the folder above your current path

You may have noticed some files and directories begin with a "." this means they are hidden and thusly GUI users most likely won't use them or know about them. 

Quotes surround paths with spaces for string 

#### Realtive paths vs full paths 
relative paths are usually quickerwiyth the screen reader because full paths even with shortcuts autocomplete to full path name ie "C:/user/etc/etc/etc"

### parameters
sperated by space
flag wiht a -  

### Shell layout and functioning
Tab key autocomplete 

#### Command history
Arrow key up and down 

### Copying and pasting into and from the powershell
clip 

### Users 
whoami

#### Shell Command Input and Output 
Commands pressing enter

##### Errors 
If you type something incorrectly you will get an error. Usually a whole bunch of text. Try typing an incorrect path
`./blah`
Unless you have a folder named "blah" you will get an error message. These can be helpful but sometimes have way to much information, generally listen to it if you are confused move on if you know what is wrong. You will most likely encounter lots of these going forward and will become familiar with them.

#### control -c 
aborting commands

#### clear

#### history
#### exit
#### man

### Navigational Commands
#### pwd

#### ls
The ls command stands for "list" it is how we see the files and folders in our current path. Try it out. You are gonna here a lot of output. Starting with the current directory path, then a table. By defauly this table includes (Attributes), LastWriteTime, file size (Length), and the Name of the item. Listen to it but don't worry if you are not sure what this all means yet.

##### Screen reader adaptions 
Add a  `-n` to the end of ls. This is known as a flag. It instructs the ls command to only have ls display file and folder names (n short for names). Try it
`ls -n`
Ahh much better. Sometimes we need all of the infromation about a file or folder but usually we just want the names. You can use the flag `-ad` or -`af` to list only the directories or files. Try it
`ls -n -af`
`ls -n -ad` 

You can use ls with a path as well just put it after any of your flags. For instance try this:
`ls -n -af ~/Documents`

This will display the names of all files in your `Documents` folder

#### Wildcards: * and ? 
The `*` wildcard will match zero or more characters.
The `?` wildcard will match a single character.

#### cd
The cd command stands for "change directory" it is the main command we use for navigating the command line. 
`.`. and `..`

### File and Folder Manipulation and Modification

#### mv
renaming
#### cp (-r)

#### mkdir
#### rm
#### rmdir

#### ni (non-linux touch equivalent)
#### gdr (non-Linux equivalent to df) 
Get drive names and data used and free, recommend output to txt file


### Input, Output and Piping
#### cat 
#### echo
#### > (> $null supress output)
#### |
#### text editing   
notepad.exe

$null > filename.txt or command > $null nothing output
echo > 
echo blah | clip

### Aliases (NOT SAME AS LINUX?)

### Running Apps
# zip and compression?

### Important Notes: **Command-line Environment**, **Environment Variables**, and the **PATH Variable** 
When you launch a PowerShell you will automatically be logged in with the current user account you are logged into. The environment refers to the settings and preferences of the current user. You can change these settings by editing variables these are called **environment variables**. The most useful of these (for us atleast) is the PATH variable. The PATH variable tells the command-line where to look for your apps. It is a collection of folder paths that hold the CLI apps you wand to run. Its is essentially a shortcut so we wont have to type out the path to the CLI application every time we want to run it. 

You can see the value of one of your current command-line environemnt variable by typing the command: 
`echo $env:{VARIABLE NAME}` 
for instance 
`echo $env:PATH` 
will display a semi-colon sperated list of all of the folder paths stored in your PATH environment variable. 

You can permanently add a folder path to the variable by typing the command 
`[Environment]::SetEnvironmentVariable("Path", $env:Path + ";{FOLDER PATH}", "Machine")` 
This permanently adds what ever you type for {FOLDER PATH} into your system environment variables for all users. **In order to run this command you must have run PowerShell as administrator.**

#### Steps to run PowerShell as Administrator (is there a better way???) -> sudo?
1. Window-X 
2. Windows PowerShell (Admin) 
3. Change application focus (alt + tab) to "User Account Control" This is a pop up that asks if you want to change setting on the computer its doesnt default your focus to it upon launch (as of 2022 in Windows 10).
4. alt + y to select yes



## Other Shells and Alternative Usage 
There are many ways to use PowerShell, for this tutorial we foucesd, on some of the simplest (and most easily extendable) ways  to get you going. Most of the PowerShell commands we have covered are not actually Powershell commands but (linux-flavored aliases)[https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/using-aliases?view=powershell-7.3] for PowerShell commands. That way the concepts and commands are very easily extendable to other shell environemnts such as the Linux shell (WSL, or Windows Subsystem for Linux).

## Helpful Resources
(Accessibility in PowerShell ISE by Microsoft)[https://learn.microsoft.com/en-us/powershell/scripting/windows-powershell/ise/accessibility-in-windows-powershell-ise?view=powershell-7.3]
(Learn PowerShell Microsoft)[https://learn.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.3]
(Setting the PATH variable in PowerShell)[https://poshcode.gitbook.io/powershell-faq/src/getting-started/environment-variables]
(PowerShell Aliases)[https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/using-aliases?view=powershell-7.3]
(linux commands)[https://www.guru99.com/linux-commands-cheat-sheet.html]
(PowerShell cheat sheet)[https://www.theochem.ru.nl/~pwormer/teachmat/PS_cheat_sheet.html]
(Learn powershell github)[https://github.com/PowerShell/PowerShell/tree/master/docs/learning-powershell]
(Guru99 page)[https://www.guru99.com/powershell-tutorial.html]
(PS for beginners Book scripting)[https://f.hubspotusercontent20.net/hubfs/4890073/PowerShell%20for%20Beginners%20eBook.pdf]
## Future Ideas
- linux
  - grep/regex
  - networking in linux
  - package managemnet (apt-get/pip)
  - more linux commands
  - directory stacks
  - more advanced piping 
  - file compression/de
  - process management (ps kill %% bg fg)