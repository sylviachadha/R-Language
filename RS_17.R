# Named vectors

Charlie <- 1:5
Charlie

names(Charlie)

# give names
names(Charlie) <- c("a","b","c","d","e")
Charlie

Charlie["d"]

# clear names
names(Charlie) <- NULL
names(Charlie)
Charlie

# naming matrix dimension
temp_vec <- rep(c("a","B","zZ"),3)
temp_vec
or
temp_vec <- rep(c("a","B","zZ"),times=3)
temp_vec

temp_vec1 <- rep(c("a","B","zZ"),each=3)
temp_vec1

#matrix
bravo <- matrix(temp_vec1,3,3)
bravo

rownames(bravo)

rownames(bravo) <- c("how","are","you")
bravo

colnames(bravo) 

colnames(bravo) <- c("x","y","z")
bravo

bravo[2,2]

bravo["are","y"]

bravo["are","y"] <- 0
bravo

rownames(bravo)

# to remove rownames
rownames(bravo) <- NULL
bravo




