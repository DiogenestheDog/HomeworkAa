
function madLib(verb, adj, noun) {
    return `We shall ${verb} the ${adj} ${noun}`;
}

function isSubstring(str, substr) {
    return str.contains(substr);
}

function fizzBuzz(arr) {
    return arr.filter( el=> {
       return (el % 3 === 0 || el % 5 === 0) && !(el % 15 === 0)       
    })
}

function isPrime(num) {
    if(num < 2) { return false ;}
    i = num - 1
    while(i >= 2) {
        if(num % i === 0) { return false; }
        i--
    }
    return true;
}

function firstNPrimes(n) {
    primes = [];
    for(let i = 2; primes.length < n; i++) {
        if(isPrime(i)) { primes.push(i) }
    }
    return primes
}

function sumOfNPrimes(n) {
    return firstNPrimes(n).reduce( (acc, el) => {
        return acc += el
    }, 0)
}

console.log(firstNPrimes(3));
console.log(firstNPrimes(7));

console.log(sumOfNPrimes(3));
console.log(sumOfNPrimes(7));