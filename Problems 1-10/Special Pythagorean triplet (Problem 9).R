# Special Pythagorean triplet
# Problem 9
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
###########################################################################
library(rbenchmark)
library(Rcpp)
cppFunction("int product_abc(int x) {
  for(int a = 1; a <= x; a++){
   for(int b = 1; b <= x; b++){
    for(int c = 1; c <= x; c++){
     if((a + b + c == x) && (a*a + b*b == c*c)){
      int t = a * b * c;
      return t;
     }
    }
   }
  }
}")
benchmark(
k <- product_abc(1000), replications = 1)[1,3]




