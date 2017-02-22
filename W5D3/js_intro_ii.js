function printCallback(array) {
    array.forEach(el => { console.log(el); });
}

function titleize(names, callback) {
    let titles = names.map(el => {
        return `Mx. ${el} Jingleheimer Schmidt`;
    });

    callback(titles);
}

// titleize(["Mary", "Brian", "Leo"], printCallback);

// elephant

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function() {
    this.height += 12;
    console.log(this.height);
};

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
    console.log(this.tricks);
};

Elephant.prototype.play = function() {
    const trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
    console.log(`${this.name} is ${trick}.`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
    console.log(`${elephant.name} is trotting by!`);
};

// TODO: How do I call paradeHelper with foreach?
// herd.forEach(el => { paradeHelper(el); });

function dinerBreakfast() {
    let order = "I'd like green eggs and spam, please.";
    console.log(order);

    return function (addition) {
        order = `${order.slice(0, order.length - 9)} and ${addition}, please.`;
        console.log(order);
    };
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");
