# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# Number of times to run the for loop
n <- 2000000
primes <- c(2) # Start with the first prime number


for (i in 3:n) { # Looping from 3 to n 
  m <- 2:sqrt(i) # Divisors to test if a number is prime
    if(!(any(i %% m == 0))) { # test if number is prime
      primes <- c(primes, i) # add a number to primes if it passes above test
    }
  }

sum(primes)