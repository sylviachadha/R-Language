# Mapping vs Setting

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

# Create object - base layer

r <- ggplot(data = stats, aes(x = CriticRating, y = AudienceRating))
r

# Add geometry layer to base object / layer
r + geom_point()

# Add colour
# 1st way to add colour is by Mapping
# So mapping is like assigning value
r + geom_point(aes(colour = Genre))

# 2nd way is Setting
# Setting is like hardcoding
r + geom_point(colour = "DarkGreen")
# ERROR
# This is going to be a error cz if u r using aes u assign some variable
# and not hardcode the value
r + geom_point(aes(colour = "DarkGreen"))

# Colour is an aesthetic on your chart. In 1st case u map colour to 
# a variable and in 2nd case u r setting a colour to a physical colour

# Showing mapping and setting on another aesthetic which is size

# 1. Mapping 
r + geom_point(aes(size = Budgetmillion))
# 2. Setting
r + geom_point(size = 10)
# ERROR
# Will take 10 as a category and not actually increase to size 10
# r + geom_point(aes(size = 10))






