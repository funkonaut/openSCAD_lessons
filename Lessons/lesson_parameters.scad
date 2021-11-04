/*
Author: Chris Correll
Date: 11/3/2021
Description: Learn about parameterizing your code for easy modifications! Cut a sphere in half and then slice up some pizza. This lesson could be supported with a graph board and blocks of different sizes.
URL: https://github.com/funkonaut/openSCAD_lessons
*/

/*
Variables are place holders. They make our code easier to work with and modify. They also make it easier to read and understand. In this lesson we will see why its important to have variables and how it can help us modify our designs more easily. To make a variable all you need is a name and an assignment of value for instance we could have a variable radius=10; radius is the name and =10 is the assigment of value. When I say we declare variables that means we write the code for them.

In OpenSCAD variables can me used as parameters. Parameters are any value that specifies characteristics of shapes. For instance sphere(r=10); 10 is a parameter. We could also write this as sphere(radius); if we declared te variable radius before.

There are two types of variables global and local. Global variables work everywhere in your code. If you put $fn=30 in you function arguments ie sphere(10,$fn=30); this is a local variable it will only effect that one line of code putting variables at the top makes them global variables they will effect everything

Check for understanding:
-What are variables?
-What is the difference between a global and a local variable?
-How do you declare a variable?
-Why use a variable?
*/

//Global Variables
$fn=30;

//Declare a global variable and build two shapes with it as a parameter
/*
radius=10;
cylinder(h=10,r=radius);
sphere(radius)
*/

//Notice how whenever you change the variable both shapes change this is because it is a global.

/*
We use variables in openSCAD to parameterize our code. When we parameterize our code we can just change the variable to make changes to our model. For instance if we wanted to build a mushroom and we parameterized our mushroom code so that we had a stem_height and cap_radius variable we could just change the two parameters in our code to change our model instead of having to change all the different place in our code where we wrote the parameters as numbers.

Comment out the code below and see a non parameterized example. Try making the sphere size 15 what happens? Now comment it back out and uncomment the code below title Parameterized code. Preview the shape and then change the r_s variable to 15 notice how the sphere is still cut in half. 

Explain why we chose our parameters the way we did.
*/

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
