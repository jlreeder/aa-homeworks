const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBuiscuits () {
    reader.question("Would you like some tea? ", (res) => {
        console.log(`You replied ${res}.`);
        reader.question("Would you like some biscuits? ", (res2) => {
            console.log(`You replied ${res2}.`);

            const first = (res === 'yes') ? 'do' : 'don\'t';
            const second = (res2 === 'yes') ? 'do' : 'don\'t';

            console.log(`So you ${first} want tea and you ${second} want biscuits.`);
            reader.close();
        });
    });
}

teaAndBuiscuits();
