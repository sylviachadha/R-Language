#?

?rnorm()
# Its possible to change the default values
rnorm(n=5,sd=8)

# length.out means how many values u want in between 2 numbers
seq(from=10, to=20,length.out = 100)

x <- c("a","b","c")
rep(x,times=5)
rep(x,each=5)

seq(from=10,to=20,along.with = x)

rep(5:6,times=10)
rep(5:6,each=10)

# Get square root of all 3 numbers together
# Here u r passing vector to a function as well as
# getting vector as an output

A <- c(10,15,20)
B <- sqrt(A)
B

