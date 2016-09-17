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
// Write a function that takes

// DRIVER CODE:
console.log(longestWord(someStrings));
console.log(longestWord(someOtherStrings));

console.log(bob.name); // "Bob"
console.log(bob.age); // 70
console.log(keyValueCompare(steven, tamir)); // true
console.log(keyValueCompare(bob, steven)); // false
console.log(keyValueCompare(tamir, tamirTwo)); // true

