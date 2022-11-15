# Getting Started with Slic3r

## Command Line Slic3r Install
- [Download Slic3r](https://github.com/slic3r/Slic3r/releases/tag/1.3.0)
  - 64 bit for windows 
  - Dmg file for mac
  - Tar file for linux


### Windows Install
**PREREQ: basic command line knowledge, typing skills, basic knowledge of how command lines work and folder nav file navigation**

1. Extract downloaded folder into a known location we recommend C:\Program Files but this can be anywhere just make sure you take note of the path
2. *Optional but highly recommended* These steps will allow you to run the slic3r program from anywhere and not just in the program folder. You will add the Slic3r-console.exe to your system environment variables PATH variable 
  1. Open powershell
  2. *If you do have admin access* Run powershell as admin and type `[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Slic3r-1.3.0.64bit", "Machine")` replace `C:\Program Files\Slic3r-1.3.0.64bit` with whatever the path to your slic3r program folder is
  3. *If you do not have admin access* You can check out [this article about customizing your shell profile](https://www.howtogeek.com/50236/customizing-your-powershell-profile/) and [this stack overflow answer](https://stackoverflow.com/questions/714877/setting-windows-powershell-environment-variables)
  4. Test and make sure it worked by running powershell and typing `slic3r- ` and pressing tab it should autocomplete to `Slic3r-console.exe` and then add the help flag the whole command should read `Slic3r-console.exe --help` and will output a whole lot of text you can pipe it to a text file (ie: `Slic3r-console.exe --help > slic3r_help.txt` if you are interested in reading it or [visit the slic3r documentation page on using the command line tools](https://manual.slic3r.org/advanced/command-line)

  *Note:The slicer-console exe is the one you want for command line commands the other slicer exe files are not for command line usage, and will most likely launch the inaccessible slic3r GUI program*

## Using Slic3r
**We highly recommend [reading the docs!](https://manual.slic3r.org/advanced/command-line), thats why we have linked them twice already in this documentation!**
In this folder you will find a subfolder [profiles](./profiles) that will have different slicing profiles for different printers. We obtained these by setting up the profile in the prusa-slicer GUI program (not very accessible) and exporting them to .ini files you can use these with your printer. Feel free to contribute ini files for other printers. Using a profile can be helpful to get you started printing fast.





