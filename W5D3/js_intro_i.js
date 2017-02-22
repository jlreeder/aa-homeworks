"use strict";

// Returns 'in' twice
function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// Return both 'out of' and 'in'
function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// The following throws an error, since it tries to declare x twice
// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// Returns both 'in' and 'out'
function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// Throws an error, since it tries to declare x twice
// function mysterScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

function madLib(verb, adjective, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`);
}

// madLib('prepare', 'best', 'hummus')

function isSubstring(searchString, subString) {
    if (searchString.includes(subString)) {
        console.log(true);
    } else {
        console.log(false);
    }
}

function isSubstring2(searchString, subString) {
    console.log(searchString.includes(subString));
}

// isSubstring("time to program", "time")
// isSubstring("Jump for joy", "joys")
// isSubstring2("time to program", "time")
// isSubstring2("Jump for joy", "joys")

function fizzBuzz(array) {
    const chosenNums = [];

    array.forEach(el => {
        if (el % 3 === 0 ^ el % 5 === 0) {
            chosenNums.push(el);
        }
    });

    return chosenNums;
}

let fizzBuzzTest = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
console.log(fizzBuzz(fizzBuzzTest));

function isPrime(number) {
    for(var i = 2; i < number; i++) {
        if (number % i === 0) {
            return false;
        }
    }

    return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

function sumOfNPrimes(n) {
    let sum = 0;
    let countPrimes = 0;
    let i = 2;

    while(countPrimes < n) {
        if (isPrime(i)) {
            sum += i;
            countPrimes++;
        }
        i++;
    }

    return sum;
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
