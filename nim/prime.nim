import math

proc countPrimes(max: int): int =
    var n = 1
    var i = 3

    while i < max+1:
        var isPrime = true
        let sqrti = int(sqrt(float(i)))
        var j = 3

        while j <= sqrti:
            if i mod j == 0:
                isPrime = false
                break
            j = j+2

        if isPrime == true:
            n = n+1

        i = i+2

    result = n

echo countPrimes(10_000_000)
