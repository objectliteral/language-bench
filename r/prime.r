MAX <- 10000000;

n <- 1;
i <- 3;

while (i <= MAX) {
  
  isPrime <- TRUE;
  sqrti <- sqrt(i);
  j <- 3;
  
  while (j <= sqrti) {
    if (i %% j == 0) {
      isPrime <- FALSE;
      break;
    }
    j <- j + 2;
  }
  
  if (isPrime == TRUE) {
    n <- n + 1;
  }
  
  i <- i + 2;
  
}

print(paste("There are", n, "prime numbers between 0 and", MAX));