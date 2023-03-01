//Author: 
//Date: 
//Description: Lesson 3-2 For Loops

//In OpenSCAD we can use for loops to run a block of code multiple times. 
// The basic syntax for a for loop is as follows: for(variable = [start : increment : end]){ your code here...}
// The "variable" is known as the loop counter and it starts at the "start" value the code runs and the variable changes each time the loop is run by the increment amount once the variable equals or is greater than the "end" 
// The vector [start : increment : end] is known as the loop range, it is a vector but the values are sperated by : instead of ,

// For example:
for (i = [0:1:10]){
 //do something(s)
}


//Here what ever you put in between {} happens 11 times (0-10 counting up by one inclusive)
//In the above for loop i is our counter variable we can use it in side the {} this can be handy for instance we could use it to make a line of 11 evenly spaced cubes:
/*
for (i = [0:10:100]){
 translate([i,0,0])
 cube(5);
}
*/

//Here i is incremented by 10. So the first cube is placed at 0,0,0 then the next at 10,0,0 and the next at 20,0,0 etc.
//You do not have to use your counter variable inside the for loop but it is helpful to transform your objects in increments.

//You can nest for loops (have one inside the other for example if you wanted to make a 11 by 11 grid of cubes you could do something like this:
/*
for (x = [0:10:100]){
 for (y = [0:10:100]){
  translate([x,y,0])
  cube(5);
 }
}
*/

//Now your turn:
//1. Make a 11 by 1 grid of cylinders that are evenly spaced and not touching
/*
for (x = [0:10:100]){
 translate([x,0,0])
 cylinder(h = 10, d = 10/2);
}
*/

//2. Make a 10 by 1 grid of spheres that are evenly spaced and not touching
/*
for (x = [0:10:90]){
 translate([x,0,0])
 sphere(d = 10/2);
}
*/


//3. Make a 10 by 10 by 10 cube of spheres that are evenly spaced and not touching
/*
for (x = [0:10:90]){
 for (y = [0:10:90]){
  for (z = [0:10:90]){
   translate([x,y,z])
   cube(5);
  }
 }
}
*/

//BONUS: Make a 5 by 5 grid of half spheres that are evenly spaced and not touching
/*
for (x = [0:10:40]){
 for (y = [0:10:40]){
  translate([x,y,0])
  difference(){
   sphere(d=5);
   translate([0,0,2.5])
   cube(5,center=true);
  }
 }
}
*/