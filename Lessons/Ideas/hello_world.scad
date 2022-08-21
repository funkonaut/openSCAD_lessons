//Author: Chris Correll
//Date: 8/20/2022
//Description: Solution to hello world

module keychain(text,letter_size){
 num_letters = len(text);
 text_width = 2*letter_size/3*num_letters; 

 difference(){
  cube([text_width,letter_size,1],center=true);
  linear_extrude(2)
  
  text(text,size=letter_size, halign="center", valign="center");
 }
}
text = "hello world";
letter_size = 100;
keychain(text, letter_size);
