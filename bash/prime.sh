#!/bin/bash

MAX=100000

n=1
i=3

while (( i < MAX ))
do
    isprime=1
    j=3
    sqrti=$(echo "sqrt($i)+1" | bc)

    while (( j < $sqrti ))
    do
        if [[ $((i%j)) == 0 ]]
        then
            isprime=0
            break
        fi
        j=$((j+2))
    done

    if [[ $isprime == 1 ]]
    then
        n=$((n+1))
    fi

    i=$((i+2))

done

echo "There are $n prime numbers between 0 and $MAX"