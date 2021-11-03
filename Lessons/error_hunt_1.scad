/*
Author: Chris Correll
Date: 11/3/2021
Description: Exercise error hunt. Delete the multi line comments that surround the code and see if you can find the errors. Do each exercise one at a time and comment it out and write a comment explaining the errors below it. 
URL: https://github.com/funkonaut/openSCAD_lessons
*/

$fn=30;

//Example error hunt problem
cylinder(1,2,3)
//Example error hunt solution (change the above line to look like this)
/*
cylinder(1,2,3);
*/
//The error here was that cylinder did not have a semi colon at the end.

//1. There are 2 errors in this code. Find them and fix them!
/*
difference{
    cylinder(h=2, r1=2, r2=2);
    cylinder(h=2, r1=0, r2=2)
}
*/

//2. There are 4 errors in this code. Find them and fix them!
/*
union(){
    cube(10,10,10,center=true);
    translate([0,7.5,0]);
      cube([5,5,5],center=true)  
}
*/

//3. There are 2 errors in this code. Find them and fix them! Hint think placement. 
/*
sphere(10)
translate([0,10]) //you can have a vector of 2 or three numbers
*/

//4. There are 3 error in this code. Find them and fix them!
/*
union(1)
    sphere(r=5);
    cylinder(r = 10, h = 20);
*/
