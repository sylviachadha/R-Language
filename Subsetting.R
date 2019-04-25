# Subsetting vectors and matrices
# in r even a single variable is stored as a vector
# everytime u subset a vector u get a vector

x <- c("a","b","c","d","e")
x
# extract 1 value
x[1]
x[5]
# extract 2 values
x[c(1,5)]

# matrices subset
# subset of matrice is also a matrice
Games 
# a subset martix of games
Games[1:3,6:10]

# Only columns 2008 and 2009
Games[,c("2008","2009")]

# only rows 1 and 10
Games[c(1,10),]

Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])

Games[1,5]


# VISUALIZING SUBSETS

Data <- MinutesPlayed[1:3,]
Data

# matplot and legend are different
matplot(t(Data),type = "b", pch = 15:18, col = c(1:4,6))

legend("bottomleft", inset=0.01, legend=Players[1:3],pch = 15:18, col = c(1:4,6))

Data

Data1 <- MinutesPlayed[1,]
Data1

matplot(t(Data1),type = "b", pch = 15:18, col = c(1:4,6))

legend("bottomleft", inset=0.01, legend=Players[1],pch = 15:18, col = c(1:4,6))
# If we do above way it will take it as a vector but actually
# it is a matrix, so to solve this we need to use the parameter
# drop=F

# 2 commas ,, in syntax and not 1
Data1 <- MinutesPlayed[1,,drop=FALSE]
Data1

matplot(t(Data1),type = "b", pch = 15:18, col = c(1:4,6))

legend("bottomleft", inset=0.01, legend=Players[1],pch = 15:18, col = c(1:4,6))

