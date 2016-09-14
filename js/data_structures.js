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

// Car maker

function Car(color, year, make, model, hasFourWheelDrive){
  console.log("New car:", this);
  this.color = color;
  this.year = year;
  this.make = make;
  this.model = model;
  this.hasFourWheelDrive = hasFourWheelDrive;

  this.revEngine = function() { console.log("Vroom vroom!"); };

  console.log("CAR COMPLETE");
}

var aCar = new Car("blue", 1999, "Ford", "Taurus", false);
var alinasCar = new Car("white", 2001, "Honda", "Civic", false);
console.log(aCar);
console.log(alinasCar);
aCar.revEngine();
alinasCar.revEngine();