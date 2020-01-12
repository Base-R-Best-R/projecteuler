#By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
#find the sum of the even-valued terms.
#####################################################################################################################
i <- 4
x <- c(1, 2, 3, 5)
while(x[i - 1] < 4000000){
 x[i] <- x[i - 1] + x[i - 2] 
 i <- i + 1
}
sum(x[x %% 2 == 0])


