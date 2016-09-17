// Jacob Williams
// 7.3 Solo Challenge

// RELEASE 0: Find the Longest Phrase
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
var someStrings = ["long phrase","longest phrase","longer phrase","this is the longest possible phrase"];
var someOtherStrings = ["I am the walrus","Cuckoo catchoo","The beatles are an all right band"];
function longestWord(str_arr) {
  var longestString = "";
  for (var i = 0; i < str_arr.length; i++) {
    if (str_arr[i].length > longestString.length) {
      longestString = str_arr[i];
    }
  }
  return longestString;
}

// RELEASE 1: Find a Key-Value Match
// write a function that takes two objects and checks to see if they share at least one key-value pair. Function will return true or false.
// it needs to loop through the values and check for whether there is a match

function Human(name, age){
  this.name = name;
  this.age = age;
}

var steven = new Human("Steven", 54);
var bob = new Human("Bob", 70);
var tamir = new Human("Tamir", 54);
var tamirTwo = new Human("Tamir", 26);

function keyValueCompare(objectOne, objectTwo) {
  var test = false;
  for (var i = 0; i < Object.keys(objectOne).length; i++) {
    if (objectOne[Object.keys(objectOne)[i]] == objectTwo[Object.keys(objectTwo)[i]]){
      test = true;
    }
    else {
      test = test;
    }
  }
  return test;
}

// RELEASE 2: Generate Random Test Data
// Write a function that takes an integer for length and builds an array of strings of that length.
// Words should vary between 1 and 10 characters
// PART TWO: Add driver code that generates an array 10 times, printing the array, and also feeding the array into the longest word function, printing the result

function randomString(){
  var newWord = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var lengthOfString = Math.floor((Math.random() * 10) + 1);
  for (var i = 0; i < lengthOfString; i++) {
      newWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    return newWord;
}

function weirdWords(arrayLength) {
  var randomArray = [];
  for (var i = 0; i < arrayLength; i++ ){
    randomArray.push(randomString());
  }
  return randomArray;
}

// DRIVER CODE:
console.log(longestWord(someStrings));
console.log(longestWord(someOtherStrings));

console.log(bob.name); // "Bob"
console.log(bob.age); // 70
console.log(keyValueCompare(steven, tamir)); // true
console.log(keyValueCompare(bob, steven)); // false
console.log(keyValueCompare(tamir, tamirTwo)); // true

for (i = 0; i < 10; i++) {
  console.log(longestWord(weirdWords(5)));
}