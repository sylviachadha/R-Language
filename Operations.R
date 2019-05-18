# Operations for Dataframe

setwd("/Users/sylvia/Desktop/R_Data")
stats <- read.csv("P2-Demographic-Data.csv")

# Get first 10 rows and all columns
stats[1:10,]   # subsetting
stats[3:9,]

# To look at specific rows 4 and 100 row only
stats[c(4,100),]

# How [] work ?
#----------------------------------------------------------------
# Extracting row
stats[1,]
is.data.frame(stats[1,])
# So in matrix if you extract 1 row it converts it into vector while
# in dataframe if u extract 1 row it stays as a dataframe only hence
# no need to use drop = F 

# Extracting column
stats[,1]
is.data.frame(stats[,1])
# So its not a data frame if we want to preserve it as a data frame 
# we need to use drop = F that way dimension will not be dropped

stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])

head(stats)
# Basic operation
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users
stats$Birth.rate - stats$Internet.users
stats$Birth.rate / stats$Internet.users

# To create a new column which does not exist before
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)

# When a vector is insufficient length it gets recycled only if
# the given no is multiple of total eg here 5 is multiple of 195
# so its gets recycled

stats$xyz <- c(1:5)
head(stats, n=12)

# Remove a column
stats$MyCalc <- NULL
stats$xyz <- NULL


