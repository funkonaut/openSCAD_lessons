//Author: Chris Correll
//Date: 11/2/2022
//Description: Playdoh molds for basic openSCAD primitives

$fn = 40;
unit = 12.5; //one graph board square
e = .1; //error term to elongate cut throughs for rounds and cubes and previewing

module mold_cube(w,l,h){
 difference(){
  union(){
   cube([l*unit,w*unit,h*unit],center=true); 
   translate([0,0,(-h*unit)/2+brim_z/2])
   cube([l*unit+2*brim_thickness,w*unit+2*brim_thickness,brim_z],center=true);
  }
//hole
 cube([l*unit-2*wall_thickness,w*unit-2*wall_thickness,h*unit+e],center=true);
//seam
 translate([0,(w*unit+brim_thickness*2)/2-(wall_thickness+brim_thickness)/2,0])
 #cube([cut_thick,wall_thickness+brim_thickness+e,h*unit+e],center=true);
 }
 
}

module mold_cylinder(w,h){
 difference(){
  union(){
   cylinder(h=h*unit, d=w*unit, center=true);
   translate([0,0,(-h*unit)/2+brim_z/2])
   cylinder(h=brim_z, d=w*unit+2*brim_thickness, center=true);
 }
//hole
 cylinder(h=h*unit+e, d=w*unit-2*wall_thickness, center=true);
//seam
 translate([0,(w*unit+brim_thickness*2)/2-(wall_thickness+brim_thickness)/2,0])
 #cube([cut_thick,wall_thickness+brim_thickness+e,h*unit+e],center=true);
}
}

module mold_hemisphere(d){
difference(){ 
union(){ 
difference(){
  sphere(d=d*unit);
  sphere(d=d*unit-2*wall_thickness);
  translate([0,0,-d*unit/2])
  cube(d*unit,center=true);
  }
//base
 translate([0,0,-brim_z/2])
 cylinder(d=d*unit+2*brim_thickness,h=brim_z,center=true);
}
  translate([0,0,-brim_z/2]) 
  cylinder(h=brim_z,d=d*unit-2*wall_thickness,center=true);
  
//seam
 translate([0,(d*unit+brim_thickness*2)/2-(wall_thickness+brim_thickness+d*unit/2)/2,0])
 #cube([cut_thick,d*unit/2+wall_thickness+brim_thickness+e,2*d/3*unit+e],center=true);
translate([0,-((d*unit+brim_thickness*2)/2-(wall_thickness+brim_thickness+d*unit/2)/2),0])
 #cube([cut_thick,d*unit/2+wall_thickness+brim_thickness+e,2*d/3*unit+e],center=true);
}
}

//import("Rectangle.stl",convexity=3); //check out the thingiverse model...

//Cubes
/*
wall_thickness = .75;
brim_thickness = 3;
brim_z = 1;
cut_thick = .2;
//mold_cube(1,1,1); //1*1*1
//mold_cube(1,2,1); //1*2*1
//mold_cube(1,4,1); //1*4*1
//mold_cube(2,2,1); //2*2*1
//mold_cube(2,4,1); //2*4*1
//mold_cube(4,4,1); //4*4*1

//mold_cube(1,1,2); //1*1*2
//mold_cube(1,2,2); //1*2*2
//mold_cube(1,4,2); //1*4*2
//mold_cube(2,2,2); //2*2*2
//mold_cube(2,4,2); //2*4*2
//mold_cube(4,4,2); //4*4*2
*/

//Cylinders
/*
wall_thickness = .75;
brim_thickness = 3;
brim_z = 1;
cut_thick = .2;

//mold_cylinder(1,1);
//mold_cylinder(2,1);
//mold_cylinder(4,1);

//mold_cylinder(1,2);
//mold_cylinder(2,2);
//mold_cylinder(4,2);
*/

//Hemispheres
/*
wall_thickness = .75;
brim_thickness = 0;
brim_z = 0;
cut_thick = .2;

//mold_hemisphere(1);
//mold_hemisphere(2);
//mold_hemisphere(4);
*/