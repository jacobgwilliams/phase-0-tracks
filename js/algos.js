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

var steven = {
  name: "Steven",
  age: 54
}
var tamir = {
  name: "Tamir",
  age: 54
}
var bob = {
  name: "Bob",
  age: 70
}
function keyValueCompare(objectOne, objectTwo) {
  if (objectOne.age == objectTwo.age) {
    return true
  }
  else {
    return false;
  }
}

// DRIVER CODE:
console.log(longestWord(someStrings));
console.log(longestWord(someOtherStrings));

console.log(bob.name); // "Bob"
console.log(bob.age); // 70
console.log(keyValueCompare(steven, tamir)) // true
console.log(keyValueCompare(bob, steven)) // false