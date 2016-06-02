//describe: longestWord() function
//function will takes an array of words or phrases and returns the longest
//word or phrase in the array.
//expect function["vampire", "zombie", "werewolf"]
////>  "werewolf"
///
///notes:
///var abc = "abc";
///cvar abc = "abc"
// console.log(abc.length);
//> 3
// var word = ""
// console.log(word.length);
//> 0
///
///
///
//function needs:
// to accept an array of strings as input.
// iterate through the array
// determine number of characters in each string 
// string.length
// store that number in a new variable 
// compare subsequent numbers of characters to stored variable
// when it is done iterating the variable will contain the string with the greatest value.  
// (possibly there was a way to do this with forEach, indexing and Math.max this seems like it will work though.
//var creatures = ["vampire", "zombie", "werewolf"]
//Oops. Save that for driver code; this is a FUNCTION my words should be generic but descriptive

//var array = ['string', 'longer string', "longest string"]

function longestString {
	var longest = ""

	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest.length) {
		longest = array[i];
		}
	}

}

return longest;


answer = longest(["vampire", "zombie"]);
console.log(answer)