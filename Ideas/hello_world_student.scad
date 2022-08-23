//Author: 
//Date: 
//Description: Complete the code to make a hello world keychain

//#1 missing variables
module keychain(text,letter_size){
 num_letters = len(text);
 text_width = 2*letter_size/3*num_letters; 

 difference(){
  cube([text_width,letter_size,1],center=true);
  linear_extrude(2)
  
  text(text,size=letter_size, halign="center", valign="center");
 }
}

keychain(text, letter_size);

/*
//#2 missing function
module keychain(text,letter_size){
//your code here
}

text="hello world";
letter_size=10;
keychain(text,letter_size);

*/