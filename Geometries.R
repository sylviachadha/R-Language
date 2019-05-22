# Plotting with layers
# Geometries

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

# colnames is a function to rename columns
colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

# Work with layers or plots as they are objects 

# p is starting layer or foundation of plot 
# This object p has data and aesthetics 
p <- ggplot(data = stats, aes(x = CriticRating, y = AudienceRating,
            colour = Genre, size = Budgetmillion))

# Now on top of this put geometry (line/point/square etc) so can see the 
# plot
p + geom_point()
p + geom_line()

# Multiple layers
p + geom_line() + geom_point()

# We are plotting with layers. Layer on top of layer on top of layer



