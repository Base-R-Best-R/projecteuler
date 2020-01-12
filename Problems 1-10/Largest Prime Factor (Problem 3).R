# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
##################################################################
# function that checks if prime, off SE
is.prime <- function(n){
n == 2L || all(n %% 2L:ceiling(sqrt(n)) != 0)
}
s <- NULL
# Solution to the problem:
# As in the is.prime function we only have to check for values up to the square root:
# If both a and b were greater than the square root of n, then a * b would be greater than n.
# So at least one of those factors must be less than or equal to the square root of n -->
for(i in seq.int(2, ceiling(sqrt(600851475143)))){
  if(600851475143 %% i == 0 & is.prime(i)){
    s <- i
  }
}

