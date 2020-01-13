#Find the sum of all the primes below two million.
library(rbenchmark)
is.prime <- function(n){
  n == 2L || all(n %% 2L:ceiling(sqrt(n)) != 0)
}
s <- 1:2000000
#
k <- sapply(s, is.prime)
sum(s[k])

