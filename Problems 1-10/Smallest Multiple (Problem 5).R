# function that only divides if the result is integer 
# b vector to divide, a number that it is devided by:
is.integer.divide <- function(a, b){
k <- b/a
i <- which(as.integer(b/a) == b/a)
b[i] <- k[i]
b
}
# to find the smalles number devisable by all numbers 1:20 we can now deconstruct into factors using this functoin:
i <- 2
l <- 1:20
k <- as.numeric(rep(1,10000))
j <- 1
while(sum(l) > 20){
  if(sum(as.integer(l/i) == l/i) > 0){
  l <- is.integer.divide(i, l)
  k[j] <- i
  j <- j + 1
  }
  else{
    i <- i + 1
    j <- j + 1
  }
}
## multiply
prod(k[k!=1]) 



