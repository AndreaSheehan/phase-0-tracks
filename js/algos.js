//RELEASE 0
//
//describe: longestWord() function
//function will takes an array of words or phrases and returns the longest
//word or phrase in the array.
//expect function["vampire", "zombie", "werewolf"]
///>  "werewolf"

//
//function needs:
// to accept an array of strings as input.
// iterate through the array
// determine number of characters in each string 
// string.length
// store that number in a new variable 
// compare subsequent numbers of characters to stored variable
// when it is done iterating the variable will contain the string with the greatest value.  
// (possibly there was a way to do this with forEach, indexing and Math.max this seems like it will work though.


function longestString(array) {
  var longest = "";


  for (var i = 0; i < array.length; i++) {
  
       if (array[i].length > longest.length) {
         longest = array[i]
       }
      
   }
      return longest
}


var answer = (longestString(["vampire", "zombie", "werewolf"]))

console.log(answer)


//  Further exploration for in also works:
//  
// for (var i in array) {
//        if (array[i].length > longest.length) {
//          longest = array[i]
//        }
      
//    }
//       return longest
// }

// var answer = (longestString(["vampire", "zombie", "werewolf"]))
// 
// console.log(answer)

//Describe:
//function Similar 


//---------------------------------------------------------
Release 1

//Describe:
//function Similar 
//compare

//expect
//var steven = {name: "Steven", age: 54};
 // var tamir =  {age: 54,name: "Tamir",};
// => true


// the purpose of this thing is to compare two objects
// input: 2 objects
// output: true or false

// look at first key of first object
//   compare to first key of second object
//   are they the same?
//   if so, compare the values
//     are they the same?
//     if so, return true
//   if not compare to second key of second object and so on
// want to come back and execute or this.  code below meets conditons and works
// bt is not as complete as my pseudocode.

// ...if i get through all possible comparisons and have found nothing, return false

 function findMatch(obj1, obj2) {
  for(var firstKey in obj1) {
    for(var secondKey in obj2) {
      if(obj1[firstKey] == obj2[secondKey]){
        return true;
      };
    };
  };
  
  return false;
};

 var steven = {name: "Steven", age: 54};
 var tamir =  {age: 54,name: "Tamir",};
 var nada = {}
console.log(findMatch(steven,tamir));
console.log(findMatch(steven, nada));

//--------------------------------------------------
//Release 2:  THIS STILL NEEDS WORK AND WILL COE BACK BUT HANDING IT IN NOW AS I AM 
//BEHIND ON 8!
//input: integer (meant to be # of items in array eg length) 
//function to extract the characters and make string
//loop # times supplied by argument
//use result from random length generator to determine # chars to add to string.
//push string into array  
//
//
//var for char to generate from - abcd
//var for the random string to generate into
//var for the length of string
//var for array to push new strings into
//
/
//
//research:The substring() method extracts the characters from 
//a string, between two specified indices, and returns the new sub string.
//Math.floor((Math.random() *10) +1);

//conditions to remember:  
//string lengths are random btw 1 and max 10 char: 
//strings should be of random length
//+ of strings in array = integer supplied in function
//
/
//
//
function makeString() {
	var chars = "ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
	var randomString = ""
//*select a random length(from 1-10) of charac from var list
	var randomLength = Math.floor((Math.random() *10) +1);


for (var i = 0; i < randomLength; i ++){
	var randomChar = Math.floor(Math.random() * chars.length);
		randomString += chars.substring(randomChar,randomChar+1);
	}
	return randomString;
}

function makeStringArray(integer) {
var randomArray = [];
//array for workds
//push into an array
//loop for i ----do this i number of times..
//output i number of strings 
for var(i = 0; i < integer; i ++) {
	randomArray.push(makeString());
}
return randomArray
}


// Add driver code that does the following 10 times: generates 
// an array, prints the array, feeds the array to your "longest word" 
// function, and prints the result.
// //
for  (var i = 0; i < 10; i++) {
	//generate an array
	newArray= randomArray(Math.floor((10*Math.random()+1));
	
	// print the array
	console.log("Array: " + newArray);
	
	console.log("Words Array #"+i+": (" + wordsArray + ")");
	// find the longest word in this array
	console.log("Longest word in this array: " + longestString(newArray));
	
//
//
//
//
//
//
//
//_______________________________________________________________
//
//Practice with objects: 
//var sally = { hairColor: 'brown', name: 'Sally', age: 35 }
//var bobby = { name: 'Bobby', age: 24, hairColor: 'brown' }
// => true

// function Person(name, age, hairColor) {
//   this.name = name;
//   this.age = age;
//   this.hairColor = hairColor;
  
//   this.getOlder = function() {
//     this.age += 1
//   }
// }

// var cindy = new Person('Cindy', 56, 'blonde')

// console.log(cindy.age)
// cindy.getOlder()
// console.log(cindy.age)