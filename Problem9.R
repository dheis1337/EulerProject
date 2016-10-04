# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2. For example, 32 + 42 = 9 + 16 = 25 = 52. There exists exactly one 
# Pythagorean triplet for which a + b + c = 1000. Find the product abc.

# Create vectors for each variable
a <- 1:1000
b <- 1:1000

# Loop through the vectors and 'a' and 'b' and solve the equation. The output is
# the variables 'a' and 'b'
vars <- vector("integer", length = 0)
for (i in 1:length(a)) {
  for(j in 1:length(b)) {
    if((sqrt((a[i]^2 + b[j]^2)) + a[i] + b[j]) == 1000) {
      vars <- c(a[i], b[j])
    }
  }
}    


vars[3] <- sqrt(vars[1]^2 + vars[2]^2) # add the 'c' variable to the 'vars' vector

sum(vars) # sum the vars to ensure they equal 1000
prod(vars) # find the prod of the vars
