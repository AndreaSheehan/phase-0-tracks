//write a Javascript function that works like Ruby .reverse takes a string as a parameter and 
//reverses the string. reverse("hello"), for
// example, should return "olleh"
// parameter is a string. 
// def the function reverse(string)
// pass argument("hello")
// loop through the letters in the string
// for length of string starting from the end
// use what we learned so far with the counter 
// Remember that you can add strings in JavaScript, 
// so '' + 'a' would result in the string 'a'.
// /for (var i = 0; i < 11; i++ ) {
// 	console.log(i);
// }
// returns 1,2,3,4,5,6,7,8,9,10

// // 	for (var i = 10; i>=0; i-- ) {
// 	// console.log(i);
// 	
 function reverse(str) {
 	var reverseWord = ''

 	for (var i = str.length -1 ; i >= 0; i--) 
	// reverseWord = reverseWord += str[i];
		reverseWord += str[i];
		return reverseWord;

 }

 // Driver code:
console.log(reverse("hello"));
