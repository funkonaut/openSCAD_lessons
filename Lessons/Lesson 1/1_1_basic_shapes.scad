//Author: Chris Correll
//Date: 11/3/2021
//Description: Lesson 1.1 Basic 3D shapes Solutions


/*
Have student review terminology.txt for list of terminology before class. 
Review XYZ coordinate system and different windows: preview and editor. 
*/

/*
Create your more shapes
Explain two parts of shape. Parameters define. ; needed
F5 to preview shape. 

*/
//Resolution 40 is good enough for most cases
$fn = 40;

//Help Cheat sheet alt - h - c
//Cube
//Notice how shape corner is at (0,0,0) or the origin. Change the numbers in the [] see how it grows or shrinks.
cube([5,10,20]);
//Sphere
// only one measurement radius centers around origin
sphere(r=10); 
//Cylinder
//can label the parameters h=20,r1=5
//dont need to label them but it is good practice
cylinder(h=20,r1=5,r2=5); 
cylinder(20,5,5); 
//Cone
//notice how its a cylinder but the radi are different
//notice how cylinders are all centered around the Z axis and touching the xy plane
cylinder(h=20,r1=5,r2=2); 
cylinder(h=20,r1=5,r2=0); //pointed cone
cylinder(h=20,r=5); //another way to make a cylinder 



//Bonus: importing stl files
//import("file_name.stl"); // this will import an stl make sure you save in the same directory as OpenSCAD program

//Pracitce solution
//Make a top maybe not the best practice problem...
cylinder(r1=.3,r2=5,h=3);
cylinder(r=.3,h=6);
//Make a stair step 
//cube([4,5,1]);
//cube([3,5,2]);
//cube([2,5,3]);
//cube([1,5,4]);

/*
Check for understanding
-What are parameters?
-Where are each shapes centered
-How do you make a pointed cone facing down?
*/
