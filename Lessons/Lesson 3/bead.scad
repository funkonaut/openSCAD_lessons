//Author: Chris Correll
//Date: 1/23/2023
//Description: A module for a spherical bead.

$fn = 40;

module bead(w,h_w){
  difference(){
   sphere(d=w);
  # cylinder(h=w,d=h_w,center=true);
  }
}


bead(10,2);