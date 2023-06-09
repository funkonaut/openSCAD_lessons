//Author: Chris Correll
//Date: 4/20/2023
//Description: Using libraries

//Libraries allow us to use other peoples code in our projects!
//This allows us to boost our productivity


//We will learn the syntax of how to use libraries with the builtin MCAD library
/*
use <MCAD/regular_shapes.scad>

//Uncomment the code below and check out the regular shapes you can make without having to write al lthe code to define them
cylinder_tube(20, 10, 1);
triangle_prism(20,10);
*/

//1. Look at the documentation for the MCAD library and make a different regular shape then the ones above
//https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/MCAD#Overview_of_MCAD_Library

//We will use "use" statements to include code
//We will use "include statments" to include constants
//Library files with constants are helpful so we don't have to type a bunch of numbers all the time
//for instance the units constant file has measurements for bolts so we can just type the bolt name and OpenSCAD will know its sized correctly!
//Uncomment the code below and make a M3 bolt
/*
use <MCAD/nuts_and_bolts.scad>
include <MCAD/units.scad>
$fn=50;
//M3 is an alias for 3. It is defined in units.scad
// bolt
 translate([14, 0, 0]){
    boltHole(M3, length=10);
    rotate([180,0,0])
    nutHole(M3, tolerance=0.0);
}
*/

//Notice there is a path in between the <> openSCAD has a default area it looks for libraries 
//You can open this directory  in the file explorer by going to the file menu and selecting show library folder (alt > f > l)




//There are some builtin libraries but most we first need to install 
//To install the library the process is usually as simple as:
//Download the code for the library unzip it if necessary
//Place the folder with the code into the library directory.


//You can call library code one it is used like the built in modules
//Just make sure you installed it correctly and typed the correct path in the use statement!

//More Practice
//2. Install and use one library from the OpenSCAD libraries link 
//https://openscad.org/libraries.html

//3. Play around with a library read its documentation and see what you can make!

//Read more about libraries at this link in the documentation: 
//https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Libraries
