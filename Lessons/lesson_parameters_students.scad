/*
Author: Chris Correll
Date: 11/3/2021
Description: Learn about parameterizing your code for easy modifications! Cut a sphere in half and then slice up some pizza. This lesson could be supported with a graph board and blocks of different sizes.
URL: https://github.com/funkonaut/openSCAD_lessons
*/

//Global Variables
$fn=30;

//Declare a global variable radius

//your code here!

//Use the variable as a parameter in two shapes try changing it and see what happens! 

//your code here!

/*
//Non parameterized code
difference(){
    sphere(10);
    translate([0,0,5])
#      cube([20,20,10],center=true);  //use the # to show the difference shape
}
*/

/*
//Parameterized code
//Parameters
r_s=10;
difference(){
    sphere(r_s);
    translate([0,0,r_s/2])
      cube([r_s*2,r_s*2,r_s],center=true);
}
*/

/*
//Practice: Pizza slices
//Fill in the parameters with the variables h and r to create a parameterized half pie pizza slice
//
h=1;
r=10;    
difference(){
    cylinder(,,center=true);
    translate([,,])
      cube([,,],center=true);
}
*/

/*
//Create a paramterized quarter pizza slice anywhere

your code here!

*/

/*
//BONUS or Homework: Create a parameterized quarter pizza slice in the adjacent quadrant from the previous quarter slice.

your code here!

*/
