// > titleize(["Mary", "Brian", "Leo"], printCallback);
// Mx. Mary Jingleheimer Schmidt
// Mx. Brian Jingleheimer Schmidt
// Mx. Leo Jingleheimer Schmidt

function titleize(arr, stupidCallback) {
     return arr.map( el=> {
        return  el[0].toUpperCase() + el.slice(1);
     }).forEach(function(el) {console.log(stupidCallback(el));});
     
}

function stupidCallback(str) {
    return str + str;
}

titleize(["Mary", "Brian", "Leo"], stupidCallback);

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks || [];

    
}

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} goes phrRRRRRRRR!!!!!`)
}

Elephant.prototype.grow = function() {
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Elephant.prototype.play = function() {
    console.log(this.tricks[Math.floor(Math.random() * this.tricks.length)])
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function (pachyderm) {
    console.log(`${pachyderm.name} is trampling its enemies underfoot!`);
};
Elephant.paradeHelper(micah)

herd.forEach( ele=> Elephant.paradeHelper(ele));