//Author: Chris Correll
//Date: 9/13/2022
//Description: Lesson 1-3 Smoothing curves with $fn, short lesson.
//reading: https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24fa.2C_.24fs_and_.24fn

$fn = 6; //resolution number of fragments in a 360 degree horizontal cross section number of sides of a sphere is (approx) given by = fn * floor((fn-1)/2)+2 
sphere(r=10);

//cylinder(r=10,h=10);

//can also include as an argument but lets just keep it at the top...