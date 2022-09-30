/*
Author: Chris Correll
Date: 11/8/2021
Description: Lesson 1.2 Chapter 1. Basic 3D shape modifications.
*/


/*
Center
The sphere command draws a sphere so that it’s centered around 
the origin; the cube, cylinder (and import) do not.abs

The  center will be at (0, 0, 0). Can not import centered shapes.
*/

cube([20, 10, 10],center=true);
cylinder(h=20,r=5,center=true); 

/*
Translate
Moves a shape to a specific location in the Preview window.

The below statement draws a cuboid that is shifted from its default position by 10 units in the negative direction along the x-axis, 20 units in the positive direction along the y-axis, and 0 units along the z-axis.

Cylinder and sphere move with respect to center of shape, cube moves relative to corner in orgin.

*/
translate([-10, 20, 0]) cube([20, 10, 10]);
translate([-10, 20, 0]) //can do in two lines notice no ; after translate
  sphere(r=10); 
  
/*
Roundness
$fn specifies number of faces for a shape. $fn=50 is sufficiently smooth usually. $fn goes up render time goes up. Can be a parameter or its own statement where it will apply to everything before and after!
*/
sphere(r=100,$fn=50);

/*
Student Lesson
Review quadrants in 3d space.
Solutions below:
*/
//Make a cube!

//Move it to the first octant.

//Make a cylinder!

//Move it to the first octant.

//Make a cone!


//Practice 
//Make a mickey mouse shape
cylinder(h=1, r= 3, center=true);
translate([-2,2,0])
cylinder(h=1, r= 2, center=true);
translate([2,2,0])
cylinder(h=1, r= 2, center=true);

//Make a yo-yo
translate([0,0,-2])
cylinder(h=20, r1 = 20, r2 = 0, center=true);
translate([0,0,2])
cylinder(h=20, r1= 0, r2 = 20, center=true);
