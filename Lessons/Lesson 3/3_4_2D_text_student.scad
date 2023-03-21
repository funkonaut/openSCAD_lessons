//Author: 
//Date: 
//Description: Lesson 3-4 2D Design in OpenSCAD: The Text Primitive

//Another primitive we are going to learn about is the text primitive.
//The text primitive allows you to easily make 2D text in OpenSCAD

//The text primitive first and only required parameter is an input string parameter. This means its surrounded
// in quotes. Try it out by uncommenting the code below
//text("hello world");

//Try changing the input string to your name!

//The text primitive also can take in a size parameter. 
//The size is the height of the tallest letter. Try adding a size parameter
//and setting it equal to 20 in the above code.

//We can change the parameters to select differnet fonts. 
//If you go to Help > font list (alt > h > f) you will see a table (tab into it) 
//with the names of availble fonts in the first column and styles in the the second (tab navigate)
//Styles are things like bold, regular, italics etc. usually I just keep the default so
//I wont cover that here check out the OpenSCAD documentation for text if you are interested
//Uncomment the code below and notice how our text changes.
//text("hello", size=20, font="agency fb");

//Try changing the font using one of your fonts in the font list

//Text can also have alignment parameters, halign and valign. These are kind of like the 
//center flag for other primitives, but uses different string values. 
//For halign the values you can set it equal to  "left", "center" or "right" 
//with the default beign "left".
//For valign possible values are "top", "center", "baseline" or "bottom". 
//The default is "baseline".
//Uncomment the code below to see how to center your text in the XY plane
//text("hello", size=20, halign="center", valign="center");

//Try changing some of the values of halign and valign to see where your text goes!
//Notice how when you change the size the text stays aligned!

//The final parameter we will learn about for the text primitive is the direction parameter.
//The direction parameters specificies the direction of the text flow. 
//Possible values are "ltr" (left-to-right), "rtl" (right-to-left), "ttb" (top-to-bottom) and "btt" (bottom-to-top). 
//The default is "ltr". Try it out below!
//text("hello", size=20, halign="center", valign="center", direction="ttb");

//Try changing some of the values of direction to see where your text goes!

//Just like our other 2D primtiives OpenSCADs transformation and boolean operators work with text too!
//Try it out my uncommenting out the code below.
/*
difference(){
    circle(d=20);
    text("hello",halign="center",valign="center",size=4);
}
*/

//***Note: the width of your text depends on your font size and direction of your text 
//it is typically safe to guesstimate that it is the
//size value times the number of letters in your input string.

//***Note these are not all of the parameters for text, if you are interested in more check
//out the OpenSCAD documentation for the text primitive!

//1. Using a non default font, make a 2D keychain with your name on it
//2. Make a 2D keychain with verticle oriented text (reading from top to bottom).
//3. (Bonus) Parameterize your keychain so you can adjust the width and height of it 
//and the font will change accordingly! 
//4. (Bonus) Make a cross word puzzle key chain with atleast 5 words!