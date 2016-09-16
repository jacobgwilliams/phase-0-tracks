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
// DRIVER CODE:
console.log(longestWord(someStrings));
console.log(longestWord(someOtherStrings));