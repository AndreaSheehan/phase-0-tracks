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




// function longestString(array) {
//   var longest = "";


//  notes from office hours:
// for (var i in array) {
//        if (array[i].length > longest.length) {
//          longest = array[i]
//        }
      
//    }
//       return longest
// }


// var answer = (longestString(["vampire", "zombie", "werewolf"]))

// console.log(answer)

//Describe:
//function Similar 
//compare

//expect
//var sally = { hairColor: 'brown', name: 'Sally', age: 35 }
//var bobby = { name: 'Bobby', age: 24, hairColor: 'brown' }
// => true




the purpose of this thing is to compare two objects
input: 2 objects
output: true or false

look at first key of first object
  compare to first key of second object
  are they the same?
  if so, compare the values
    are they the same?
    if so, return true
  if not compare to second key of second object and so on


...if i get through all possible comparisons and have found nothing, return false

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