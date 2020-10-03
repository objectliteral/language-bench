#include <stdio.h>
#include <stdbool.h>

float d_sqrt(float n) {
    int i;
    float x, y;
    x = n * 0.5;
    y = n;
    i = *(int *) &y;
    i = 0x5f3759df - (i >> 1);
    y = *(float *) &i;
    y = y * (1.5 - (x * y * y));
    y = y * (1.5 - (x * y * y));
    return n * y;
}

int countPrimes(int n) {

    int count = 1;
    int i = 3;

    for (; i <= n; i += 2) {
        
        bool is_prime = true;
        float sqrti = d_sqrt(i);
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
