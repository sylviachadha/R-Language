# Aesthetics Layer
# how your data maps to what u want to see

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

# colnames is a function to rename columns
colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                    "Budgetmillion","year")

# If u execute below line only blank plot appears with x and y labels
# To see plot further we need to tell R/ggplot whether to display lines, dots,
# squares, triangles ? So we need to run geometry layer using geom_point and 
# adding + to continue
# Add geometry which is one aesthetic

ggplot(data = stats, aes(x = CriticRating, y = AudienceRating)) +
  geom_point() 

# Add colour which is another aesthetic 
# -- ggplot automatically adds labels as per genre colour
ggplot(data = stats, aes(x = CriticRating, y = AudienceRating, colour = Genre)) +
  geom_point() 

# Add size which is another aesthetic
ggplot(data = stats, aes(x = CriticRating, y = AudienceRating, 
                         colour = Genre, size = Genre)) +
  geom_point() 


# Add size better way
ggplot(data = stats, aes(x = CriticRating, y = AudienceRating, 
                         colour = Genre, size = Budgetmillion)) +
  geom_point()








