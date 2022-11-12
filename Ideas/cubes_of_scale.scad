//Author: Chris Correll
//Date: 9/1/2022
//Description: Cubes of scale for 3d pritning 

inch_multiplier = 2.54;
scales = [1,10,100];

//Millimeters

for(i = [0:len(scales)-1]){
translate([0,scales[i],0])
cube(scales[i],center=true);
}


//Inches
/*
for( i = [0:len(scales)-1]){
translate([0,scales[i]*inch_multiplier,0])
cube((scales[i]*inch_multiplier),center=true);
}
*/