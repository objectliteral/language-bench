package main

import (
	"fmt"
	"math"
)

func main() {
	stopValue := 10000000
	cnt := countPrimes(stopValue)
	fmt.Printf("There are %d prime numbers between 0 and %d\n", cnt, stopValue)
}

func countPrimes(until int) int {

	count := 1

	for i := 3; i <= until; i += 2 {

		isPrime := true
		sqrti := int(math.Sqrt(float64(i)))
		t := 3

		for t <= sqrti {
			if i%t == 0 {
				isPrime = false
				break
			}
			t += 2
		}

		if isPrime == true {
			count++
		}
	}
	return count
}
