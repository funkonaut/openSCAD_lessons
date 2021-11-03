/*
Author: Chris Correll
Date: 11/3/2021
Description: Learn about parameterizing your code for easy modifications! Cut a sphere in half and then slice up some pizza. This lesson could be supported with a graph board and blocks of different sizes.
URL: https://github.com/funkonaut/openSCAD_lessons
*/

//Global Variables
$fn=30;

//Non parameterized code
difference(){
    sphere(10);
    translate([0,0,5])
#      cube([20,20,10],center=true);  //use the # to show the difference shape
}

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
//Create a parameterized half pie pizza slice
//Hints: use a cylinder for your pizza
h=1;
r=10;    
difference(){
    cylinder(h=h,r=r,center=true);
    translate([0,r/2,0])
      cube([r*2,r,h],center=true);
}
*/

/*
//Create a paramterized quarter pizza slice anywhere
h=1;
r=10;    
difference(){
    cylinder(h=h,r=r,center=true);
    translate([0,r/2,0])
      cube([r*2,r,h],center=true);
    translate([r/2,0,0])
      cube([r,r*2,h],center=true);
}
*/

/*
//BONUS or Homework: Create a parameterized quarter pizza slice in the adjacent quadrant from the previous quarter slice.
h=1;
r=10;    
difference(){
    cylinder(h=h,r=r,center=true);
    translate([0,-r/2,0])
      cube([r*2,r,h],center=true);
    translate([-r/2,0,0])
      cube([r,r*2,h],center=true);
}
*/
