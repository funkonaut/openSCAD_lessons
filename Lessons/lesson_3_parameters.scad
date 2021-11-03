/*
Author: Chris Correll
Date: 11/3/2021
Description: Cut a sphere in half. Then parameterize it!
URL: 
*/

//Global Variables
$fn=30;

//Lesson
//Non parameterized code

difference(){
    sphere(10);
    translate([0,0,5])
      cube([20,20,10],center=true);
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

//Homework
//Pizza slices
//Half pie pizza slice
/*h=1;
r=10;    
difference(){
    cylinder(h=h,r=r,center=true);
    translate([0,r/2,0])
      cube([r*2,r,h],center=true);
}*/

//Quarter pizza slice anywhere
/*h=1;
r=10;    
difference(){
    cylinder(h=h,r=r,center=true);
    translate([0,r/2,0])
      cube([r*2,r,h],center=true);
    translate([r/2,0,0])
      cube([r,r*2,h],center=true);
}*/

//BONUS: Quarter pizza slice in the adjacent quadrant
/*h=1;
r=10;    
difference(){
    cylinder(h=h,r=r,center=true);
    translate([0,-r/2,0])
      cube([r*2,r,h],center=true);
    translate([-r/2,0,0])
      cube([r,r*2,h],center=true);
}
*/
