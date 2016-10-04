v <- c(1, 2) # Create the first two digits of the Fibonacci sequence

for (i in 3:34) { 
  v[i] <- v[i - 1] + v[i - 2] # add the prior two entries to create the current entry
}  

v <- v[v < 4000000] # redefine v as all entries of v less than 4000000
v <- v[v %% 2 == 0] # redefine v as all entries that are even 

sum(v) # sum all entries

