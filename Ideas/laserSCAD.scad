
//Export alt > f > x > v
$fn = 40;

bed_size_x = 495.3; //19.49" glo9wforge bed
bed_size_y = 279.4; //10.99" glowforge bed
x_off = .26; //upload in glowforge rounds to nearest .1" and keeps it there for some reason?
y_off = .26; // have to do this so it says its a valid cut? in glowforge app  |offset| less then .1" or greater (not sure what the bounds are) than bed size then imports in red
//bed_size_z = 0;

//Designs outside of print bed are not included
//Designs placed in Glowforge canvas at x, -y from center
projection(cut=true){
 translate([x_off,y_off,0])
 difference(){
  your_code();
 
  union(){
  translate([bed_size_x+5000,0,0]) //5m 
   cube(10000,center=true); //10m should be big enough
  translate([-(bed_size_x+5000),0,0]) //5m 
   cube(10000,center=true);
  translate([0,bed_size_y+5000,0]) //5m 
   cube(10000,center=true); //10m should be big enough
  translate([0,-(bed_size_y+5000),0]) //5m 
   cube(10000,center=true);
  }
 }
}

module thing(){
   difference(){
  cube(50);
  cylinder(h=10,r=10);
   }
   translate([50,0,0])
     difference(){
  cube(50);
  cylinder(h=10,r=10);
   }
   }
   
 module your_code(){
   thing();
  translate([100,0,0])
  thing();
  translate([200,0,0])
  thing();
  translate([0,50,0])
  thing();
  translate([0,100,0])
  thing();
  translate([0,200,0])
  thing();
 }
 
 
 
 