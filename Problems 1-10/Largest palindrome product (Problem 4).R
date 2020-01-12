#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit 
#numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.
###########################################################################################################
# start by creating function that reverses numbers and checks if polindrome(SO):
library(Rcpp)
cppFunction('int Reverse_CPP(int x) {
  int reverse = 0;
  while(x != 0) {
        int remainder = x%10;
        reverse = reverse*10 + remainder;
        x/= 10;
    }
  return reverse ; 
}')
# check for palidromity, if this is even a word
is.palindrome<- function(x){
  if(x == Reverse_CPP(x)){
    T
  }
  else{
    F
  }
}

#
l <- NULL
f <- 1
for(i in 1:999){
  for(k in 1:999){
    l[f] <- i * k
    f <- f + 1
  }
}
k <- lapply(l, is.palindrome)
max(l[unlist(k)])

