//Author: 
//Date: 
//Description: Lesson 3-5 2D Design in OpenSCAD: Linear Extrusions

//Up until now we have been learning about 3D design and 2D design in OpenSCAD independently, but what if you want to make your 2D model into a 3D model by adding the Z dimension? In this lesson you will learn a way to "extrude" a 2D model into a 3D.

//In OpenSCAD you can add a height (Z) to a 2D model by using the linear_extrude operator. It works like the other operators we have learned about in OpenSCAD. Check it out by uncommenting the line below
/*
linear_extrude(5){
    square(10, center=true);
}
*/

//The parameter you give linear_extrude corresponds to the distance it is extruded in the Z axis. It is always positive. Try changing the above code so it makes a cube of side lengths 10.

//Inside the curly brackets goes your 2D model. You can give it any 2D primitive or combination of 2D primitives! Uncomment the code below and check it out
/*
linear_extrude(5){
  difference(){
    square(10,center=true);
    square(8,center=true);
  }
}
*/

//Once your object is extruded (converted from 2D to 3D) it can be combined with other 3D primitives! Note: You can not (it will preview but not render correctly) combine 2D and 3D shapes or extrude a 3D shape. Check it out by uncommenting the code below.
/*
difference(){
  linear_extrude(5){
      square(10, center=true);
  }
  cube([5,5,11], center=true);
}
*/

//Re-write the above code so its using only 3D primtives (hint: 2 cubes)

//1. Using linear extrude and your 2D primitives make a cylinder of width 3 and height 10
//2. Using linear extrude and atleast one 2D primitive and atleast one 3D primitive make a ring 
//3. Using linear extrude make a 3D key chain with your name as a raised surface on it
//4. (Bonus) Create a module that makes a 3D text shape and has a string input parameter and text thickness parameter.
