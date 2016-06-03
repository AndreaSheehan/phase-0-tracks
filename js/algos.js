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

//expect
//var sally = { hairColor: 'brown', name: 'Sally', age: 35 }
//var bobby = { name: 'Bobby', age: 24, hairColor: 'brown' }
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


// ...if i get through all possible comparisons and have found nothing, return false
// var steven = {name: "Steven", age: 54};
// var tamir =  {age: 54,name: "Tamir",};

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