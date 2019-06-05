# Building a matrix

mydata <- c(1:20)
mydata

# matrix() function specify rows n columns
# by default bends by column byrow=F
m1 <- matrix(mydata, 4, 5)
m1

m1[2,3]

?matrix
m11 <- matrix(mydata, 4, 5,byrow=T)
m11

m11[2,5]

#rbind()

r1 <- c("i","am","happy")
r2 <- c("what","a","day")
r3 <- c(1,2,3)
m2 <- rbind(r1,r2,r3)
m2

#cbind()
c1 <- 1:5
c2 <- c(-1:-5)
m3 <- cbind(c1,c2)
m3


