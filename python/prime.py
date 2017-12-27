from math import sqrt

MAX = 10000000

def count_primes (n):

    count = 1
    i = 3

    while (i <= n):

        is_prime = True
        t = 3

        while (t <= sqrt(i)):

            if (i % t == 0):
                is_prime = False
                break
            
            t += 2

        if (is_prime == True):
            count += 1

        i += 2

    return count

print("There are %d prime numbers between 0 and %d" % (count_primes(MAX), MAX))
