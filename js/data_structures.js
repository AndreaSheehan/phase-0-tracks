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


