# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# Number of times to run the for loop
n <- 105000
primes <- c(2) # Start with the first prime number


for (i in 3:n) { # Looping from 3 to n 
  m <- 2:sqrt(i) # Divisors to test if a number is prime
  if(!(any(i %% m == 0))) { # test if number is prime
    primes <- c(primes, i) # add a number to primes if it passes above test
  }
}


primes[10001] # find 10001st prime


# All of this below is additonal stuff. I thought it might be interesting to see 
# how the proportion of prime numbers to the first n numbers. Thus, for the first 
# 10 numbers, 4 are prime (2, 3, 5, 7), so the proportion is 4/10
n <- 10000
primes <- c(2) # Start with the first prime number
PrimePropTable <- data.table(Total.Number = 1, Proportion = 0)

for (i in 2:n) { # Looping from 3 to n 
  m <- 2:sqrt(i) # Divisors to test if a number is prime
  if(!(any(i %% m == 0))) { # test if number is prime
    primes <- c(primes, i) # add a number to primes if it passes above test
  }
    nextline <- c(i, length)
    PrimePropTable <- rbind(PrimePropTable, list(i, length(primes)/i))  
}


ggplot(PrimePropTable[2:n], aes(x = Total.Number, y = Proportion)) + 
  geom_path(size = .5, color = "SteelBlue") + 
  ggtitle("Proportion of Primes")


