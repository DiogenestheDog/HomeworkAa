const readline = require("readline");

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

reader.question('Would you like some tea?', (res) => {
    if (res === "yes") {
        reader.question('Would you like some biscuits?', (res) => {
            console.log("We all want something.")
            process.exit();
        });
    } else {
        console.log("How disappointing...");
        process.exit();
    }
});

