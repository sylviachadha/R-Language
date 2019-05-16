# Data Frames
# Data frames and Matrices both r 2 Dimensional objects
# Both store tables however core difference b/w them 
# is that in matrices all data have to have same type however
# in data frames can have mix data type.

# Data Input
# read.csv -> reads a file in table format and creates a data
# frame from it, with cases corresponsding to lines and 
# variables to fields in the file.

# 2 ways to explore dataset

# Method 1 Select file manually
stats <- read.csv(file.choose())
stats

# Method 2
# Set WD and read Data
getwd()
setwd("/Users/sylvia/Desktop/R_Data")
rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")

#--------------------------------------------
# Exxploring data

stats
# number of rows
nrow(stats)

# number of columns
ncol(stats)

# top 6 rows by default
head(stats, n=10)

# last 6 rows by default
tail(stats, n=8)

# Structure
str(stats)

# Factor means not just some random text but data has been
# grouped and it assigns 1 number to each group
# Eg - high income, low income assigns 1, 2 etc this is R's way  
# of dealing with categorical variables

# runif - 
# r-> random , unif -> uniform distribution
# rnorm -
# r -> random , norm -> normal distribution

summary(stats)







