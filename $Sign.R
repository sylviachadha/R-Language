setwd("/Users/sylvia/Desktop/R_Data")
stats <- read.csv("P2-Demographic-Data.csv")

# Using the $ sign

stats
head(stats)
# Would extract 3rd column for all rows
stats[3]
# Extract a cell
stats[3,3]
# Can also use named objects
stats[3,"Birth.rate"]

# In excel also u have names for columns but no names for rows

# $ sign is a another way to access your data in a dataframe
# $ sign does not work for matrices but it does work for dataframes
# Extract complete column
stats$Internet.users
# Extract value in 2nd row of this column
stats$Internet.users[2]
# or
stats[,4]
# or
stats[,"Internet.users"]

str(stats)
# To know what are levels in Income.Group
levels(stats$Income.Group)



