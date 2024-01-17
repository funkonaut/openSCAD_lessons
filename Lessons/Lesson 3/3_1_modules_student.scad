//Author: 
//Date: 
//Description: Lesson 3-1 Modules

//In OpenSCAD a module is a portion of code that we can define so we don't have to type it out all the time. 
//An OpenSCAD module is essentially a custom primitive shape. 
//OpenSCAD defualt primitive shapes (ie cube, sphere, cylinder) are all modules that have already been defined for you
//Modules are defined (ie coded) and must have the command module and then a name and may have optional arguments (parameters) that you define

//You can define a module similar to our difference and union commands but with arguments like so
module my_first_module_name(an_argument, like_size, etc){
  cube([an_argument,like_size,etc], center=true);
}

//Module names can not have spaces in them hence the underscores
//Preview the code, nothing happens this is because it is not enough to define a module you must call it

//You can call a module like you would any other OpenSCAD shape
//Un comment the code below and check it out
//my_first_module_name(1,1,1);

//Calling your module is using it defining it is specifying what it does
//When you define modules arguments do not have to equal anything though they can have default values you set by having them equal a value
//For instance you could have etc = 4 and then you would not need to specify etc when you call the module, but you could and overwrite the value 4 when you call the module
//The order of arguments and number of arguments matter! They must match up with your module definition

//IMPORTNAT NOTE: If you do not include the correct arguments when you call your module you will receive a warning.
//For this reason always make sure to check that the arguments in your module definition agree with the ones that you use to call the module
//You can always check the error log (alt > w > l) and tab around to hear the warnings info and find out what is wrong.

// You can treat modules just like shapes, so translation and other transformation commands will work with them. Try it out
//translate([1,1,1])
//my_first_module_name(1,1,1);

//Practice Problems
//1. Create and call a module that makes a cylinder with arguments h for height and w for width. Translate your shape any direction(s) after calling it.
//2. Create and call a module that makes a cone with arguments for the cones width and height. Translate your shape  any directions(s) after calling it.
//3. Create and call a bead module with arguemnts only for the hole width and the bead size.
//4. Make a cup module (hollow cylinder 
//5. Make a box module hollow cube
