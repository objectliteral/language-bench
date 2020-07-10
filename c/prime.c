#include <stdio.h>
#include <math.h>
#include <stdbool.h>

int countPrimes(int n) {

    int count = 1;
    int i = 3;

    for (; i <= n; i += 2) {
        
        bool is_prime = true;
        float sqrti = sqrt(i);
	int t = 3;

        while (t <= sqrti) {
            if (i % t == 0) {
                is_prime = false;
                break;
            }
            t += 2;
        }
        
        if (is_prime == true) {
            count++;
        }
    }

    return count;

}

int main(int args, char **argv) {
    printf("There are %d prime numbers between 0 and 10000000\n", countPrimes(10000000));

    return 0;
}
