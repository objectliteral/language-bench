! gfortran -ffree-form -O3 primes.f -o primes

program prime_numbers
  implicit none
  integer i, j, n, cnt
  logical is_prime
  real time1, time2
  
  cnt = 0
  n = 10000000
  call cpu_time(time1)
  
  do i = 2, n
    is_prime = .true.
  
    do j = 2, int(sqrt(dble(i)))
      if (mod(i,j) == 0) then
        is_prime = .false.     
        exit
      end if
    end do
  
    if (is_prime) cnt = cnt + 1   
  
  end do
  
  call cpu_time(time2)
  print *, 'primes found: ', cnt
  write(*,*) 'cpu_time    : ', time2 - time1
end program