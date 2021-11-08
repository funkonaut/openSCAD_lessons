/*
Author: Chris Correll
Date: 11/3/2021
Description: This lesson is about debugging in openSCAD we will go over how to find errors in your code and how to fix them. This is the teacher copy.
URL: https://github.com/funkonaut/openSCAD_lessons
*/

//HAVE STUDENTS TAKE NOTES IN THE LESSON BY USING COMMENTS!

/*
Have students open file
- ctrl o
- ctrl l see where the path is pointing and modify it to point to open scad C:\Users\...\Documents\OpenSCAD
- or use tab to navigate to tree list and select documents tab over to openSCAD folder and select it
- open the file lesson_debugging 

Introduce multiline comment and header

Debugging is the process of fixing errors in your code. We will be focusing on sytax errors in this lesson. Syntax errors are errors where we typed something wrong. They are usually pretty straight forward to fix. Debugging can also be where your code is doing something you do not want it to do. For instance say you wanted to cut a cube in half but your code is just making the cube bigger, fixing that is also debugging!

Debugging is called debugging because back when computers where large machines the size of a building they had a lot of parts, one time a bug got into these parts and broke the machine, when they removed the bug (debugged it) the machine started working again

Check for understanding:
-What is debugging?
-Why do you need to debug?
-What type of debugging are we going to focus on today?
*/

/*
Different windows in OpenSCAD
- editor: where we type our code
- console: output from renders and previews. This has a lot of text some of it is important some of it is not. We do not need to worry about it a lot right now.
- error-log: This has a table of the errors in your code they usually show up one at a time. It is a table and has entries for file, line, and error info.
- customizer (hide it for now): We don't need this right now we can hide it in the window menu
- model preview: This has a preview of the model when we render it

- Hit alt w to bring up the list of each window type and hit enter on the window type to change focus to it. You can also hide the windows here

Checks for understanding:
- Change to each window 
- Hide and then show the editor  
*/

/*
Finding an error steps
- Preview code F5
- youll hear table enter table error this is because your focus has been changed to the error table.
- Hit narrator enter to navigate error log table
- enter on line number to move cursor to line where error is
- go back to editor window with alt w e
- your cursor is now near the error
- Make sure punctuation is being read by narrator. To turn punctuation reading on hit narrator alt - you will hear "all" You should do this every time you openSCAD
- Hit narrator i or narrator up arrow to hear the line. you might have to hit it twice if it accidentally reads from the top
- If you hear the error fix it if not arrow up to the previous line and read it.
- If you do not hear the error there arrow down to the next line and read it.
- If you still can not hear the error go to the top of the code and go through each line. 
- You can also hit ctrl alt e to jump to error
*/

/*
Saving file
- ctrl s wil save the file
- use tab navigation to navigate to where you want to save the file or type in the path
- save the path in the file name ie: C:\Users\correllc\Documents\OpenSCAD\file_name.scad
*/

/*
Helpful keyboard shortcuts for editing
- home to go to beginning of line
- end to go to end of line
- ctrl arrow to navigate by word
- end and then shift up to select whole line
- home and shift down to select whole line 
- ctrl shift arrow to select words
- delete will delete the character in front of the cursor
*/

/*
Tab navigation in OpenSCAD
- ctrl n to open new file in a tab
- ctrl tab to navigate forward between tabs
- ctrl shift tab to navigate backward between tabs
- ctrl w to close tab 
*/

//Fix the errors and then comment out the line(s)
//1.
cyliner(4,4,4)

//2.
sphere[r=1]

//3.
tranlate[0,0,1]
sphere(1);




