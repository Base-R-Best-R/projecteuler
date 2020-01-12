# What is the 10 001st prime number?
rm(list = ls())
#
is.prime <- function(n){
  n == 2L || all(n %% 2L:ceiling(sqrt(n)) != 0)
}
#
test <- T
s <- NULL
i <- 1
#
library(rbenchmark)
#
benchmark(
while(test){
  s[i] <- is.prime(i)
  i <- i + 1
  if(sum(s) == 10001){
    test <- F
  }
}, replications = 1)[1,3]
#
i - 1
