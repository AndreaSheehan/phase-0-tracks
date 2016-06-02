var colors = ["blue", "indigo", "violet", "cerulean"];
var horseNames = ["Ed", "Beauty", "Misty", "Ronaldo"];

colors.unshift("teal");
horseNames.push("Starlight");




// new object collection
// assume 2 arrays of equal length one wiht names and one with colors
// iterate through the arrays to assign 
// use indexing and .length 
// 
var horsesColors = {};

for (var i = 0; i < colors.length; i++) {
	horsesColors[horseNames[i]] = colors[i];
}

console.log(horsesColors);


//write a constructor function (like Classes in Ruby) for a car.
// Give it a few different properties of various data types, 
// including at least one function. 
//Demonstrate that your function works by creating a few cars with it.
function Car(model, color, type) {
this.model = model
this.color = color
this.type = type

this.drive = function() {console.log("ZOOOOOOOOOM"); };
console.log("Your car is ready");

}

console.log("Let's design your new ride...");
var newCar = new Car("Ferrari", "red", "sports");
console.log(newCar);