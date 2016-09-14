var colors = ["blue", "green", "red", "orange"];
var names = ["Ed", "Shadowfax", "Black Beauty", "Seabiscuit"];

colors.push("purple");
names.push("MacBook Pro");

console.log(colors);
console.log(names);

var horses = {};

for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);