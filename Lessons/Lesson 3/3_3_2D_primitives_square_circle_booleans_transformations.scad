//Author: 
//Date: 
//Description: Lesson 3-3 2D Design in OpenSCAD: The Square and Circle Primitives and Booleans and Transfromations

$fn = 40;
//In this lesson you will begin to learn about how to use OpenSCAD for 2D design.
//2D design allows us to design cut files or SVG files for the laser cutter.
//2D design is very similar to 3D design which you all have already been working on.

//There are four main primitives for 2D design in OpenSCAD. In this lesson we will cover all four.
//Our first 2D primitive is the square. Just like its 3D counterpart the cube, the square in OpenSCAD is 
//not the same as the mathematical definition of a square.
square(10);

//We also have a center flag for square. Center the above square.

//We can also define a square with a width and a height vector. Uncomment the code below and check it out.
//square([5,20],center=true) 

//Now your turn make a square that is 2 by 10 in size. Preview it (f5), render it (f6).

//You may have noticed that your square has a different look when it previewed and rendered. This is okay. 
//You also may have noticed that if you tried to export your square (f7) you got an error. This is becasue 
//export only works for 3D shapes if you want to export a 2D design you can do so by choosing 
//file > export > Export as SVG (alt > f > x > v enter) 

//We also have a circle primitive its takes either a radius or diameter. 
//Circles like spheres are always centered.
//Uncomment the code below and check it out
//circle(r=10);

//Try it out make a circle that is 30 units wide.

//Now that you know about two primitives here comes the fun part...
//You can use your transformation and boolean commands (like translate and union/difference) to make your 2D designs
//For example uncomment and check out the code below that makes a wheel with a circular mounting hole
/*
difference(){
    circle(10);
    circle(1);
}
*/
//Try modifying the above code to make a "wonky wheel" by moving the mounting hole slighly off center.

//Practice Problems (bonus points if you use variables!)
//1. Make a wheel with a square axis hole
//2. Make a picture frame 
//3. Make a 4 by 4 grid of wheels
//4. Make a picture frame with a mounting hole.