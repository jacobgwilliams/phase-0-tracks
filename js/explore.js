// Jacob Williams
// Write a function that takes a string and reverses it
// I could create a new string, and go over each index of the word passed in and append it to the new string as I go in reverse order
var str = "hello";
function reverse(str_var) {
  var reverse_str = "";
  for (var i = str_var.length - 1; i >= 0; i--) {
    reverse_str += str_var[i];
  }
  return reverse_str
}
var reversed = reverse(str);
if (1 == 1) {
  console.log(reversed);
}