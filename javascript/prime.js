const MAX = 10000000;

var countPrimes = function () {
    
    var count = 1;
    
    for (var i = 3; i <= MAX; i += 2) {

        var isPrime = true;
        var t = 3;
        
        while (t <= Math.sqrt(i)) {
            if (i % t === 0) {
                isPrime = false;
                break;
            }
            t += 2;
        }

        if (isPrime === true) {
            count++;
        }
    }
    
    return count;

}

console.log(`There are ${countPrimes()} prime numbers between 0 and 10000000`);