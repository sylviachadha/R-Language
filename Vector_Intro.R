MyFirstVector <- c(3,45,56,112)
MyFirstVector
is.numeric(MyFirstVector)

# Below returns false because by default R stores Integers as Double
is.integer(MyFirstVector)

# Below will return true
is.double(MyFirstVector)

V2 <- c(2L, 5L, 89L,112L)
V2
is.integer(V2)

V3 <- c("A", "b23", "Hello", 7)
V3
is.character(V3)
is.numeric(V3)

# Other functions are Sequence and Replicate

seq(1,15)
1:15

# can also give step size in sequence
seq(1,15,2)
z <- seq(1,15,4)
z

# replicate number as well as character
rep(3,50)
d <- rep(3,50)
rep("a",5)

# replicate vector
x <- c(80,20)
y <- rep(x,10)
y

