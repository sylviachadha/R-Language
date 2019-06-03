# Methods to create vectors

x <- c(1,45,789,2)
y <- seq(20,100,10)
z <- rep("Heloo!!",3)

x
y
z

# Accessing elements of a vector

w <- c("a","b","c","d","e")
w
w[1]
w[2]
w[3]
w[100]
w[-1]
v <- w[-3]
v
w[1:3]
w[3:5]
w[3:6]
w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-5]
w[1:2]
