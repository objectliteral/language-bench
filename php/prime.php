<?php

$MAX = 10000000;

$n = 1;
$i = 3;

while ($i < $MAX) {

    $is_prime = true;
    $sqrti = sqrt($i);
    $j = 3;

    while ($j <= $sqrti) {

        if ($i % $j == 0) {
            $is_prime = false;
            break;
        }
        $j += 2;
    }

    if ($is_prime == true) {
        $n++;
    }

    $i += 2;

}

printf("There are %d prime numbers between 0 and %d\n", $n, $MAX);

?>