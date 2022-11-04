//Author: Chris Correll
//Date: 10/1/2022
//Description: Parameterized code for primitive shapes to use on the APH graph board for teaching openSCAD concepts such as translation

//$fn = 10; //low
//$fn = 20; //med
$fn = 40; //hi

//APH graph board square
unit = 12.5; //one graph board square

//Parameters
w = 2; // width
dep = 4; //depth 
h = 1;  //height

//cube([w*unit,dep*unit,h*unit],center=true); 
//sphere(d=w*unit);
cylinder(h=h*unit,d=w*unit,center=true);